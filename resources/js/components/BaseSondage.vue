<template>
    <!--Ajout de cette ligne-->
    
    
<div class=" m-5 sm:m-5 xl:m-56 vue-poll border-2 rounded-xl border-black p-0">
    <!-- /* afficher la question */ -->
    <h3  :class="bgColor" class="qst border-b-2 border-black rounded-t-xl h-20 flex items-center justify-left p-6 m-0" v-html="question"></h3>
        <div class="ans-cnt p-0 m-0">
            <div v-for="(a,index) in calcAnswers" :key="index" :class="{ ans: true, [a.custom_class]: (a.custom_class) }">
                <template v-if="!finalResults"> 
                    <div v-if="!visibleResults" class="h-12 m-6" :class="{ 'ans-no-vote noselect': true, active: a.selected }" @click.prevent="handleVote(a)" >
                        <input class="border-grayPt " type="radio" :name="customId" :id="customId + '-' + index" :value="a.value" v-model="a.selected"  :checked="a.selected" />
                        <span class="txt-black" v-html="a.text"></span>
                    </div>      
                    <div v-else :class="{ 'ans-voted': true, selected: a.selected }" class="flex flex-no-wrap justify-between flex items-center justify-left rounded-md h-12 m-6 border-2 border-grayPt" >
                        <div>
                        <input class="radio-button ml-4 mr-4 bg-red border-grayPt" type="radio" :name="customId" :id="customId + '-' + index" :value="a.value" v-model="a.selected" />
                        <span class="txt " v-html="a.text"></span>
                    </div>     
                        <span v-if="a.percent" class="percent" v-text="a.percent"></span>                                                    
                    </div>

                    <span class="bg" :style="{ width: visibleResults ? a.percent : '0%' }"></span>
                </template>
                <template v-else>
                    <div class="ans-voted final">
                        <span v-if="a.percent" class="percent" v-text="a.percent"></span>                  
                        <span class="txt" v-html="a.text"></span>                                       
                    </div>
                    <span :class="{ bg: true, selected: mostVotes == a.votes }" :style="{ width: a.percent }"></span>
                </template>
                
            </div>
        </div>
        <div class="votes flex justify-center mb-4" v-if="showTotalVotes && (visibleResults || finalResults)" v-text="totalVotesFormatted + ' votes'"></div>
        
        <template v-if="!finalResults && !visibleResults && multiple && totalSelections > 0">
             <a href="#" @click.prevent="handleMultiple" class="submit" v-text="submitButtonText"></a>
        </template>
       
    </div>
</template>

<script>

    export default{
        name: 'Poll',
        props: {
            question: {
                type: String,
                required: true
            },
            answers: {
                type: Array,
                required: true
            },
            showResults: {
                type: Boolean,
                default: false
            },
            showTotalVotes: {
                type: Boolean,
                default: true
            },
            finalResults: {
                type: Boolean,
                default: false
            },
            multiple: {
                type: Boolean,
                default: false
            },
            submitButtonText: {
                type: String,
                default: 'Submit'
            },
            customId: {
                type: Number,
                default: 0
            },
            bgColor: {
      type: String,
      default: "bg-jaune-fonce",
    },
        },
        data(){
            return{
                visibleResults: JSON.parse(this.showResults)
            }
        },
        computed: {           
            totalVotes(){
                let totalVotes = 0
                this.answers.filter(a=>{
                    if (!isNaN(a.votes) && a.votes > 0)
                        totalVotes += parseInt(a.votes)
                })
                return totalVotes
            },  
            totalVotesFormatted(){
                 return this.totalVotes.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            },
            mostVotes(){
                let max = 0
                this.answers.filter(a=>{
                    if (!isNaN(a.votes) && a.votes > 0 && a.votes >= max)
                        max = a.votes
                })
                
                return max
            },
            calcAnswers(){
                               
                if (this.totalVotes === 0)
                    return this.answers.map(a=>{
                        a.percent = '0%'
                        return a
                    })                    
                
                //Calculate percent
                return this.answers.filter(a=>{
                    if (!isNaN(a.votes) && a.votes > 0)
                        a.percent = ( Math.round( (parseInt(a.votes)/this.totalVotes ) * 100) ) + '%'
                    else
                        a.percent =  '0%'
                                        
                    return a
                })
            },
            totalSelections(){
                return this.calcAnswers.filter(a => a.selected).length
            }
        },
        methods: {
            handleMultiple(){
                
                let arSelected = []
                this.calcAnswers.filter(a=>{
                    if (a.selected){
                        a.votes++
                        arSelected.push({ value: a.value, votes: a.votes })
                    }
                })
                
                this.visibleResults = true
                
                let obj =  { arSelected: arSelected , totalVotes: this.totalVotes }
                
                if (this.customId)
					obj.customId = this.customId
                
                this.$emit('addvote', obj)
            },
            handleVote(a){ //Callback
                
                if (this.multiple){
                    
                    if (a.selected === undefined)
                        console.log("Please add 'selected: false' on the answer object")
                                        
                    a.selected = !a.selected
                    return
                }else {
                    a.votes++;
                    a.selected = true;
                    this.visibleResults = true;

                    let obj = {
                        value: a.value,
                        votes: a.votes,
                        totalVotes: this.totalVotes
                    };

                    if (this.customId) {
                        obj.customId = this.customId;
                    }

                    this.$emit('addvote', obj);
                    }
            }
        }
    }

