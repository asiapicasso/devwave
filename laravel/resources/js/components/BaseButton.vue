<template>
    <div class="button-box">
        <button class="icon-button" @click="handleUpvote">
            <span class="icon" v-html="iconUp"></span>
        </button>
        <span class="button-text">{{ text }}</span>
        <button class="icon-button" @click="handleDownvote">
            <span class="icon" v-html="iconDown"></span>
        </button>
        <span class="button-score">{{ score }}</span>
    </div>
</template>

<script>
import { ref } from "vue";

export default {
    name: "BaseButton",
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
.button-box {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
    padding: 1rem;
    background-color: #f3f4f6;
    border: 1px solid #e5e7eb;
    border-radius: 0.25rem;
}

.icon-button {
    padding: 0.5rem;
    background-color: #ffffff;
    border: 1px solid #e5e7eb;
    border-radius: 0.25rem;
    cursor: pointer;
}

.icon-button:hover {
    background-color: #edf2f7;
}

.icon {
    display: inline-block;
    width: 1.5rem;
    height: 1.5rem;
    fill: #718096;
}

.button-text {
    font-size: 1rem;
    color: #4a5568;
}

.button-score {
    font-size: 1.25rem;
    font-weight: bold;
    color: #4a5568;
}
</style>
