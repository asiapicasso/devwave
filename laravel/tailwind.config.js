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
                'roseCouleur': '#DF0091',
                'vertCouleur': '#5FF7A6',
            },
        },
        plugins: [],
    }
}