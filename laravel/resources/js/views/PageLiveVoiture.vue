<template>
    <div class="flex-col">
        <p class="place-content-center text-gris+4">Tu conduis, concentre toi !</p>
        <img @click="" class="h-20 w-20 mt-1.5 mr-4" src="../../assets/micro-inactif.svg" alt="icon micro inactif" />
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
        }
    }
};


</script>

<style></style>