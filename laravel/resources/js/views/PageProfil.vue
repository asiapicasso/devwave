<template>
    <div id="profil">
        <button id="settingsBtn" v-if="isConnected"><router-link to="/pageReglages"><img src="../../assets/engrenage.png" /></router-link></button>
        <div id="pageTitle">
            <h1>Mon profil</h1>
        </div>
        <div id="profilPicture" class="flex justify-center m-auto" >
            <img src="../../assets/avatar.jpg" id="avatar" class="h-40 w-40"  v-if="isConnected"/>
            <img src="../../assets/NoConnectedPicture.jpg" id="avatar" class="h-40 w-40" v-if="!isConnected"/>
            <button v-if="isConnected">
                    <img src="../../assets/modifier.png" id="changeAvatar" class="h-10 w-10"/>
                </button>
        </div>
        <div id="formProfil">
            <!--Les informations du profils s'affichent quand tu es connecté-->
            <form class="form-flex-columns" v-if="isConnected">
                <div class="ligneDeForm">
                    <label for="pseudo">Pseudo</label>
                <input
                    type="text"
                    id="pseudo"
                    name="pseudo"
                    placeholder="Tartempion12"
                    required
                />
                <button type="submit">
                    <img src="../../assets/modifier.png" />
                </button></div>
                <div class="ligneDeForm">
                <label for="email">Email</label>
                <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder="tart12@gmail.com"
                    required
                />
                <button type="submit">
                    <img src="../../assets/modifier.png" />
                </button>
            </div>
            <div class="ligneDeForm">
                <label for="nom">Nom</label>
                <input
                    type="text"
                    id="nom"
                    name="nom"
                    placeholder="Tarte"
                    required
                />
                <button type="submit">
                    <img src="../../assets/modifier.png" />
                </button>
                </div>
                <div class="ligneDeForm">
                <label for="prenom">Prénom</label>
                <input
                    type="text"
                    id="prenom"
                    name="prenom"
                    placeholder="Pion"
                    required
                />
                <button type="submit">
                    <img src="../../assets/modifier.png" />
                </button>
            </div>
            </form>
        </div>
    </div>
</template>

<script>
import BaseFormSign from '../components/BaseFormSign.vue';
export default {
    name: "PageProfil",
    components: {
    },
    data() {
        return {
        };
    }
};
</script>

<style>
#baseFormSign {
    margin-bottom: 20px;
    margin-top: 30px;
}
.form-flex-columns {
  display: flex;
  flex-direction: column;
  margin-top: 10%;
}

#formProfil img{
    width: 20px;
    height: 20px;
    flex-grow: 1;
}
#avatar{
    background-color: #fff;
    border-radius: 50%;
    position: center;
}

#settingsBtn {
    position: absolute;
    top: 15%;
    right: 5%;
    border: none;
    width: 4vw;
    height: 4vw;
    cursor: pointer;
}

#pageTitle {
    text-align: center;
    margin-top: 50px;
    margin-bottom: 10%;
}
#formProfil {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
    font-size: 1em;

}
h1 {
    font-size: 2em;
    font-weight: bold;
}
#formProfil label {
    display: inline-block;
}
#formProfil input {
    margin-left: 1%;
    margin-right: 1%;
    border: none;
    border-bottom: 1px solid #000;
    background-color: #fff;
    width: 50%;
    height: 30px;
    border: 1px solid #000;
    box-sizing: border-box;

}
.ligneDeForm{
    margin-bottom: 20px;
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}
.ligneDeForm label {
  margin-right: 10px;
  width: 20%;
}
.ligneDeForm input[type="text"],
.ligneDeForm input[type="email"] {
  flex-grow: 1;
}
.ligneDeForm button {
  background: none;
  border: none;
  cursor: pointer;
}
</style>
