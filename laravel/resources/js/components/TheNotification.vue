<template>
    <button id="cancel" @click="$emit('close')"><img id="cancelcross" src="../../assets/cancel.png"/></button>
    <div>Live <input type="checkbox"/></div>
    <div>Sondage <input type="checkbox"/></div>
    <div>Appel <input type="checkbox"/></div>
    <button id="cancel" @click="$emit('close')">Annuler</button>
                <button type="submit">
                    Valider
                </button>
</template>

<script>
import Toggle from './TheToggle.vue';
    export default {
        name: 'TheNotification',
        components: {
            Toggle
        },
        data() {
            return {
                message: 'The Notification'
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
    #cancelcross{
        width: 20px;
        height: 20px;
    }
</style>