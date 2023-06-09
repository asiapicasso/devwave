<template>
    <div class="page m-5 h-30 shadow-2xl" id="changeValuePopup">
      <div id="popupDisconnected">
        <h2 class="mt-3">Nouveau {{ message }}</h2>
        <input type="text" class="mt-4 border rounded py-3 pl-2 w-full" id="unNouveauPseudo" :placeholder="'unNouveau' + message" />
        <div id="twoChoiceBtn" class="">
          <BaseButton id="cancelBtn" @click="cancelChangeValue()" class="m-auto mb-8 mt-5 w-50 u" text="Annuler" role="secondaire" />
          <router-link to="/logout">
            <BaseButton id="validChangeValue" @click="logout()" class="mb-8 mt-5 w-50 no-underline" text="Valider" />
          </router-link>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  import BaseButton from './BaseButton.vue';
  
  export default {
    props: {
      message: String
    },
    name: 'BaseChangeValue',
    components: {
      BaseButton
    },
    methods: {
      logout() {
        axios
          .post('/logout')
          .then((response) => {
            this.$router.push('/pageSignIn');
          })
          .catch((error) => {
            console.log(error);
          });
      },
      cancelChangeValue() {
        this.$emit('cancelChangeValue');
      }
    },
    computed: {
        newValue() {
            return this.message;
        }
    }
  };
  </script>
  

<style scoped>
#validChangeValue{
    padding-left: 0;
    padding-right: 0;
}
#twoChoiceBtn {
    display: flex;
    justify-content: space-between;
    width: 100%;
    margin-left: -10%;
    margin-top: 10px;
}
.page {
    display: flex;
    background-color: #ffffff;
    padding-left: 20px;
    padding-right: 30px;
    flex-direction: column;
    z-index: 1;
    border-radius: 5%;
    padding-right: 5%;
    height: 25%;
}
</style>