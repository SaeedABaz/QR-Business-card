/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    extend: {
      colors: {
        black: "#000",
        white: "#fff",
        gray: "#181818",
        linen: "#e4e9df",
        lightgray: "#cccfc4",
        gainsboro: "rgba(217, 217, 217, 0.5)",
      },
      spacing: {},
      fontFamily: {
        "roboto-mono": "'Roboto Mono'",
        roboto: "Roboto",
        montserrat: "Montserrat",
        "gochi-hand": "'Gochi Hand'",
      },
      borderRadius: {
        "21xl": "40px",
      },
    },
    fontSize: {
      "21xl": "40px",
      "5xl": "24px",
      "13xl": "32px",
      "3xl": "22px",
      lg: "18px",
      xl: "20px",
      base: "16px",
      "58xl": "77px",
      "27xl": "46px",
      "43xl": "62px",
      "7xl": "26px",
      inherit: "inherit",
    },
    screens: {
      mq1050: {
        raw: "screen and (max-width: 1050px)",
      },
      mq1000: {
        raw: "screen and (max-width: 1000px)",
      },
      mq800: {
        raw: "screen and (max-width: 800px)",
      },
      mq725: {
        raw: "screen and (max-width: 725px)",
      },
      mq450: {
        raw: "screen and (max-width: 450px)",
      },
    },
  },
  corePlugins: {
    preflight: false,
  },
};
