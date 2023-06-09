<template>
    <div id="formSignUp">
        <router-link to="/">
        <img src="../../assets/back.png" class="absolute top-5 left-0 w-10 h-10 ml-2"/>
        </router-link>
            <h1 id="titlePageSignUp">S'inscrire</h1>
            <div v-if="!confirmForm">
                <form class="form-flex-columns mt-0">
                <div class="input-group">
                    <label class="labelFormSign" for="pseudo">Pseudo</label>
                    <input
                        type="text"
                        id="pseudo"
                        name="pseudo"
                        placeholder="unPseudo123"/>
                </div>
                <div class="input-group">
                    <label class="labelFormSign" for="email">Email</label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="exemple@exemple.com"/>
                </div>
                <div class="input-group">
                    <label class="labelFormSign" for="prenom">Prénom</label>
                    <input
                        type="text"
                        id="prenom"
                        name="prenom"
                        placeholder="unPrenom"/>
                </div>
                <div class="input-group">
                    <label class="labelFormSign" for="nom">Nom</label>
                    <input
                        type="text"
                        id="nom"
                        name="nom"
                        placeholder="unNom"/>
                </div>
                <div class="input-group">
                    <label class="labelFormSign" for="password">Mot de passe</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="..."
                        required/>
                </div>
                <div class="input-group">
                    <label class="font-bold" for="password">Confirmer le mot de passe</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="..."
                        required/>
                </div>
                <div class="flex justify-center mb-5">
                    <BaseButton type="submit" text="S'inscrire" class="boutonForm" @click="confirmForm=true"/>
                </div>
            </form>
            <router-link to="/pagesignin" class="mb-5 underline">Déjà un compte ?</router-link>
            </div>
            <div v-if="confirmForm">
                <p class="text-center mx-10">Nous vous avons envoyé un e-mail. Veuilez rentrer le code que vous avez reçu.</p>
                <form class="form-flex-columns mt-0">
                <div class="input-group mx-10 mt-20">
                    <label class="labelFormSign" for="code">Code</label>
                    <input
                        type="text"
                        id="code"
                        name="code"
                        placeholder="XXXX"/>
                </div>
                <div class="flex justify-center mb-5">
                    <BaseButton type="submit" text="Valider" class="boutonForm" @click="confirmForm=false"/>
                </div>
            </form>
            <router-link to="/pagesignin" class="mb-5 underline mx-40">renvoyer un e-mail</router-link>
            </div>
        </div>
</template>


<script>
import BaseButton from "../components/BaseButton.vue";
export default {
    name: "PageSignUp",
    data() {
        return {
            confirmForm: false
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

.input-group {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    margin-bottom: 10px;
}

#formSignUp input {
    width: 300px;
    height: 30px;
    border-radius: 5px;
    border: 1px solid #d8d8d8;
    padding: 10px;
    padding-top: 25px;
    padding-bottom: 25px;
}

#formSignUp label {
    margin-bottom: 5px;
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
