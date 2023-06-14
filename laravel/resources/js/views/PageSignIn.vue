<template>
    <div id="formSignIn" class="flex flex-col items-center justify-center bg-white blur-none">
    <img src="../../assets/back.png" class="absolute top-0 left-0 w-10 h-10 ml-2"/>
    <router-link to="/">
        <img src="../../assets/back.png" class="absolute top-0 left-0 w-10 h-10 ml-2"/>        </router-link>
    <h1 id="titlePageSignIn" class="text-3xl mb-5 text-teal-600">Se connecter</h1>

    <form class="flex flex-col">
        <label for="email" class="mb-2 font-semibold">Email</label>
        <input
            type="email"
            id="email"
            name="email"
            placeholder="exemple@exemple.com"
            class="h-8 rounded mb-2 pt-5 pl-2 pb-5 border border-gray-300"
            required/>
        <label for="password" class="mb-2 font-semibold">Mot de passe</label>
        <input
            type="password"
            id="password"
            name="password"
            placeholder="...."
            class="h-8 rounded mb-2 pt-5 pl-2 pb-5 border border-gray-300"
            required/>       
        <div class="flex justify-center mb-5">
            <BaseButton type="submit" text="Valider" class="mt-5"/>
        </div>
    </form>

    
    <router-link to="/pageSondage" class="underline">T'as perdu ton mot de passe ?</router-link>
    <HR ALIGN=CENTER WIDTH="70%" class="mb-0 mt-9"/>
    <div id="NoAccountAsk" class="my-5">T'as pas encore de compte ?</div>
    <router-link to="/pagesignup"><BaseButton text="S'inscrire" role="secondaire"/></router-link>
    </div>
</template>

<script>
import { RouterLink } from "vue-router";
import BaseButton from "../components/BaseButton.vue";
export default {
    name: "PageSignIn",
    data() {
        return {
            isConnected: false,
        };
    },
    components: { RouterLink, BaseButton }
};
</script>

<style scoped>
#formSignIn {
    filter: blur(0);
}
#formSignIn input{
    width: 300px;
}
</style>