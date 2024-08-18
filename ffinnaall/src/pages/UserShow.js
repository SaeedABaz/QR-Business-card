import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import "../css/userShow.css";
import instgramImg from "../img/instagram.svg";
import facebookImg from "../img/facebook-f.svg";
import linkedinImg from "../img/linkedin.svg";
import whatsappImg from "../img/whatsapp.svg";
import locationImg from "../img/location-dot-solid.svg";
import backgroundImg from "../img/maltepe.png"; // Import your image here

function UserShow() {
  const { uuid } = useParams();
  const [user, setUser] = useState(null);
  const [personalImg, setPersonalImg] = useState();

  useEffect(() => {
    const localIpAddress = window.location.hostname; // Adjusted for dynamic IP

    fetch(`http://${localIpAddress}:5555/get-user?uuid=${uuid}`)
      .then((response) => response.json())
      .then((data) => {
        if (data.error) {
          console.error("Error:", data.error);
        } else {
          setUser(data);
          setPersonalImg(data.photo);
        }
      })
      .catch((error) => console.error("Error fetching user data:", error));
  }, [uuid]);

  const handleShare = () => {
    const shareData = {
      title: "Digital Business Card",
      text: `Check out ${user.name}'s digital business card!`,
      url: window.location.href,
    };

    if (navigator.share) {
      navigator
        .share(shareData)
        .then(() => {
          console.log("Thanks for sharing!");
        })
        .catch(console.error);
    } else {
      // Fallback for browsers that don't support the Web Share API
      const shareUrl = `mailto:?subject=${encodeURIComponent(
        shareData.title
      )}&body=${encodeURIComponent(shareData.text)}%20${encodeURIComponent(
        shareData.url
      )}`;
      window.location.href = shareUrl;
    }
  };

  if (!user) {
    return <div>Loading...</div>;
  }

  return (
    <div id="show-card-page">
      <div id="card-show-container">
        <div
          id="background-img-container"
          style={{ backgroundImage: `url(${backgroundImg})` }}
        ></div>
        <div id="personal-img-container">
          <img
            src={`http://${window.location.hostname}:5555/images/${personalImg}`}
            alt="QR Code"
            id="qrImage"
          />
        </div>
        <div id="socail-media-container">
          <a href={user.whatsapp}>
            <img src={whatsappImg} alt="WhatsApp" />
          </a>
          <a href={user.facebook}>
            <img src={facebookImg} alt="Facebook" />
          </a>
          <a href={user.linkedin}>
            <img src={linkedinImg} alt="LinkedIn" />
          </a>
          <a href={user.instagram}>
            <img src={instgramImg} alt="Instagram" />
          </a>
        </div>
        <div id="first-section-info">
          <h1>{user.name}</h1>
          <h2>{user.company}</h2>
          <p></p>
          <h1 style={{ marginBottom: "15px" }}>{user.job}</h1>
          <div className="flex-container">
            <h3>
              <span className="bold-latter">E</span> {user.email}
            </h3>
          </div>
          <div className="flex-container">
            <h3>
              <span className="bold-latter">M</span> {user.phone}
            </h3>
          </div>
          <div className="flex-container">
            <img id="location-img" src={locationImg} alt="Location" />
            <h3>{user.address}</h3>
          </div>
        </div>
        <div id="btn-section">
          <button onClick={handleShare}>SHARE</button>
        </div>
      </div>
    </div>
  );
}

export default UserShow;
