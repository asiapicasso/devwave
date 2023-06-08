<template>
    <div>
        <div id="formProfil">
            <form class="flex flex-col">
        <label for="mdp" class="mb-2 font-semibold">Ancien mot de passe</label>
        <input
            type="email"
            id="email"
            name="email"
            placeholder="..."
            class="h-8 rounded mb-2 pt-5 pl-2 pb-5 border border-gray-300"
            required/>
        <label for="password" class="mb-2 font-semibold">Nouveau mot de passe</label>
        <input
            type="password"
            id="password"
            name="password"
            placeholder="...."
            class="h-8 rounded mb-2 pt-5 pl-2 pb-5 border border-gray-300"
            required/>
            <label for="password" class="mb-2 font-semibold">Répétez le nouveau mot de passe</label>
        <input
            type="password"
            id="password"
            name="password"
            placeholder="...."
            class="h-8 rounded mb-2 pt-5 pl-2 pb-5 border border-gray-300"
            required/>       
        <div class="flex justify-center mb-5">
            <BaseButton type="submit" text="Valider" class="mt-7"/>
        </div>
    </form>
        </div>
    </div>
    
</template>

<script>
import BaseButton from './BaseButton.vue'
    export default {
        name: 'TheNouveauMdp',
        data() {
            return {
                message: 'The NouveauMdp'
            }
        },
        components: {
            BaseButton
        }
    }
</script>

<style scoped>
    #formProfil input{
        margin-right: 40px;
    }
    
</style>