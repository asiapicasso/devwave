<template>
    <div id="toReplace">
    <div :is="currentComponent"></div>
    <div v-show="!currentComponent" v-for="component in componentsArray">
      <button @click="swapComponent(component)">{{component}}</button>
    </div>
  </div>
    <button @click="swapComponent(null)">Close</button>
</template>

<script>
  
import Chat from '../components/TheChat.vue';
import Sondage from '../components/BaseSondage.vue';
export default {
  name: 'BaseContent',
  components: {
    Chat,
    Sondage
  },
  data() {
    return {
      currentComponent: null,
      componentsArray: ['Chat', 'Sondage']
    }
  },
  methods: {
    swapComponent: function(component)
    {
      this.currentComponent = component;
    }
  }
};
</script>