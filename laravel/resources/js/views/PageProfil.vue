<template>
    <div id="profil">
        <div id="pageTitle" class="flex items-center justify-center" :class="{'blur-background': displayChangeValue}">
            <h1 class="flex-1 text-center">Mon profil</h1>
            <button id="settingsBtn" class="cursor-pointer mr-2 ml-auto">
                <router-link to="/pageReglages">
                <img src="../../assets/reglages.svg" class="w-6 h-6" />
                </router-link>
            </button>
        </div>
        <div id="profilPicture" class="flex justify-center m-auto" :class="{'blur-background': displayChangeValue}">
  <div class="image-container relative">
    <img src="../../assets/profils-08.png" id="avatar" class="h-40 w-40" v-if="isConnected" />
    <img src="../../assets/profils-03.png" id="avatar" class="h-40 w-40" v-if="!isConnected" />
    <div class="absolute left-24 top-24 appareilPhoto">
        <button class="button-overlay" v-if="isConnected" @click="changeAvatar">
            <router-link to="/Galerie"><img src="../../assets/appareil-photo.svg" id="changeAvatar" class="h-8 w-8" /></router-link>
    </button>
    </div>
  </div>
</div>
<BaseChangeValue v-if="displayChangeValue" @cancelChangeValue="displayProfil" z-10 :message="message" />

        <div id="profilData" :class="{'blur-background': displayChangeValue}">
            <!--Les informations du profils s'affichent quand tu es connecté-->
            <div class="ligneDeForm flex items-center space-x-">
                <div class="flex flex-col" >
                <label>Pseudo</label>
                <label>TartePion</label>
                </div>
                <div class="ml-auto">
                <button @click="changeMessage('Pseudo')">
                    <img src="../../assets/crayon.svg" />
                </button>
                </div>
            </div>
            <div class="ligneDeForm flex items-center space-x-">
                <div class="flex flex-col" >
                <label>E-mail</label>
                <label>tart12@gmail.com</label>
                </div>
                <div class="ml-auto">
                    <button @click="changeMessage('E-mail')">
                    <img src="../../assets/crayon.svg" />
                </button>
                </div>
            </div>
            <div class="ligneDeForm flex items-center space-x-">
                <div class="flex flex-col" >
                <label for="pseudo">Nom</label>
                <label>Tartem</label>
                </div>
                <div class="ml-auto">
                    <button @click="changeMessage('Nom')">
                    <img src="../../assets/crayon.svg" />
                </button>
                </div>
            </div>
            <div class="ligneDeForm flex items-center space-x-">
                <div class="flex flex-col" >
                <label for="pseudo">Prénom</label>
                <label>TartePion</label>
                </div>
                <div class="ml-auto">
                    <button @click="changeMessage('Prénom')">
                    <img src="../../assets/crayon.svg" />
                </button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import BaseChangeValue from '../components/BaseChangeValue.vue';

export default {
    name: "PageProfil",
    components: {
    BaseChangeValue
},
    data() {
        return {
            isConnected: true,
            displayChangeValue: false,
            message: ''
        };
    },
    methods: {
        changeAvatar() {
            console.log("changeAvatar");
        },
        displayProfil(){
            this.displayChangeValue=false;
        },       
        changeMessage(newMessage) {
            this.displayChangeValue = true;
            this.message = newMessage;
}
    }
};
</script>

<style>
.appareilPhoto{
    top: 110px;
}
#profilData img{
    width: 20px;
    height: 20px;
    flex-grow: 1;
}
#avatar{
    border-radius: 50%;
    position: center;
}

#pageTitle {
    text-align: center;
    margin-bottom: 10%;
    font-size: 30px;
    margin-bottom: 20px;
    color: #055488;
}
#profilData {
    margin-top: 5%;
    margin-left: 10%;
    margin-right: 10%;
    background-color: #fff;
    box-sizing: border-box;
}
#profilData label {
    display: inline-block;
}
#profilData input {
    margin-left: 1%;
    margin-right: 1%;
    border: none;
    border-bottom: 1px solid #000;
    background-color: #fff;
    width: 50%;
    height: 30px;
    border: 1px solid #000;
    box-sizing: border-box;

}
.ligneDeForm{
    display: flex;
    align-items: center;
    margin-bottom: 30px;
}
.ligneDeForm label {
  margin-right: 10px;
  width: 20%;
}
.ligneDeForm input[type="text"],
.ligneDeForm input[type="email"] {
  flex-grow: 1;
}
.ligneDeForm button {
  background: none;
  border: none;
  cursor: pointer;
}
.blur-background {
    filter: blur(5px);
    pointer-events: none;
    user-select: none;
  }

</style>
