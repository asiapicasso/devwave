<template>
    <div class="page m-5 h-72" >
        <div id="profilNoConnected" v-if="!isConnected&&!showSignIn&&!showSignUp">
            <h2>Bienvenue sur Couleur3 Interact 🥳</h2>
            <p>Connectez-vous pour voter, participez à la discussion live et proposer votre musique</p>
            <div id="twoChoiceBtn">
                <router-link to="/pageSignIn">
                    <button id="btnSignIn" @click="showSignInForm">
                        Se connecter
                    </button>
                </router-link>
                <router-link to="/pageSignUp">
                    <button id="btnSignUp" @click="showSignUpForm">
                        S'inscrire
                </button>
            </router-link>
            </div>
        </div>
    </div>
</template>

<script>


    export default {
    name: 'BaseFormSign',
    props: ['showProfile', 'showFormSign'],
    data() {
        return {
            message: 'BaseFormSign',
            isConnected: false,
            showSignIn: false,
            showSignUp: false
        };
    },
    methods: {
    showSignInForm() {
        this.showSignIn = true;
        this.showSignUp = false;
    },
    showSignUpForm() {
        this.showSignIn = false;
        this.showSignUp = true;
    },
    hideForms() {
        this.showSignIn = false;
        this.showSignUp = false;
    }
}

};
</script>

<style scoped>
    #btnSignIn {
        background-color: #fff;
        border: 1px solid #be32d1;
        border-radius: 5px;
        padding: 10px;
        margin-top: 20px;
        cursor: pointer;
    }
    #btnSignUp {
        background-color: #be32d1;
        border-radius: 5px;
        padding: 10px;
        margin-top: 20px;
        cursor: pointer;
    }
    #twoChoiceBtn {
        display: flex;
        justify-content: space-around;
        /*réduire un peu l'écart*/ 
        width: 90%;
        margin: auto;
    }
    .page {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        z-index: 1;
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