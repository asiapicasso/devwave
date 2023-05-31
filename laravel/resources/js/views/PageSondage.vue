<template>
    <h1>Sondages</h1>
    <BaseSondage v-bind="options" @addvote="addVote"></BaseSondage>
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
                    options: {
                        question: 'What\'s your favourite <strong>JS</strong> framework?',
                        answers: [
                            { value: 1, text: 'Vue', votes: 53 },
                            { value: 2, text: 'React', votes: 35 },
                            { value: 3, text: 'Angular', votes: 30 },
                            { value: 4, text: 'Other', votes: 10 } 
                        ],
                        finalResults: false,
                        showResults: false,
                        multiple: false,
						customId: 1
                    }
                }
            },
            methods: {
                addVote: function(obj){
                    console.log('You voted ' + obj.value + '!');
                }
            }
};



</script>
<style>
</style>