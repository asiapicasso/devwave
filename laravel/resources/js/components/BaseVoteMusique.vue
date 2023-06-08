<template>
    <div class="flex items-center h-34 ml-5 mr-5 mb-5 rounded-xl music-box border border-2 border-black">

        <div class="">
            <div class="flex flex-col mx-4 my-2"> 
                <button id="up" class=" focus:bg-rose" @click="handleUpvote">
                <span id="icon" class="active:bg-white-500" v-html="iconUp"></span>
            </button>
                <div class="flex justify-center button-score ">{{ score }}</div>
                <button id="down" class="focus:bleu-clair" @click="handleDownvote">
                <span id="icon" class="active:bg-white-500" v-html="iconDown"></span>
            </button>
            </div>
        </div>
        <div class="items-center">
            <div class="button-text">{{ text }}</div>
        </div>

    </div>
</template>

<script>
import { ref } from "vue";

export default {
    name: "BaseVoteMusique",
    props: {
        iconUp: {
            type: String,
            required: false,
        },
        iconDown: {
            type: String,
            required: false,
        },
        text: {
            type: String,
            required: true,
        },
    },

    methods: {
        handleUpvote() {
            this.$emit("upvote");
        },
        handleDownvote() {
            this.$emit("downvote");
        },
    },
    // handleUpvote: function () {
    //     this.handleUpvoted = !this.handleUpvote;
    //     this.handleDownvote = false;
    // },
    // handleDownvote: function () {
    //     this.handleDownvote = !this.handleDownvote;
    //     this.handleUpvote = false;
    // },
    setup(props) {
        const score = ref(0);

        const handleUpvote = () => {
            score.value++;
        };

        const handleDownvote = () => {
            score.value--;
        };

        return {
            score,
            handleUpvote,
            handleDownvote,
        };
    },
};
</script>


<style scoped>



#up {
    padding: 0.5rem;
    border: 0.2rem solid #D744EE;
    border-radius: 0.4rem;
    cursor: pointer;
}
#down {
    padding: 0.5rem;
    border: 0.2rem solid #C0F6FC;
    border-radius: 0.4rem;
    cursor: pointer;
}


</style>
