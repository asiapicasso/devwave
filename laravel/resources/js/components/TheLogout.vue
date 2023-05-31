<template>
    <button id="cancel" @click="$emit('close')">X</button>
    <div>
        Voules-vous vraiment vous déconnecter ? Vous ne pourrez plus voter, participer au chat et proposer des musiques.
    </div>
    <button id="cancelBtn" @click="$emit('close')">Annuler</button>
    <bouton id="logoutBtn"><router-link to="/">Se déconnecter</router-link></bouton>
    </template>

<script>
    export default {
        name: 'TheLogout',
        data() {
            return {
                message: 'The Logout'
            }
        }
    }
</script>

<style scoped>
    #logoutBtn{
        background-color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px;
        margin-top: 20px;
        cursor: pointer;
    }
</style>