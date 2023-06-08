<template>
    <small class="justify-items-center">
        <input class="flex-1 w-64 border border-gray-300 rounded-md p-2 focus:outline-none focus:border-blue-500"  type="text" v-model="keyword" placeholder="Cherche ta chanson..." />
        <ul v-if="Songs.length > 0">
            <li v-for="song in Songs" :key="song.id">{{ song.title }}</li>
        </ul>
    </small>
</template>

<script>
import axios from 'axios';

export default {
    name: "BaseInput",
     data() {
        return {
            keyword: null, 
            Songs: [],
        };
    },
    watch: {
        keyword(after, before) {
            this.getSong();
        },
    },
    methods: {
        // getResults() {
        //     axios.post('/getSong', {
        //             keyword: this.keyword,
        //     })
        //     .then((response) => {
        //         this.Songs = response.data;
        //     })
        //     .catch((error) => {
        //         console.log(error);
        //     });
        // },
        async getSong() {
            const response = await axios.post('song/getSong', {
                keyword: this.keyword,
            });
            this.Songs = response.data;
        },
    }
}

</script>

<style scoped>
</style>
