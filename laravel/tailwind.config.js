/** @type {import('tailwindcss').Config} */
const plugin = require('tailwindcss/plugin')
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
                'jaune-1': '#FFFFE5',
                'Jaune-principale': '#FFFFAE',
                'jaune+1': '#FFFF33',
                'jaune+2': '#E5E500',
                'jaune+3': '#999900',
                'jaune+4': '#4D4D00',
                'bleu-1': '#E7FCFE',
                'Bleu-principale': '#C0F6FC',
                'bleu+1': '#3CE3F6',
                'bleu+2': '#0AC6DB',
                'bleu+3': '#078492',
                'bleu+4': '#034249',
                'rose-1': '#F0B9F9',
                'Rose-principale': '#D744EE',
                'rose+1': '#B913D2',
                'rose+2': '#7B0D8C',
                'rose+3': '#3E0646',
                'gris-1': '#F1F0F5',
                'gris': '#D4D2E0',
                'gris+1': '#8C86AC',
                'gris+2': '#635C87',
                'gris+3': '#433E5B',
                'gris+4': '#211F2D',
                'bleuFonce-1': '#EBE8FC',
                'BleuFonce': '#C4BAF7',
                'bleuFonce+1': '#6147EB',
                'bleuFonce+2': '#3316D0',
                'bleuFonce+3': '#220F8A',
                'bleuFonce+4': '#110745',
                'rouge': '#D30000',
            },
            boxShadow: {
                '2xl': '10px 20px 10px 20px rgba(0, 0, 0, 0.3)',
              }
        },
    },
    plugins: [
        plugin(function({ addBase, theme }) {
          addBase({
            'h1': { fontSize: theme('fontSize.4xl'), fontFamily: "'Frank Ruhl Libre', serif" },
            'h2': { fontSize: theme('fontSize.xl'), fontFamily: "'Quicksand', sans-serif"},
            'p': { fontSize: theme('fontSize.base'), fontFamily: "'Open Sans', sans-serif"},
            'small': { fontSize: theme('fontSize.sm'), fontFamily: "'Open Sans', sans-serif"},
            'span': { fontSize: theme('fontSize.xs'), fontFamily: "'Open Sans', sans-serif"},
            'a': { fontSize: theme('fontSize.sm'), fontFamily: "'Open Sans', sans-serif", color: theme('colors.bleu+4'), 'text-decoration-line': 'underline'},
          })
        })
      ]
};
