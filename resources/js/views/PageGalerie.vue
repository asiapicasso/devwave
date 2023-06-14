<template>
    <div id="pageReglage" :class="{'blur-background': showLogoutPopup || showDeletePopup}">
      <router-link to="/pageProfil" v-if="inSettingPage"><img src="../../assets/back.png" class="absolute left-0 w-10 h-10 ml-2"/></router-link>
      <button v-if="!inSettingPage" @click="displaySettingPage()"><img src="../../assets/back.png" class="absolute left-0 w-10 h-10 ml-2"/></button>
        <div id="pageTitle" class="flex items-center justify-center">
          <h1>Galerie</h1>
        </div>
        <div class="">
            <p class="text-center">Choisis une photo de profil 🐱🚀</p>
        </div>
        <div id="galleryImage" class="flex flex-wrap justify-center mt-5">
            <div class="flex items-center">
              <button @click="handleButtonClick" :class="{ 'button-red-border': isButtonClicked }"><img src="../../assets/profils-01.png" class="h-20 w-20" /></button>
              <button><img src="../../assets/profils-02.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-03.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-04.png" class="h-20 w-20" /></button>
            </div>
          
            <div class="flex items-center">
              <button><img src="../../assets/profils-05.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-06.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-07.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-08.png" class="h-20 w-20" /></button>
            </div>
            <div class="flex items-center">
              <button><img src="../../assets/profils-09.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-10.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-11.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-12.png" class="h-20 w-20" /></button>
            </div>
            <div class="flex items-center">
              <button><img src="../../assets/profils-13.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-14.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-15.png" class="h-20 w-20" /></button>
                <button><img src="../../assets/profils-16.png" class="h-20 w-20" /></button>
            </div>
        </div>
    </div>
    <div class="flex justify-center mb-5">
      <router-link to="/pageProfil" v-if="inSettingPage" class="no-underline"><BaseButton @click="displaySettingPage" text="Valider" class="mt-7"/></router-link>
        </div>
    <div>
      <TheLogout v-if="showLogoutPopup" @close="showLogoutPopup = false" @cancelLogout="displaySettingPage" />
      <TheDelete v-if="showDeletePopup" @close="showDeletePopup = false" @cancelDelete="displaySettingPage" />
    </div>
  </template>
  
  <script>
  import Logout from '../components/TheLogout.vue';
  import NouveauMdp from '../components/TheNouveauMdp.vue';
  import Notif from '../components/TheNotification.vue';
  import BaseButton from '../components/BaseButton.vue';
  import TheLogout from '../components/TheLogout.vue';
  import TheDelete from '../components/TheDelete.vue';
  export default {
    components: {
      Logout,
      NouveauMdp,
      Notif,
      BaseButton,
      TheLogout,
      TheDelete
  },
    data() {
      return {
        inSettingPage: true,
        showLogoutPopup: false,
        showMdpPopup: false,
        showNotifPopup: false,
        showConfid: false,
        showDeletePopup: false,
        isButtonClicked: false,
      };
    },
    methods:{
      selectedImage(){
        button.border = "2px solid #FFC107";
        console.log("selected")
      },handleButtonClick() {
      this.isButtonClicked = !this.isButtonClicked;
      this.votreMethode();
    },
    votreMethode() {
    },
      displayLogoutPopup(){
        this.showLogoutPopup = true;
        this.showMdpPopup = false;
        this.showNotifPopup = false;
        this.inSettingPage = false;
        this.showConfid = false;
      },
      displayMdpPopup(){
        this.showLogoutPopup = false;
        this.showMdpPopup = true;
        this.showNotifPopup = false;
        this.inSettingPage = false;
        this.showConfid = false;
      },
      displayNotifPopup(){
        this.showLogoutPopup = false;
        this.showMdpPopup = false;
        this.showNotifPopup = true;
        this.inSettingPage = false;
        this.showConfid = false;
      },
      displayConfidPopup(){
        this.showLogoutPopup = false;
        this.showMdpPopup = false;
        this.showNotifPopup = false;
        this.inSettingPage = false;
        this.showConfid = true;
      },
      displaySettingPage(){
        this.showLogoutPopup = false;
        this.showMdpPopup = false;
        this.showNotifPopup = false;
        this.inSettingPage = true;
        this.showConfid = false;
        this.showDeletePopup = false;
      },
      displayDeletePopup(){
        this.showDeletePopup = true;
        this.showMdpPopup = false;
        this.showNotifPopup = false;
        this.inSettingPage = false;
        this.showConfid = false;
      }
    }
  };
  </script>
  
  <style scoped>
  .blur-background {
      filter: blur(5px);
      pointer-events: none;
      user-select: none;
    }
  .button-Selected{
    border: 2px solid #FFC107;
  }
  </style>