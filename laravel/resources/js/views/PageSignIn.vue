<template>
    <div id="formSignIn">
    <img src="../../assets/back.png" class="absolute top-0 left-0 w-12 h-12"/>
    <h1 id="titlePageSignIn">Se connecter</h1>

    <form class="flex flex-col">
        <label for="email">Email</label>
        <input
            type="email"
            id="email"
            name="email"
            placeholder="exemple@exemple.com"/>
        <label for="password">Mot de passe</label>
        <input
            type="password"
            id="password"
            name="password"
            placeholder="...."
            required/>       
        <div class="flex justify-center mb-5">
            <BaseButton type="submit" text="Valider" class="boutonForm"/>
        </div>
    </form>

    
    <router-link to="/pageSondage" class="underline">T'as perdu ton mot de passe ?</router-link>
    <HR ALIGN=CENTER WIDTH="70%" class="mb-0 mt-9"/>
    <div id="NoAccountAsk">T'as pas encore de compte ?</div>
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
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    filter: blur(0);
    background-color: white;
    padding-top: -20px;
}
#formSignIn input{
    width: 300px;
    height: 30px;
    border-radius: 5px;
    border: 1px solid #d8d8d8;
    margin-bottom: 10px;
    padding-top: 20px;
    padding-left: 10px;
    padding-bottom: 20px;
}
#formSignIn label{
    margin-bottom: 10px;
    font-weight: 600;
}
#NoAccountAsk {
    margin-top: 20px;
    margin-bottom: 20px;
}
#titlePageSignIn {
    font-size: 30px;
    margin-bottom: 20px;
    color: #0d8d9e;
}
.boutonForm {
    margin-top: 20px;
}
.ligneDeSeparation {
    margin-top: 20px;
}
</style>