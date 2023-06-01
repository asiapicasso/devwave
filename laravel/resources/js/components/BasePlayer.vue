<template>
    <router-link to="/pagePlayer">
    <div id="player" class=" shadow-md bg-jaune-clair">
        <div id="info-emission">
            <p>Nom de l'émission</p>
            <p>Nom animateurs</p>
        </div>
        <img id="icon-player" src="../../assets/play.png"/>
    </div>
</router-link>
</template>
<script setup>
</script>
<style>
<<<<<<< HEAD
    div {
=======

    #player {
>>>>>>> basePlayer
        text-align: center;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        padding: 16px;
        text-align: left;
    }

    #icon-player{
        width: 50px;
        height: 50px;

    }

</style>