<template>
    <footer class="flex justify-center">
  <div id="liveButton" class="border-2 border-rose-600"><a href="#live">Live</a></div>
  <div id="home" class="border-2 border-rose-600"><a href="#sondage">Sondage</a></div>
  <div id="music" class="border-2 border-rose-600"><a href="#musique">Musique</a></div>
  <div id="profil" class="border-2 border-rose-600"><a href="#profil">Profil</a></div>
</footer>

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