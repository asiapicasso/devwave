<template>
  <div class="h-20 w-full justify-between text-3xl font-bold bg-gradient-to-t from-bleu-clair via-middle-rose to-rose flex items-end">
    <img class="-mb-1 ml-4 h-16 w-26 fill-current" src="../../assets/Logo-Interact.png" alt="logo">
    <div class="flex">
      <img class="h-8 w-8 mt-1.5 mr-4" src="../../assets/telephone.svg" alt="icon de téléphone" />
      <img class="h-12 w-12" src="../../assets/voiture.svg" alt="icon de voiture" />
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
    }
  };
  </script>