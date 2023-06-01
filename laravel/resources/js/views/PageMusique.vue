<template>
    <div>
        <h1>Page Musique</h1>

        <BaseButton v-for="(item, index) in post" :key="index" :text="item.title" :score="item.score"
            @upvote="handleUpvote(index)" @downvote="handleDownvote(index)" />
    </div>
</template>

<script>
import { ref } from "vue";
import BaseButton from "@/components/BaseButton.vue";

export default {
    name: "PageMusique",
    components: {
        BaseButton,
    },
    data() {
        return {
            post: [
                {
                    title: "Devil Dance Floor - Flogging Molly",
                },
                {
                    title: "Woow - La rappresentante di lista",
                },
                {
                    title: "The Pretender - Foo Fighters",
                },
            ],
        };
    },
    methods: {
        handleUpvote(index) {
            this.post[index].score.value++;
        },
        handleDownvote(index) {
            this.post[index].score.value--;
        },
    },
};
</script>

<style scoped>
/* Styles for PageMusique component */
</style>
