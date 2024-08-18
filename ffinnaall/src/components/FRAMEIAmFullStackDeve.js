import { useCallback } from "react";
import { useNavigate } from "react-router-dom";

const FRAMEIAmFullStackDeve = () => {
  const navigate = useNavigate();

  const onFRAMESayGoodbyeClick = useCallback(() => {
    navigate("/pagetwo");
  }, [navigate]);

  return (
    <div className="w-[650px] flex flex-col items-end justify-start gap-[73px] max-w-full text-left text-58xl text-white font-montserrat mq450:gap-[18px] mq725:gap-[36px]">
      <div className="self-stretch flex flex-row items-start justify-end py-0 pr-[55px] pl-[54px] box-border max-w-full mq725:pl-[27px] mq725:pr-[27px] mq725:box-border">
        <div className="flex-1 flex flex-col items-start justify-start max-w-full">
          <div className="self-stretch flex flex-row items-start justify-center py-0 pr-5 pl-[21px] box-border max-w-full">
            <h1 className="m-0 w-[340px] relative text-inherit uppercase font-bold font-inherit inline-block shrink-0 max-w-full z-[2] mq450:text-27xl mq1000:text-43xl">
              Digital
            </h1>
          </div>
          <h1 className="m-0 self-stretch relative text-inherit leading-[75px] font-medium font-inherit z-[2] mq450:text-27xl mq450:leading-[45px] mq1000:text-43xl mq1000:leading-[60px]">
            business card
          </h1>
        </div>
      </div>
      <div className="self-stretch flex flex-row items-start justify-start pt-0 px-0 pb-2.5 box-border max-w-full text-center text-xl">
        <div className="flex-1 relative inline-block max-w-full z-[2] mq450:text-base">
          <p className="m-0">Say goodbye to traditional business card</p>
          <p className="m-0">
            Create and customize stylish digital business cards and share them
            with anyone, near or far.
          </p>
        </div>
      </div>
      <div className="self-stretch flex flex-row items-start justify-center pt-0 px-5 pb-[30px]">
        <button
          className="cursor-pointer [border:none] pt-[21px] px-[54px] pb-[18px] bg-linen w-[300px] shadow-[0px_0px_25px_#e4e9df] rounded-21xl overflow-hidden shrink-0 flex flex-row items-start justify-start box-border whitespace-nowrap z-[2] hover:bg-lightgray mq450:pl-5 mq450:pr-5 mq450:box-border"
          onClick={onFRAMESayGoodbyeClick}
        >
          <b className="h-[27px] flex-1 relative text-3xl inline-block font-montserrat text-black text-center [text-shadow:0px_0px_25px_rgba(168,_255,_53,_0.25)]">
            Let’s get started
          </b>
        </button>
      </div>
      <div className="w-[600px] flex flex-row items-start justify-center py-0 px-5 box-border max-w-full text-3xl font-roboto">
        <div className="w-[300px] shadow-[7px_7px_5px_rgba(0,_0,_0,_0.5)] bg-gray overflow-hidden shrink-0 flex flex-row items-start justify-start pt-2.5 px-5 pb-[11px] box-border gap-[52px] z-[2] mq450:gap-[26px]">
          <img
            className="h-[29px] w-[33px] relative min-h-[29px]"
            alt=""
            src="/vector1.svg"
          />
          <div className="flex flex-col items-start justify-start pt-0.5 px-0 pb-0">
            <div className="relative mq450:text-lg">Easy to share</div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default FRAMEIAmFullStackDeve;
