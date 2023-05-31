<template>
        <div id="nav">
            <router-link to="/pageLive">pageLive</router-link>
            <router-link to="/pageSondage">pageSondage</router-link>
            <router-link to="/pageMusique">pageMusique</router-link>
            <router-link to="/pageProfil">pageProfil</router-link>
        </div>
</template>
  
  <style>
/*Fixe Base nav en bas de la page qui a toute la largeur de l'écran et les routeurs sont équitablement espacés*/
  #nav {

    width: 100%;
    background-color: #333;
    text-align: center;
  }

  #nav a {
    display: inline-block;
    color: #f2f2f2;
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