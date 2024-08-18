import { useCallback } from "react";
import FRAME from "../components/FRAME";
import FRAMEIAmFullStackDeve from "../components/FRAMEIAmFullStackDeve";
import insticon from "../img/insticon.jpeg";
import faceicone from "../img/faceicone.jpeg";
import linkicon from "../img/linkicon.png";
import twiicon from "../img/twiicon.png";
import gmailicon from "../img/gmailicon.png";

const Page = () => {
  const onMainTextClick = useCallback(() => {
    const anchor = document.querySelector(
      "[data-scroll-to='pexelsPhotoByMinAn']"
    );
    if (anchor) {
      anchor.scrollIntoView({ block: "start", behavior: "smooth" });
    }
  }, []);

  const onAboutTextClick = useCallback(() => {
    const anchor = document.querySelector("[data-scroll-to='main']");
    if (anchor) {
      anchor.scrollIntoView({ block: "start", behavior: "smooth" });
    }
  }, []);

  const onContactUsTextClick = useCallback(() => {
    const anchor = document.querySelector("[data-scroll-to='contact']");
    if (anchor) {
      anchor.scrollIntoView({ block: "start", behavior: "smooth" });
    }
  }, []);

  return (
    <div className="w-full relative flex flex-col items-start justify-start leading-[normal] tracking-[normal]">
      <section className="self-stretch bg-black flex flex-col items-end justify-start pt-[37px] pb-[113px] pr-[403px] pl-20 box-border relative gap-[87px] max-w-full mq450:gap-[22px] mq450:pt-5 mq450:pr-5 mq450:pb-[47px] mq450:box-border mq1000:pt-6 mq1000:pb-[73px] mq1000:box-border mq725:gap-[43px] mq725:pl-10 mq725:pr-[201px] mq725:box-border">
        <div className="w-[1440px] h-[900px] relative bg-black hidden max-w-full z-[0]" />
        <FRAME />
        <header className="self-stretch flex flex-row items-start justify-start top-[0] z-[99] sticky max-w-full text-left text-7xl text-white font-montserrat">
          <div className="w-[859px] flex flex-row items-start justify-between gap-[20px] max-w-full mq725:w-[420px]">
            <b className="w-[207px] relative inline-block shrink-0 whitespace-nowrap z-[2]">
              SaeedAhmed
            </b>
            <nav className="m-0 w-[439px] flex flex-col items-start justify-start pt-1 px-0 pb-0 box-border max-w-full mq725:hidden">
              <nav className="m-0 self-stretch flex flex-row items-start justify-between gap-[20px] text-left text-3xl text-white font-montserrat">
                <div
                  className="h-[43px] w-20 relative font-medium inline-block shrink-0 cursor-pointer z-[2]"
                  onClick={onMainTextClick}
                >
                  Main
                </div>
                <div
                  className="h-[43px] relative font-medium inline-block min-w-[80px] cursor-pointer z-[2]"
                  onClick={onAboutTextClick}
                >
                  About
                </div>
                <div
                  className="h-[43px] relative font-medium inline-block min-w-[125px] whitespace-nowrap cursor-pointer z-[2]"
                  onClick={onContactUsTextClick}
                >
                  Contact us
                </div>
              </nav>
            </nav>
          </div>
        </header>
        <FRAMEIAmFullStackDeve />
      </section>
      <section
        className="self-stretch bg-white overflow-hidden flex flex-row items-start justify-start pt-[150px] px-20 pb-[205px] box-border relative max-w-full text-left text-[72px] text-black font-roboto mq450:pt-[63px] mq450:pb-[86px] mq450:box-border mq1000:pt-[97px] mq1000:pb-[133px] mq1000:box-border mq1050:pl-10 mq1050:pr-10 mq1050:box-border"
        data-scroll-to="main"
      >
        <img
          className="h-full w-[833px] absolute !m-[0] top-[0px] right-[0px] bottom-[0px] max-h-full object-cover"
          loading="lazy"
          alt=""
          src="/qrrrrr-code-1@2x.png"
        />
        <h1 className="m-0 relative text-inherit font-bold font-inherit mq450:text-[43px] mq1000:text-[58px]">
          Who am i?
        </h1>
        <div className="w-[904px] flex flex-col items-start justify-start pt-[105px] px-0 pb-0 box-border max-w-full ml-[-336px] text-21xl">
          <h2 className="m-0 self-stretch relative text-inherit font-normal font-inherit z-[1] mq450:text-5xl mq1000:text-13xl">
            <p className="m-0">
              I am a full stack developer who made digital business cards for
              companies, organizations, etc.
            </p>
            <p className="m-0">{`I believe in the power of digital connections. My mission is to revolutionize the way professionals network and exchange information by providing sleek, modern, and efficient digital business card solutions. `}</p>
            <p className="m-0">
              Join us in shaping the future of professional networking today.
            </p>
          </h2>
        </div>
      </section>

      <footer
        className="self-stretch bg-black overflow-hidden flex flex-col items-center justify-start pt-[66px] px-5 pb-[65px] box-border gap-[83px] max-w-full text-left text-[64px] text-white font-roboto-mono mq450:pt-[43px] mq450:pb-[42px] mq450:box-border mq1050:gap-[41px] mq725:gap-[21px]"
        data-scroll-to="contact"
      >
        <div className="w-[1020px] flex flex-row items-start justify-center py-0 pr-px pl-0 box-border max-w-full">
          <h1 className="m-0 relative text-inherit font-bold font-inherit mq450:text-[38px] mq1000:text-[51px]">
            Contact me
          </h1>
        </div>
        <div className="flex flex-row items-center justify-center gap-4">
          <a
            href="https://www.facebook.com/saeed.ahmed.718?mibextid=ZbWKwL"
            style={{ marginRight: "35px" }}
          >
            <img
              src={faceicone}
              alt="Facebook"
              style={{ width: "80px", height: "80px" }}
            />
          </a>
          <a
            href="https://www.linkedin.com/in/saeed-ahmed-654627297?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"
            style={{ marginRight: "35px" }}
          >
            <img
              src={linkicon}
              alt="LinkedIn"
              style={{ width: "80px", height: "80px" }}
            />
          </a>
          <a
            href="mailto:190704813@st.maltepe.edu.tr"
            style={{ marginRight: "35px" }}
          >
            <img
              src={gmailicon}
              alt="Gmail"
              style={{ width: "80px", height: "80px" }}
            />
          </a>
          <a
            href="https://www.instagram.com/_lsal_?igsh=N2x5dzN6bWZ4d20z"
            style={{ marginRight: "35px" }}
          >
            <img
              src={insticon}
              alt="Instagram"
              style={{ width: "80px", height: "80px" }}
            />
          </a>
          <a
            href="https://x.com/ISaeedl?t=lTDovBFvjrnMoDlIjVwxyw&s=09"
            style={{ marginRight: "35px" }}
          >
            <img
              src={twiicon}
              alt="Twitter"
              style={{ width: "80px", height: "80px" }}
            />
          </a>
        </div>
      </footer>
    </div>
  );
};

export default Page;
