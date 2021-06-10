// See the Tailwind default theme values here:
// https://github.com/tailwindcss/tailwindcss/blob/master/stubs/defaultConfig.stub.js
const colors = require("tailwindcss/colors")
const defaultTheme = require("tailwindcss/defaultTheme")

module.exports = {
  // Opt-in to TailwindCSS future changes
  future: {},

  plugins: [
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/forms"),
    require("@tailwindcss/line-clamp"),
    require("@tailwindcss/typography")
  ],

  // Purge unused TailwindCSS styles
  purge: {
    enabled: ["production", "staging"].includes(process.env.NODE_ENV),
    content: [
      "./**/*.html.erb",
      "./app/components/**/*.rb",
      "./app/helpers/**/*.rb",
      "./app/javascript/**/*.js"
    ]
  },

  // All the default values will be compiled unless they are overridden below
  theme: {
    // Extend (add to) the default theme in the `extend` key
    extend: {},
    // override the default theme using the key directly
    fontFamily: {
      sans: ["Inter", ...defaultTheme.fontFamily.sans]
    }
  },
  variants: {
    borderWidth: ["responsive", "last", "hover", "focus"],
    extend: {
      display: ["last"]
    }
  }
}
