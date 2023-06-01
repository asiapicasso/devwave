<template>
    <div>
        <h1>Page Musique</h1>
        <div class="flex flex-col">
        <BaseButton v-for="(item, index) in post" :key="index"
        :text="item.title"  
        @upvote="handleUpvote(index)" @downvote="handleDownvote(index)" 
        iconUp= '<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><title/><g data-name="Layer 2" id="Layer_2"><path d="M1,16A15,15,0,1,1,16,31,15,15,0,0,1,1,16Zm2,0A13,13,0,1,0,16,3,13,13,0,0,0,3,16Z"/><path d="M10.41,19.87,16,14.29l5.59,5.58a1,1,0,0,0,1.41,0h0a1,1,0,0,0,0-1.41L16.64,12.1a.91.91,0,0,0-1.28,0L9,18.46a1,1,0,0,0,0,1.41H9A1,1,0,0,0,10.41,19.87Z"/></g></svg>' 
        iconDown='<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><title/><g data-name="Layer 2" id="Layer_2"><path d="M16,1A15,15,0,1,1,1,16,15,15,0,0,1,16,1Zm0,28A13,13,0,1,0,3,16,13,13,0,0,0,16,29Z"/><path d="M10.41,12.13,16,17.71l5.59-5.58a1,1,0,0,1,1.41,0h0a1,1,0,0,1,0,1.41L16.64,19.9a.91.91,0,0,1-1.28,0L9,13.54a1,1,0,0,1,0-1.41H9A1,1,0,0,1,10.41,12.13Z"/></g></svg>' 
        :score="item.score"/>
    </div>
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
