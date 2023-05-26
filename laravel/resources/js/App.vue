<script>
import { watch } from 'vue';
import Welcome from './components/Welcome.vue'

export default {
  name: 'App',
  components: {
    Welcome
  }
}
</script>

<template>
        <Welcome/>
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
