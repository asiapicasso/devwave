<template>
    <div>
        <div class="box-shadow"> {{ post[0].title +  " " + post[0].score }} 
        <button id="upvote" @click="upvote" :class="{ active: post[0].voteType === 1 }"> Upvote </button>
        <button id="downvote" @click="downvote" :class="{ active: post[0].voteType === -1 }"> Downvote </button>
        </div><br>
    </div>
</template>

<script>
export default {
    name: "BaseButton",
    data() {
        return {
            post: [
                {
                    title: 'Devil Dance Floor - Flogging Molly',
                    score: 0,
                },
                {
                    title: 'Woow - La rappresentante di lista',
                    score: 0,
                },
                {
                    title: 'The Pretender - Foo Fighters',
                    score: 0,
                },
            ],
        };
    },
    methods: {
        upvote() {
                this.post[0].score++;
            },
        
        downvote() {
                this.post[0].score--;
        },
    },
};

</script>

<style scoped>
.box-shadow {
    @apply shadow-[0px_20px_20px_10px_#fed7d7]
}

.button:hover {
    @apply bg-pink-700;
}

#upvote.active {
    background: orangered;
    color: white;
}

#downvote.active {
    background: rgb(119, 119, 236);
    color: white;
}
</style>