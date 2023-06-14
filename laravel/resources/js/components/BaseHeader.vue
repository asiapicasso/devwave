<template>
  <div class="h-20 w-full justify-between text-3xl font-bold bg-gradient-to-t from-bleu-clair via-middle-rose to-rose flex items-end">
    <img class="-mb-1 ml-4 h-16 w-26 fill-current" src="../../assets/Logo-Interact.png" alt="logo">
    <div class="flex">
      <img @click="launchPhoneApp" class="h-10 w-12 mt-1 mr-1" src="../../assets/telephone.svg" alt="icon de téléphone" />
      <router-link to="/pageLiveVoiture"><img class="mr-2 h-12 w-12" src="../../assets/voiture.svg" alt="icon de voiture" /></router-link>
    </div>
  </div>
</template>

  
  <style>
  </style>
  
  <script>
  export default {
    name: 'Header',
    data() {
      return {
        title: 'My Header'
      };
    },
    methods: {
  launchPhoneApp() {
    window.open('tel:0840 003 003'); // Remplacez +123456789 par le numéro de téléphone souhaité
  }
}
  };
  </script>