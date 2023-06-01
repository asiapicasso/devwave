<template>
    <div>
        <h1 class="py-5 ml-0 text-4xl font-bold tracking-tight text-black sm:text-5xl">Reglages</h1>
    </div>
    <li><button @click="showMdpPopup=true">Changer de mot passe</button></li>
    <li><button @click="showNotifPopup=true">Notification</button></li>
    <li>-------------------------------------</li>
    <li><button @click="showLogoutPopup=true">Se déconnecter</button></li>

    <Logout v-if="showLogoutPopup" @close="showLogoutPopup = false" />
    <Notif v-if="showNotifPopup" @close="showNotifPopup = false" />
    <NouveauMdp v-if="showMdpPopup" @close="showMdpPopup = false" />
</template>

<script>
import Logout from '../components/TheLogout.vue';
import NouveauMdp from '../components/TheNouveauMdp.vue';
import Notif from '../components/TheNotification.vue';
export default {
  components: {
    Logout,
    NouveauMdp,
    Notif
  },
  data() {
    return {
      showLogoutPopup: false,
      showMdpPopup: false,
      showNotifPopup: false
    };
  }
};
</script>

<style scoped>
  li {
    list-style-type: none;
  }
</style>