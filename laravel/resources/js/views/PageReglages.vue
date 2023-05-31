<template>
    <div>
        <h1>Page Reglages</h1>
    </div>
    <li>Changer de mot passe</li>
    <li>Désactiver le mode voiture</li>
    <li>Notification</li>
    <li>-------------------------------------</li>
    <li><button @click="showLogoutPopup=true">Se déconnecter</button></li>

    <Logout v-if="showLogoutPopup" @close="showLogoutPopup = false" />
</template>

<script>
import Logout from '../components/TheLogout.vue';
export default {
  components: {
    Logout
  },
  data() {
    return {
      showLogoutPopup: false
    };
  }
};
</script>

<style scoped>

</style>