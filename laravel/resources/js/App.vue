<script>
import { watch } from 'vue';
import Welcome from './components/BaseContent.vue'
import Header from './components/BaseHeader.vue';
import Player from './components/BasePlayer.vue';
import Nav from './components/BaseNav.vue';

export default {
  name: 'App',
  components: {
    Header,
    Player,
    Nav

  }
}
</script>

<template>
    <Header/>
    <Player/>
    <Nav/>
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
