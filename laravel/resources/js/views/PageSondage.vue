<template>
    <h1 class="mt-8 flex justify-center"> Sondages</h1>
    <!--Changer v-for et  :key et :options-->
    <!--npm install vue-router vue-axios --save-->
    <!-- <BaseSondage v-for="poll in polls" :key="poll.id" :question="poll.question" :answers="poll.answers" @addvote="addVote"></BaseSondage> -->
    <BaseSondage  v-for="poll in polls"  :bgColor="bgColor" v-bind="poll.options" @addvote="addVote" ></BaseSondage>
    <!-- <ul class="">
            <li v-for="poll in polls" :key="poll.id" class="">
                {{ poll.question }} {{ poll.answers }} 
                <li v-for="answer in poll.answers">
                    {{ answer.title  }}
                </li>
            </li>
        </ul> -->

        <!-- <ul>
            <li v-for="poll in polls">{{ poll }}</li>
        </ul> -->
</template>

<script>
import BaseSondage from '../components/BaseSondage.vue';
import axios from 'axios';

export default {
    name: 'PageSondage',
    components: {
        BaseSondage,


    },
    data: function () {
        return {
            polls : []

            // options: {
            //     question: "Vous avez pensé quoi de l'émission de hier soir ? &#128526",
            //     answers: [
            //         { value: 1, text: 'Géniaaal', votes: 53 },
            //         { value: 2, text: 'Mouais', votes: 35 },
            //         { value: 3, text: "Pas d'avis", votes: 30 },
            //         { value: 4, text: 'Nul plus jamais', votes: 10 }
            //     ],
            //     finalResults: false,
            //     showResults: false,
            //     multiple: false,
            //     customId: 1
            // }
        }
    },
    mounted() {
        console.log('Component mounted.')
        this.getPoll();
        this.changeBgColor();
        
    },
    methods: {
        addVote: function (obj) {
            console.log('You voted ' + obj.value + '!');
        },
        async getPoll() {
            try {
                const response = await axios.get('getPoll')
                this.polls = response.data;
                
                

            } catch (error) {
                console.error(error);
            }
        },
        changeBgColor() {
            const colors = [
                "bg-bleu-clair",
                "bg-rose-clair",
                "bg-jaune-fonce",
                "bg-violet",
            ];

            // Génère un index aléatoire pour sélectionner une couleur
            const randomIndex = Math.floor(Math.random() * colors.length);

            // Met à jour la couleur de fond
            this.bgColor = colors[randomIndex];
        },
    },
    

    //ajout de cette partie

};



</script>
<style></style>