<template>
    <div class="flex flex-col items-center">
        <button id="settingsBtn" class="cursor-pointer mr-2 ml-auto color-gris+4 m-5" @click="goBack">
                <img src="../../assets/croix-fermer-fenetre.svg" class="w-6 h-6" />
        </button>
        <h2 class="text-gris+4">Tu conduis, concentre toi !</h2>
        <img @click="" class="h-38 w-38 m-5" src="../../assets/micro-inactif.svg" alt="icon micro inactif" />
        <small class="text-gris+4">Le mot de la semaine c'est</small>
        <h2 class="text-gris+4">Choucroute</h2>
        <img class="h-2 w-52 m-5" src="../../assets/volumeModeVoiture.svg"/>
        <img class="h-24 w-24 m-1" src="../../assets/PlayVoiture.svg"/>
    </div>
    </template>
    
    <script>
    export default {
        name: 'PageLiveVoiture',
        data() {
            return {
                title: 'My Header'
            };
        },
        methods: {
            launchPhoneApp() {
                window.open('tel:0840 003 003'); // Remplacez +123456789 par le numéro de téléphone souhaité
            },
            goBack() {
                this.$router.go(-1);
            }
        }
    };
    
    
    </script>
    
    <style>
    </style>