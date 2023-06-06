<template>
    <div class="music-box">

        <div class="flex flex-col">
            <button id="icon-button" class="stroke-pink-500 focus:bg-pink-500" @click="handleUpvote">
                <span id="icon" class="active:bg-white-500" v-html="iconUp"></span>
            </button>
            <span class="button-score">{{ score }}</span>
            <button id="icon-button" @click="handleDownvote">
                <span id="icon" v-html="iconDown"></span>
            </button>
        </div>
        <span class="button-text">{{ text }}</span>
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
.music-box {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 2rem;
    border: 3px solid black;
    padding: 0.3rem;
    border-radius: 0.6rem;
    margin-left: 1.5rem;
    margin-right: 1.5rem;
    margin-top: 1rem;
}

#icon-button {
    padding: 0.5rem;
    border: 1px solid #e5e7eb;
    border-radius: 0.4rem;
    cursor: pointer;
}

#icon {
    display: inline-block;
    width: 1.5rem;
    height: 1.5rem;
}

.button-text {
    font-size: 1rem;
    color: #4a5568;
}

.button-score {
    font-size: 1.25rem;
    font-weight: bold;
    color: #4a5568;
    text-align: center;
}
</style>
