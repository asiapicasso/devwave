<template>
    <div class="page m-5 h-72" id="deconnexionPopUp">
        <div id="popupDisconnected">
            <h2 class="text-center mt-3">T'es sûr.e de vouloir te déconnecter ? 😢</h2>
            <p class="text-center mt-4">Tu ne pourras plus voter, participer au chat ou proposer des musiques</p>
            <div id="twoChoiceBtn" class="">
                    <BaseButton id="cancelBtn" @click="cancelLogout()" class="m-auto mt-40 mb-8 mt-5 bg-white" text="Annuler" role="secondaire"/>
                <router-link to="/logout">
                    <BaseButton id="decoBtn" @click="logout()" class="mb-8 mt-5" text="Déconnexion"/>
            </router-link>
            </div>
        </div>
    </div>
</template>

<script>
import BaseButton from './BaseButton.vue';


    export default {
    name: 'TheLogout',
    components: {
    BaseButton
},
    data() {
        return {
            message: 'TheLogout',
        };
    },
    methods: {
    logout(){
        axios.post('/logout')
        .then(response => {
            this.$router.push('/logout');
        })
        .catch(error => {
            console.log(error);
        });
    },
    cancelLogout() {
        this.$emit('cancelLogout');
    }
}

};
</script>

<style scoped>
#decoBtn{
    padding-left: 0;
    padding-right: 0;
}
    #twoChoiceBtn {
        display: flex;
        justify-content: space-around;
        width: 100%;
        margin: auto;
        margin-top: 30px;
    }
    .page {
        display: flex;
        background-color: #f0f0f0;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        z-index: 1;
        border: solid 1px #3d3d3d;
        border-radius: 5%;
        padding-left: 5%;
        padding-right: 5%;
    }
    #formSignIn {
        margin-top: 10%;
        margin-bottom: 10%;
        z-index: 1;
    }
    #formSignUp {
        margin-top: 10%;
        margin-bottom: 10%;
        z-index: 1;
    }
    #profilNoConnected {
        z-index: 1;
        border: 1px solid #3d3d3d;
        background-color: #e4e4e4;
        border-radius: 20px;
        padding: 20px;
        height: 90%;
    }
    #profilNoConnected p {
        text-align: center;
        padding-bottom: 10px;
        padding-top: 10px;
    }
</style>