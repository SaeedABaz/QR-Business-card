import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import axios from "axios"; // Import Axios for making HTTP requests
import "../css/page1.css";

const Page = () => {
  const navigate = useNavigate();
  const [userLink, setUserLink] = useState("");
  const [qrImg, setQrImg] = useState("");
  const [formData, setFormData] = useState({
    fullName: "",
    phoneNumber: "",
    jobTitle: "",
    companyName: "",
    addressLocation: "",
    whatsappURL: "",
    instagramURL: "",
    linkedinURL: "",
    facebookURL: "",
    email: "",
    photo: null,
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevState) => ({
      ...prevState,
      [name]: value,
    }));
  };

  const handleFileChange = (e) => {
    setFormData((prevState) => ({
      ...prevState,
      photo: e.target.files[0],
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    // Prepare data to be sent via FormData as it includes a file
    const data = new FormData();
    for (const key in formData) {
      if (key === "photo" && formData[key]) {
        data.append(key, formData[key]); // Append the file object
      } else if (formData[key]) {
        data.append(key, formData[key]); // Append value as a string
      }
    }

    // Axios POST request
    axios
      .post("http://localhost:5555/create-user", data, {
        headers: {
          "Content-Type": "multipart/form-data", // Axios sets this automatically, but this is here for clarity
        },
      })
      .then((response) => {
        if (response.status === 201) {
          setUserLink(response.data.link); // Set user link from response
          setQrImg(response.data["QR Code"]); // Set QR image filename from response
          // Reset form state or navigate to a new page here if needed
        }
        // Optional: Reset form state here if you want to clear form after successful post
        setFormData({
          fullName: "",
          phoneNumber: "",
          jobTitle: "",
          companyName: "",
          addressLocation: "",
          whatsappURL: "",
          instagramURL: "",
          linkedinURL: "",
          facebookURL: "",
          email: "",
          photo: null,
          qrImge: "",
        });
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };

  const downloadQrImg = () => {
    const imageUrl = `http://localhost:5555/download-image/${qrImg}`;
    const link = document.createElement("a");
    link.href = imageUrl;
    link.download = qrImg; // This sets the filename for the downloaded image
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <div>
      {userLink === "" ? (
        <div
          className="page"
          style={{
            backgroundImage: "url('/spacee.jpg')",
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "top",
            height: "100vh",
            color: "white",
            padding: "35px",
            boxSizing: "border-box",
          }}
        >
          <form
            onSubmit={handleSubmit}
            className="form-container"
            style={{ maxWidth: "600px", margin: "auto" }}
            encType="multipart/form-data"
          >
            <h1>Please fill the information</h1>
            {Object.keys(formData).map((key) => (
              <div
                key={key}
                className="input-group"
                style={{ marginBottom: "10px" }}
              >
                <label>{key.split(/(?=[A-Z])/).join(" ")}</label>
                {key === "photo" ? (
                  <input
                    type="file"
                    name={key}
                    onChange={handleFileChange}
                    style={{ display: "block", width: "100%" }}
                  />
                ) : (
                  <input
                    type="text"
                    name={key}
                    value={formData[key]}
                    onChange={handleChange}
                    style={{ display: "block", width: "100%" }}
                  />
                )}
              </div>
            ))}
            <button
              type="submit"
              style={{
                padding: "10px 20px",
                backgroundColor: "green",
                color: "white",
                border: "none",
                cursor: "pointer",
              }}
            >
              Finish
            </button>
          </form>
        </div>
      ) : (
        <div className="QR-code-page-info">
          <Link to="/" className="home-btn">
            Home
          </Link>
          <div className="container">
            <h1>Thank you for using our website ❤️</h1>
            <img
              src={`http://localhost:5555/images/${qrImg}`}
              alt="QR Code"
              id="qrImage"
            />
            <button onClick={downloadQrImg}>Download QR code</button>
            <h3 className="user-url">your link {userLink}</h3>
          </div>
        </div>
      )}
    </div>
  );
};

export default Page;
