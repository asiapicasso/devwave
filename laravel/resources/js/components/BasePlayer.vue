<template>
    <router-link to="/pagePlayer">
    <div id="player">
        <div id="info-emission">
            <p>Nom de l'émission</p>
            <p>Nom animateurs</p>
        </div>
        <img src="../../assets/play.png"/>
    </div>
</router-link>
</template>
<script setup>
</script>
<style>
    div {
        padding: 16px;
        text-align: center;
    }
    #player {
        background-color: #99efe6;
        color: #070707;
        text-align: center;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
    }

    img{
        width: 50px;
        height: 50px;

    }

</style>