</script>

<style>

    .vue-poll{        
      font-family: 'Avenir', Helvetica, Arial, sans-serif;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      color: #2c3e50;
    }
    
    .vue-poll .noselect {
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }
    
    .vue-poll .qst{
        font-weight: normal;
    }
    .vue-poll .ans-cnt{
         margin: 20px 0;   
    }
    .vue-poll .ans-cnt .ans{
        position: relative;
        margin-top: 10px;
    }
    .vue-poll .ans-cnt .ans:first-child{
        margin-top: 0;
    }
    
    .vue-poll .ans-cnt .ans-no-vote{
        text-align: center;
        border: 2px solid #D4D2E0;
        box-sizing: border-box;
        border-radius: 5px;
        cursor:pointer; 

        transition: background .2s ease-in-out;
        -webkit-transition: background .2s ease-in-out;
        -moz-transition: background .2s ease-in-out;
    }
    
    .vue-poll .ans-cnt .ans-no-vote .txt{
        color: #77C7F7;
        transition: color .2s ease-in-out;
        -webkit-transition: color .2s ease-in-out;
        -moz-transition: color .2s ease-in-out;
    }
    
    .vue-poll .ans-cnt .ans-no-vote.active{
        background: #77C7F7;
    }
    
    .vue-poll .ans-cnt .ans-no-vote.active .txt{
        color: #fff;
    }
    
    .vue-poll .ans-cnt .ans-voted{
        padding: 5px 0;
    }
    
    .vue-poll .ans-cnt .ans-voted .percent,
    .vue-poll .ans-cnt .ans-voted .txt{
        position: relative;
        z-index: 1;
    }
    .vue-poll .ans-cnt .ans-voted .percent{
        font-weight: bold;
        min-width: 51px;
        display: inline-block;

    }
	
	.vue-poll .ans-cnt .ans-voted.selected .txt:after{
		margin-left: 10px;
        content:'✔';
	}


    

           
    .vue-poll .ans-cnt .ans .bg{
        position: absolute;
        width: 0%;
        top: 0;
        left: 1.5rem;        bottom: 0;
        z-index: -1;
        background-color: #C0F6FC;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        transition: all .3s cubic-bezier(0.5,1.2,.5,1.2);
        -webkit-transition: all .3s cubic-bezier(0.5,1.2,.5,1.2);
        -moz-transition: all .3s cubic-bezier(0.5,1.2,.5,1.2);
    }
    
    .vue-poll .ans-cnt .ans .bg.selected{
        background-color: #77C7F7;
    }
    
    .vue-poll .votes{
        font-size: 14px;
        color:#8899A6
    }
    
    .vue-poll .submit{
        display: block;
        text-align: center;
        margin: 0 auto;
        max-width: 80px;
        text-decoration: none;
        background-color: #41b882;
        color:#fff;
        padding: 10px 25px;
        border-radius: 5px;
        
    }
    .ans-no-vote {
    display: flex;
    align-items: center;
    cursor: pointer;
    }

    .ans-no-vote input[type="radio"] {
    margin-right: 1em;
    margin-left : 1em;

    }

    .ans-no-vote .txt {
    flex-grow: 1;
    }
</style>