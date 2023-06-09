<template>
    <!--Changer v-for et  :key et :options-->
    <!--npm install vue-router vue-axios --save-->
    <BaseSondage v-for="poll in polls" :key="poll.id" :options="poll.question" @addvote="addVote"></BaseSondage>
</template>

<script>
import BaseSondage from '../components/BaseSondage.vue';

export default {
    name: 'PageSondage',
    components: {
    BaseSondage,

},
  data: function(){
                return {
                    polls:[]
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
					// 	customId: 1
                    // }
                }
            },
            methods: {
                addVote: function(obj){
                    console.log('You voted ' + obj.value + '!');
                }
            },
            //ajout de cette partie
            created() {
            this.axios
                .get('http://localhost:8000/api/polls')
                .then(response => {
                    this.polls = response.data;
                });
        },
};



</script>
<style>
</style>