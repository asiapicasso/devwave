<template>
    <div class="flex flex-col mx-5 mt-8">
        <h1 class="text-center" id="musiVoteTitre">MusiVote</h1>
        <h2 id="musiVote" class="text-center">Propose ta musique ou vote pour les musiques en dessous 🎶</h2>
    </div>
    <div>
    <div id="principal">
          <div class="container-fluid">
            <ul class="list-group">
              <div v-for="post in post" :post="song"></div>
            </ul>
            <div class="my-5">
              <div class="ml-5 mr-5 input-group">
                <input class="border border-gray-300 rounded-md p-2 focus:outline-none focus:border-blue-500" type="text" placeholder="Cherche ta chanson..." v-model="song" @keyup.enter="handleClick">
                <span class="input-group-btn">
                    <button>
                     <BaseButton class="ml-6" text="Envoyer" :clickHandler="handleClick" role="principal" />
                 </button>
        		</span>
              </div>
            </div>
          </div>
        </div>

        <div class="flex flex-col">
        <BaseVoteMusique v-for="(item, index) in post" :key="index"
        :text="item.title"  
        @upvote="handleUpvote(index)" 
        @downvote="handleDownvote(index)"  
        iconUp='<svg width="20" height="23" viewBox="0 0 20 23" xmlns="http://www.w3.org/2000/svg">
<path d="M1.52637 7.20098L8.49902 0.736328C8.88418 0.349609 9.40879 0.15625 9.98652 0.15625C10.5643 0.15625 11.0822 0.349609 11.474 0.736328L18.4732 7.20098C19.3033 7.96797 19.3033 9.21836 18.4732 9.98535C17.6432 10.7523 16.3018 10.7523 15.4717 9.98535L12.1248 6.88516V20.8715C12.1248 21.9607 11.1752 22.8438 9.99981 22.8438C8.82441 22.8438 7.87481 21.9607 7.87481 20.8715V6.88516L4.52793 9.9918C3.69785 10.7588 2.35645 10.7588 1.52637 9.9918C0.696289 9.21836 0.696289 7.97441 1.52637 7.20098Z"/>
</svg>'    
        iconDown='<svg width="20" height="23" viewBox="0 0 20 23" xmlns="http://www.w3.org/2000/svg">
<path d="M18.4736 15.799L11.501 22.2637C11.1158 22.6504 10.5912 22.8437 10.0135 22.8437C9.43574 22.8437 8.91777 22.6504 8.52598 22.2637L1.52676 15.799C0.69668 15.032 0.69668 13.7816 1.52676 13.0146C2.35684 12.2477 3.69824 12.2477 4.52832 13.0146L7.8752 16.1148L7.8752 2.12852C7.8752 1.03926 8.82481 0.156249 10.0002 0.156249C11.1756 0.156249 12.1252 1.03926 12.1252 2.12852L12.1252 16.1148L15.4721 13.0082C16.3021 12.2412 17.6436 12.2412 18.4736 13.0082C19.3037 13.7816 19.3037 15.0256 18.4736 15.799Z" fill="#034249"/>
</svg>' 
       
    :score="item.score"/>
    </div>
    </div>

    <!-- <div id="bdd">
        <input type="button" @click="allUsers()" value="Select All Users">
        <br><br>
        <div v-for="user in users" v-bind:key="user.id">
            <p>{{ user.id }}</p>
            <p>{{ user.name }}</p>
            <p>{{ user.email }}</p>
    </div> 
    </div>-->
</template>

<script>
import { ref } from "vue";
import BaseVoteMusique from "../components/BaseVoteMusique.vue";
import BaseButton from "../components/BaseButton.vue";
import BaseInput from "../components/BaseInput.vue";
import axios from "axios";

export default {
    name: "PageMusique",
    components: {
    BaseVoteMusique,
    BaseButton,
    
},
    data() {
        return {
            searchValue: "",
            post: [
                {
                    id: 1, title: "Devil Dance Floor - Flogging Molly",
                    votes: 0,
                },
                {
                    id: 2, title: "Ciao Ciao - La rappresentante di lista",
                    votes: 0,
                },
                {
                    id: 3, title: "The Pretender - Foo Fighters",
                    votes: 0,
                },
            ],
        }
    },


    methods: {

        handleClick: function () {
            //empêcher de push un titre vide
            //le premier enter passe quand c'est vide mais pas les suivants ??!?!?
            if (this.song == "") {
                alert("Veuillez entrer un titre");
            } else {
                this.post.unshift({
                    title: this.song,
                    votes: 0,
                })
                this.song = "";
            }
        },
        
    },

    computed: {
        votes: function () {
            if (this.handleUpvote) {
                return this.post.votes + 1;
            } else if (this.handleDownvote) {
                return this.post.votes - 1;
            } else {
                return this.post.votes;
            }

        },

}
}

</script>

<style scoped>


</style>

