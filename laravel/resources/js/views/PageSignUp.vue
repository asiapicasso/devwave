<template>
    <div id="formSignUp">
            <h1>S'inscrire</h1>
            <form class="form-flex-columns">
                <label for="pseudo">Pseudo</label>
                <input
                    type="text"
                    id="pseudo"
                    name="pseudo"
                    placeholder=""/>
                <label for="email">Email</label>
                <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder=""/>
                <label for="prenom">Prénom</label>
                <input
                    type="text"
                    id="prenom"
                    name="prenom"
                    placeholder=""/>
                <label for="nom">Nom</label>
                <input
                    type="text"
                    id="nom"
                    name="nom"
                    placeholder=""/>
                <label for="password">Mot de passe</label>
                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder=""
                    required/>
                <label for="password">Confirmer le mot de passe</label>
                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder=""
                    required/>
                <button type="submit">
                    Valider
                </button>
            </form>
        </div>
</template>

<script>
import BaseFormSign from "../components/BaseFormSign.vue";
export default {
    name: "PageSignUp",
    data() {
        return {
            isConnected: false,
        };
    },
};
</script>

<style scoped>
#formSignUp {
        display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    filter: blur(0);
    background-color: white;
}
</style>