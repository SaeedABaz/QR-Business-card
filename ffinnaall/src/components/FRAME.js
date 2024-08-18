const FRAME = () => {
  return (
    <div className="w-full !m-[0] absolute top-[0px] left-[0px] flex flex-row items-start justify-start max-w-full h-full text-center text-xl text-white font-gochi-hand">
      <img
        className="h-[900px] flex-1 relative max-w-full overflow-hidden object-cover z-[1]"
        alt=""
        src="/pexels-photo-by-min-an@2x.png"
        data-scroll-to="pexelsPhotoByMinAn"
      />
      <div className="h-12 w-[171px] absolute !m-[0] right-[382.23px] bottom-[301px] inline-block [transform:_rotate(13deg)] [transform-origin:0_0] z-[3] mq450:text-base">
        Create your DBC from here
      </div>
      <div className="h-[151.9px] w-[303.9px] absolute !m-[0] right-[306.1px] bottom-[147.1px]">
        <img
          className="absolute top-[0px] left-[52px] w-[82.6px] h-[77.7px] overflow-hidden object-contain z-[2]"
          loading="lazy"
          alt=""
          src="/fluentarrowreply24filled@2x.png"
        />
        <img
          className="absolute top-[43px] left-[0px] w-[303.9px] h-[108.9px] overflow-hidden object-contain z-[3]"
          alt=""
          src="/f-r-a-m-e@2x.png"
        />
      </div>
      <img
        className="h-[93px] w-[304.1px] absolute !m-[0] bottom-[155px] left-[336px] overflow-hidden shrink-0 object-contain z-[3]"
        loading="lazy"
        alt=""
        src="/frame-5@2x.png"
      />
    </div>
  );
};

export default FRAME;
