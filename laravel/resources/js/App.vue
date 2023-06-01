<script>
import { watch } from 'vue';
import BaseHeader from './components/BaseHeader.vue';
import BasePlayer from './components/BasePlayer.vue';
import BaseNav from './components/BaseNav.vue';


export default {
  name: 'App',
  components: {
    BaseNav,
    BaseHeader,
    BasePlayer

  }
}
</script>

<template>
  <div id="app">
    <BaseHeader />
    <router-view></router-view>
    <BasePlayer />
    <BaseNav />
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
</style>
