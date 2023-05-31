<script>
//Le but de cette page est d'afficher le contenu des différentes pages de l'application
//Nous pouvons nous baser sur le code de la page des exercices.

/*const displaySection = (hash) => {
    if(hash == '') hash = '#home'
  
    const hashSplit = hash.split('-')
  
    // On appelle la fonction toggleNav qui va s'occuper de "toggler" les liens dans la navigation. On se sert toujours
    // de la première partie de l'url (comme ça, si #artists-12 --> #artists est sélectionné)
    toggleNav(hashSplit[0])
  
    // On appelle la fonction toggleSection qui va s'occuper de "toggler" les sections dans le body. Par défaut, la première
    // partie de l'url correspond à une section dans le HTML, par exemple -> #home --> #home-section. Dans certains cas,
    // on va appeler cette fonction manuellement avec une valeur spécifique, pour afficher la section list, car l'url
    // ne correspond pas
    toggleSection(hashSplit[0])
  
    switch(hashSplit[0]) {
      case '#artists':
        // S'il y a un paramètre derrière...? Ex: -> #artists-12 -> hashSplit[1] vaudra 12
        if(hashSplit[1]){
          // Cela nous permet d'afficher la section générique "list"
          toggleSection('#list')
          renderSongsForArtistSection(hashSplit[1])
        }
        else {
          renderArtists()
        }
      break;
  
      case '#search':
        toggleSection('#list')
        renderSongsForSearchSection(hashSplit[1])
        break;
  
      case '#favorites':
        toggleSection('#list')
      break;
    }
  }
  
  // On link la fonction "displaySection" à l'événement hashchange pour être averti d'un changement de hash dans l'url
  window.addEventListener('hashchange', () => displaySection(window.location.hash))
  
  // Affichage au chargement pour traiter l'url en cours (exemple: on ouvre un lien dans un nouvel onglet)
  displaySection(window.location.hash)*/
  
import PageSondage from '../views/PageSondage.vue';
export default {
  name: 'BaseContent',
  components: {
    PageSondage
  }
}

</script>
<template>
  <div>
    <PageSondage></PageSondage>
  </div>
</template>
   