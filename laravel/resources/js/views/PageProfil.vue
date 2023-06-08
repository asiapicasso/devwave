<template>
    <div id="profil">
        <div id="pageTitle" class="flex items-center justify-center">
            <h1 class="flex-1 text-center">Mon profil</h1>
            <button id="settingsBtn" class="cursor-pointer mr-2 ml-auto">
                <router-link to="/pageReglages">
                <img src="../../assets/reglages.svg" class="w-6 h-6" />
                </router-link>
            </button>
        </div>


<!---
        <div id="profilPicture" class="flex justify-center m-auto" >
            <img src="../../assets/profils-08.png" id="avatar" class="h-40 w-40"  v-if="isConnected"/>
            <img src="../../assets/profils-08.png" id="avatar" class="h-40 w-40" v-if="!isConnected"/>
            <button v-if="isConnected">
                    <img src="../../assets/appareil-photo.svg" id="changeAvatar" class="h-10 w-10"/>
                </button>
        </div>


        ---->
        <div id="profilPicture" class="flex justify-center m-auto">
  <div class="image-container relative">
    <img src="../../assets/profils-08.png" id="avatar" class="h-40 w-40" v-if="isConnected" />
    <img src="../../assets/profils-08.png" id="avatar" class="h-40 w-40" v-if="!isConnected" />
    <div class="absolute left-24 top-24 appareilPhoto">
        <button class="button-overlay" v-if="isConnected">
      <img src="../../assets/appareil-photo.svg" id="changeAvatar" class="h-8 w-8" />
    </button>
    </div>
  </div>
</div>

        <div id="profilData">
            <!--Les informations du profils s'affichent quand tu es connecté-->
            <div class="ligneDeForm flex items-center space-x-">
                <div class="flex flex-col" >
                <label>Pseudo</label>
                <label>TartePion</label>
                </div>
                <div class="ml-auto">
                <button>
                    <img src="../../assets/crayon.svg" />
                </button>
                </div>
            </div>
            <div class="ligneDeForm flex items-center space-x-">
                <div class="flex flex-col" >
                <label>E-mail</label>
                <label>tart12@gmail.com</label>
                </div>
                <div class="ml-auto">
                <button>
                    <img src="../../assets/crayon.svg" />
                </button>
                </div>
            </div>
            <div class="ligneDeForm flex items-center space-x-">
                <div class="flex flex-col" >
                <label for="pseudo">Nom</label>
                <label>Tartem</label>
                </div>
                <div class="ml-auto">
                <button>
                    <img src="../../assets/crayon.svg" />
                </button>
                </div>
            </div>
            <div class="ligneDeForm flex items-center space-x-">
                <div class="flex flex-col" >
                <label for="pseudo">Prénom</label>
                <label>TartePion</label>
                </div>
                <div class="ml-auto">
                <button>
                    <img src="../../assets/crayon.svg" />
                </button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "PageProfil",
    components: {
    },
    data() {
        return {
            isConnected: true,
        };
    }
};
</script>

<style>
.appareilPhoto{
    top: 110px;
}
#profilData img{
    width: 20px;
    height: 20px;
    flex-grow: 1;
}
#avatar{
    border-radius: 50%;
    position: center;
}

#pageTitle {
    text-align: center;
    margin-bottom: 10%;
    font-size: 30px;
    margin-bottom: 20px;
    color: #055488;
}
#profilData {
    margin-top: 5%;
    margin-left: 10%;
    margin-right: 10%;
    background-color: #fff;
    box-sizing: border-box;
}
#profilData label {
    display: inline-block;
}
#profilData input {
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
    display: flex;
    align-items: center;
    margin-bottom: 30px;
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
