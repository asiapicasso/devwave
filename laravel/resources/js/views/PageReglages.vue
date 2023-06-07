<template>
      <div id="pageTitle" class="flex items-center justify-center">
        Réglages
    </div>
    <li><button @click="showMdpPopup=true">Changer de mot passe</button></li>
    <HR ALIGN=CENTER WIDTH="70%" class="mb-0 mt-9"/>
    <li><button @click="showNotifPopup=true">Notification</button></li>
    <HR ALIGN=CENTER WIDTH="70%" class="mb-0 mt-9"/>
    <li><button @click="showLogoutPopup=true">Se déconnecter</button></li>
    <HR ALIGN=CENTER WIDTH="70%" class="mb-0 mt-9"/>

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