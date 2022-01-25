const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
	content: [
		"./app/**/*.erb",
		"./app/**/*.haml",
		"./app/helpers/**/*.rb",
		"./app/javascript/**/*.js",
		"./app/views/**/*",
	],
	theme: {
		extend: {
			fontFamily: {
				sans: ["Inter var", ...defaultTheme.fontFamily.sans],
				futura: ["futura"],
			},
			colors: {
				blue_bg: "#00506e",
				title: "#048ba8",
				description: "#004F6D",
				section_bg: "#fcfcf4",
			},
		},
	},
	plugins: [
		require("@tailwindcss/forms"),
		require("@tailwindcss/aspect-ratio"),
		require("@tailwindcss/typography"),
	],
};
