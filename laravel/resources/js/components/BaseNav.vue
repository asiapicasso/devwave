<template>
  <div id="nav" class="flex flex-row justify-evenly bg-bleu-clair text-black mt-2">
      <router-link to="/pageLive" class=" flex-link">
        <img class="w-8 h-6 m-auto mb-1" src="../../assets/Live-actif.svg" alt="icon-live">
        <p>Live/Chat</p>
      </router-link>
      <router-link to="/pageSondage">
        <img class="w-6 h-6 m-auto mb-1" src="../../assets/Sondages.svg" alt="icon-live">
        <p>Sondages</p>
      </router-link>
      <router-link to="/pageMusique">
        <img class="w-6 h-6 m-auto mb-1" src="../../assets/Votes-musique.svg" alt="icon-live">
        <p>MusiVote</p>
      </router-link>
      <router-link to="/pageProfil">
        <img class="w-6 h-6 m-auto mb-1" src="../../assets/Profil.svg" alt="icon-live">
        <p>Profil</p>
      </router-link>
  </div>
</template>


  
  <style>
/*Fixe Base nav en bas de la page qui a toute la largeur de l'écran et les routeurs sont équitablement espacés*/
  #nav {
    width: 100%;
    text-align: center;
  }

  #nav a {
    display: inline-block;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
  }


  
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