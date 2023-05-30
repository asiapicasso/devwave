<script>
import { watch } from 'vue';
import Welcome from './components/Welcome.vue'
import Header from './components/header.vue';
import Player from './components/Player.vue';
import Nav from './components/Nav.vue';

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
