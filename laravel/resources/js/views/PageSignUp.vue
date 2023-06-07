<template>
    <div id="formSignUp">
        <img src="../../assets/back.png" class="absolute top-5 left-0 w-12 h-12"/>
            <h1 id="titlePageSignUp">S'inscrire</h1>
            <form class="form-flex-columns">
                <label class="labelFormSign" for="pseudo">Pseudo</label>
                <input
                    type="text"
                    id="pseudo"
                    name="pseudo"
                    placeholder="unPseudo123"/>
                <label class="labelFormSign" for="email">Email</label>
                <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder="exemple@exemple.com"/>
                <label class="labelFormSign" for="prenom">Prénom</label>
                <input
                    type="text"
                    id="prenom"
                    name="prenom"
                    placeholder="unPrenom"/>
                <label class="labelFormSign" for="nom">Nom</label>
                <input
                    type="text"
                    id="nom"
                    name="nom"
                    placeholder="unNom"/>
                <label class="labelFormSign" for="password">Mot de passe</label>
                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="..."
                    required/>
                <label class="font-bold" for="password">Confirmer le mot de passe</label>
                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="..."
                    required/>
                    <div class="flex justify-center mb-5">
                        <BaseButton type="submit" text="S'inscire" class="boutonForm"/>
                    </div>
            </form>
            <router-link to="/pagesignin" class="mb-5 underline">Déjà un compte ?</router-link>
        </div>
</template>

<script>
import BaseButton from "../components/BaseButton.vue";
export default {
    name: "PageSignUp",
    data() {
        return {
            isConnected: false,
        };
    },
    components: { BaseButton }
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
    padding-top: 20px;
}
#formSignUp input{
    width: 300px;
    height: 30px;
    border-radius: 5px;
    border: 1px solid #d8d8d8;
    margin-bottom: 10px;
    padding-top: 20px;
    padding-left: 10px;
    padding-bottom: 20px;
}
#formSignUp label{
    margin-bottom: 10px;
    font-weight: 600;
}
#NoAccountAsk {
    margin-top: 20px;
    margin-bottom: 20px;
}
#titlePageSignUp {
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