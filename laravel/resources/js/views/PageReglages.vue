<template>
  <div id="pageReglage" :class="{'blur-background': showLogoutPopup || showDeletePopup}">
    <router-link to="/pageProfil" v-if="inSettingPage"><img src="../../assets/back.png" class="absolute left-0 w-10 h-10 ml-2 mt-3"/></router-link>
    <button v-if="!inSettingPage" @click="displaySettingPage()"><img src="../../assets/back.png" class="absolute left-0 w-10 h-10 ml-2 mt-4"/></button>
      <div id="pageTitle" class="flex items-center justify-center">
        <h1 class="text-bleu+4">Réglages</h1>
      </div>
      <div id="reglageContent" class="mt-10 ml-10">
        <div class="pageMenuReglage" v-if="inSettingPage">
        <div class="ligneDeForm flex items-center space-x- justify-between">
          <div class="flex flex-col">
            <button @click="displayMdpPopup()" class="font-semibold">Modifier le mot de passe</button>
          </div>
          <div class="mx-8">
            <button>
              <img src="../../assets/back.png" class="w-5 h-5 rotate-180" />
            </button>
          </div>
        </div>
        <hr align="center" width="90%" class="my-4" />
        <div class="ligneDeForm flex items-center space-x- justify-between">
          <div class="flex flex-col">
            <button @click="displayNotifPopup()" class="font-semibold">Paramétrer les notifications</button>
          </div>
          <div class="mx-8">
            <button>
              <img src="../../assets/back.png" class="w-5 h-5 rotate-180" />
            </button>
          </div>
        </div>
        <hr align="center" width="90%" class="my-4" />
        <div class="ligneDeForm flex items-center space-x- justify-between">
          <div class="flex flex-col">
            <button @click="displayConfidPopup()" class="font-semibold">Confidentialité</button>
          </div>
          <div class="mx-8">
            <button>
              <img src="../../assets/back.png" class="w-5 h-5 rotate-180" />
            </button>
          </div>
        </div>
        <hr align="center" width="90%" class="my-4" />
      </div>
        <Notif v-if="showNotifPopup" @close="showNotifPopup = false" />
        <NouveauMdp v-if="showMdpPopup" @close="showMdpPopup = false" />
        <div v-if="showConfid" class="mr-5">
          <h2 class="text-center">Notre politique de confidentialité</h2>
          <div class="text-xs mt-5 mr-5">
          <p>Couleur 3 tiens à ce que tes données restent confidentielles.</p><br/>
          <p>Nous collections seulement les informations que tu nous a transmises lors de ton inscription (pseudo,email, nom, prénom, mot de passe crypté).</p><br/>
          <p>Ces données sont classées dans notre base de données privée.</p><br/>
          <p>Nous n'utilisons tes informations personnelles seulement pour te permettre de te connecter, et pouvoir écrire dans le chat en affichant ton pseudo.</p><br/>
          <p>Tes données ne sont pas partagés avec des tiers.</p><br/>
          <p>Pour supprimer tes données, il suffit de supprimer ton compte.</p><br/>
          </div>
          
        </div>
        <BaseButton @click="displayLogoutPopup()" class="h-10 m-auto mt-40 mb-8 logoutBtn" text="Déconnexion" role="secondaire"/>
        <button @click="displayDeletePopup()" class="underline flex items-center justify-center mx-auto">supprimer mon compte</button>
      </div>
      
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
      showDeletePopup: false
    };
  },
  methods:{
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

.logoutBtn{
  width: 150px;
}
</style>