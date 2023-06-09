<template>
    <div class="mt-10 ml-10 mr-10">
        <div class="flex flex-col items-center">
            <h2 class="text-2xl font-semibold mr-10">Notification</h2>
            <div class="my-5 text-center mr-10">Choisis les notifications que tu souhaites recevoir.</div>
        </div>
      <form>
        <div class="pageMenuReglage mr-0">
          <div class="ligneDeForm flex items-center space-x- justify-between">
            <div class="flex flex-col">
              <label class="" style="white-space: nowrap;">Live</label>
            </div>
            <input type="checkbox" class="mx-20" checked/>
          </div>
          <hr align="center" width="80%" class="my-4" />
        
          <div class="ligneDeForm flex items-center space-x- justify-between">
            <div class="flex flex-col">
              <label class="" style="white-space: nowrap;">Sondage</label>
            </div>
            <input type="checkbox" class="mx-20" checked/>
          </div>
          <hr align="center" width="80%" class="my-4" />
        
          <div class="ligneDeForm flex items-center space-x- justify-between">
            <div class="flex flex-col">
              <label class="" style="white-space: nowrap;">Appel</label>
            </div>
            <input type="checkbox" class="mx-20" checked/>
          </div>
          <hr align="center" width="80%" class="my-4" />
        
          <BaseButton class="w-20 h-10 mt-10 mx-20" text="Valider" />
        
        </div>
      </form>
    </div>
  </template>
  

<script>
import BaseButton from './BaseButton.vue';
    export default {
        name: 'TheNotification',
        components: {
    BaseButton
},
        data() {
            return {
                message: 'The Notification'
            }
        }
    }    
</script>

<style scoped>
</style>