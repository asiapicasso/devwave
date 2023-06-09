<script>
import { watch } from "vue";
import BaseHeader from "./components/BaseHeader.vue";
import BasePlayer from "./components/BasePlayer.vue";
import BaseNav from "./components/BaseNav.vue";
import BaseFormSign from "./components/BaseFormSign.vue";

export default {
  name: 'App',
  data() {
    return {
      //Si vous modifier cette variable en true, vous passez comme si vous étiez connecté.
      isConnected: true,
    };
  },
  components: {
    BaseNav,
    BaseHeader,
    BasePlayer,
    BaseFormSign
}
}
</script>

<template>
    <div id="app">
        <BaseHeader class="sticky top-0 w-full"/>
        <router-view :class="{ notConnected: !isConnected }"></router-view>
        <div class="formContainer" v-if="!isConnected">
            <BaseFormSign />
        </div>
        <div class="sticky bottom-0 ">
            <BasePlayer class="z-20"/>
            <BaseNav class="z-0"  />
        </div>
    </div>
</template>

<style scoped>
#app {
    display: flex;
    flex-direction: column;
    align-items: stretch;
    justify-content: space-between;
    height: 100vh;
}
.notConnected {
    filter: blur(5px);
}
.formContainer {
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    top: 30%;
    z-index: 100;
}
</style>
