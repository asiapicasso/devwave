<template>
    voiture
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

<style>
</style>