from flask import Flask, send_from_directory, request, jsonify
import pymysql
from flask_cors import CORS  # Import CORS
import uuid
import qrcode
import os
from werkzeug.utils import secure_filename

app = Flask(__name__)
CORS(app)  # Enable CORS for the entire app

# Connect to the local MySQL database
connection = pymysql.connect(
    host='localhost',
    user='root',  # Replace with your MySQL username
    password='',  # Replace with your MySQL password
    database='nfc',  # Replace with your database name
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor
)


IMAGE_FOLDER = r'C:\Users\saooody\Desktop\imgfile'

@app.route('/images/<filename>')
def get_image(filename):
    return send_from_directory(IMAGE_FOLDER, filename)

@app.route('/download-image/<filename>')
def download_image(filename):
    response = send_from_directory(IMAGE_FOLDER, filename)
    response.headers['Content-Disposition'] = 'attachment; filename={}'.format(filename)
    return response

# Route to add an item
@app.route('/create-user', methods=['POST'])
def create_user():
    try:
        # Check if required data is present
        required_fields = ['fullName', 'phoneNumber', 'jobTitle', 'companyName', 'addressLocation', 'whatsappURL', 'instagramURL', 'linkedinURL', 'facebookURL', 'email']
        if not all(field in request.form for field in required_fields):
            return jsonify({'error': 'All user data fields are required'}), 400

        # Collect data from form
        name = request.form['fullName']
        phone = request.form['phoneNumber']
        job = request.form['jobTitle']
        company = request.form['companyName']
        address = request.form['addressLocation']
        whatsapp = request.form['whatsappURL']
        instagram = request.form['instagramURL']
        linkedin = request.form['linkedinURL']
        facebook = request.form['facebookURL']
        email = request.form['email']
        #photo = "photo"  # Placeholder for photo path if applicable
        url = str(uuid.uuid4())  # Unique identifier for the user

        # Generate a unique QR code file name
        qr_file_name = f"user_{url}.png"
        qr_file_path = os.path.join(IMAGE_FOLDER, qr_file_name)

        # Generate and save QR code
        link = f'http://localhost:3000/show-user/{url}'
        qr = qrcode.QRCode(
            version=1,
            error_correction=qrcode.constants.ERROR_CORRECT_H,
            box_size=10,
            border=4,
        )
        qr.add_data(link)
        qr.make(fit=True)
        img = qr.make_image(fill='black', back_color='white')
        img.save(qr_file_path)

        if 'photo' not in request.files:
            return jsonify({'error': 'Photo is required'}), 400
        photo_file = request.files['photo']
        if photo_file.filename == '':
            return jsonify({'error': 'No photo selected'}), 400

        # Secure filename
        photo_filename = secure_filename(photo_file.filename)

        # Check if filename has an extension
        if '.' not in photo_filename:
            return jsonify({'error': 'Invalid photo filename'}), 400

        # Split filename and extension
        filename_parts = photo_filename.rsplit('.', 1)
        if len(filename_parts) != 2:
            return jsonify({'error': 'Invalid photo filename'}), 400

        # Get extension
        extension = filename_parts[1].lower()

        # Generate personal image filename
        personal_img_file_name = f"pers_{url}.{extension}"
        print(personal_img_file_name)
        personal_img_file_path = os.path.join(IMAGE_FOLDER, personal_img_file_name)
        print("3 in")
        # Save photo file
        photo_file.save(personal_img_file_path)

        photo = personal_img_file_name
        # Insert user data into the database
        with connection.cursor() as cursor:
            sql = """
            INSERT INTO user (name, phone, job, company, address, whatsapp, instagram, linkedin, facebook, email, photo, url, qrimg)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """
            values = (name, phone, job, company, address, whatsapp, instagram, linkedin, facebook, email, photo, url, qr_file_name)
            cursor.execute(sql, values)
            connection.commit()

        # Return success response
        return jsonify({'message': 'User added successfully', 'link': link, 'QR Code': qr_file_name}), 201

    except Exception as e:
        # Handle errors and exceptions
        return jsonify({'error': str(e)}), 500


@app.route("/get-user", methods=['GET'])
def get_user():
    try:
        # Retrieve UUID from query parameter
        uuid = request.args.get('uuid')
        if not uuid:
            return jsonify({'error': 'UUID is required'}), 400

        with connection.cursor() as cursor:
            print(uuid)
            # SQL to fetch user by UUID
            sql = "SELECT * FROM user WHERE url = %s"
            cursor.execute(sql, (uuid,))
            user = cursor.fetchone()

            if user:
                return jsonify(user)
            else:
                return jsonify({'message': 'User not found'}), 404
    except Exception as e:
        return jsonify({'error': str(e)}), 500


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5555)  # Make sure the port is correctly set