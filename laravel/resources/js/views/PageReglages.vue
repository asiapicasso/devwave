<template>
  <div id="pageReglage">
    <router-link to="/pageProfil" v-if="inSettingPage"><router-link to="/pageReglages" v-if="!inSettingPage"></router-link><img src="../../assets/back.png" class="absolute left-0 w-10 h-10 ml-2"/></router-link>
      <div id="pageTitle" class="flex items-center justify-center">
        Réglages
      </div>
      <div id="reglageContent" class="mt-10 ml-10">
        <div class="ligneDeForm flex items-center space-x- justify-between">
          <div class="flex flex-col">
            <button @click="showMdpPopup=true" class="font-semibold">Modifier le mot de passe</button>
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
            <button @click="showLogoutPopup=true" class="font-semibold">Paramétrer les notifications</button>
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
            <button @click="showLogoutPopup=true" class="font-semibold">Confidentialité</button>
          </div>
          <div class="mx-8">
            <button>
              <img src="../../assets/back.png" class="w-5 h-5 rotate-180" />
            </button>
          </div>
        </div>
        <hr align="center" width="90%" class="my-4" />
        <Logout v-if="showLogoutPopup" @close="showLogoutPopup = false" />
        <Notif v-if="showNotifPopup" @close="showNotifPopup = false" />
        <NouveauMdp v-if="showMdpPopup" @close="showMdpPopup = false" />
        <BaseButton @click="showLogoutPopup=true" class="w-1/2 h-10 m-auto mt-40 mb-8" text="Déconnexion" role="secondaire"/>
        <router-link to="/pageProfil" v-if="inSettingPage" class="underline flex items-center justify-center">supprimer mon compte</router-link>
      </div>


  </div>
</template>

<script>
import Logout from '../components/TheLogout.vue';
import NouveauMdp from '../components/TheNouveauMdp.vue';
import Notif from '../components/TheNotification.vue';
import BaseButton from '../components/BaseButton.vue';
export default {
  components: {
    Logout,
    NouveauMdp,
    Notif,
    BaseButton
  },
  data() {
    return {
      inSettingPage: true,
      showLogoutPopup: false,
      showMdpPopup: false,
      showNotifPopup: false
    };
  }
};
</script>

<style scoped>


</style>