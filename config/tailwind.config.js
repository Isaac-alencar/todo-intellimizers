const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      colors: {
        "floor-0": "#32333d",
        "floor-1": "#373740",
        "floor-2": "#43434e",
        "text-highlight": 'white',
        "text-primary": "#e0e0e2",
        "text-secondary": "#ababb6",
        "color-danger": "#ca3533",
        "color-success": "#2cad7e",
      },
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
  ],
};
