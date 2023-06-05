<template>
    <div id="formSignIn">
    <h1>Se connecter</h1>
    <form class="form-flex-columns">
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
        <button type="submit">
            Valider
        </button>
    </form>
    <button id="forgetPassword">
        Mot de passe oublié ?
    </button>
    <button id="signup">
        S'inscrire
    </button>
    </div>
</template>

<script>
import BaseFormSign from "../components/BaseFormSign.vue";
export default {
    name: "PageSignIn",
    data() {
        return {
            isConnected: false,
        };
    },
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
}
</style>