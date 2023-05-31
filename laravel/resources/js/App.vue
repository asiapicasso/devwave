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
 body{
  background-color: #000;
  color: #fff;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 1.2em;
  text-align: center;
  padding: 0;
  margin: 0;
 }
</style>
