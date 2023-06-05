/** @type {import('tailwindcss').Config} */
export default {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            colors: {
                rose: "#D744EE",
                "middle-rose": "#C8B5F7",
                vertCouleur: "#5FF7A6",
                "jaune-clair": "#FFFFE5",
                "jaune-fonce": "#FFFFAE",
                "bleu-clair": "#C0F6FC",
                grayPt: " #D4D2E0",
                "light-turquoise": "#C0F6FC",
                violet: "#C4BAF7",
                "rose-clair": "#F0B9F9",
            },
        },
    },
};
