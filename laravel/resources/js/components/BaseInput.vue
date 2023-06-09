<template>
    <div class="base-input">
        <input class="w-full border border-gray-300 rounded-md p-2 focus: outline-none focus:border-blue-500;
    margin-bottom: 10px;" type="text" v-model="keyword" placeholder="J'veux cette musique..." />
        <ul class="list-none max-h-36 overflow-y-auto p-0 m-0" v-if="songs.length > 0">
            <li v-for="song in songs.slice(0, 7)" :key="song.id" class="result-item">
                {{ song.title }} - {{ song.album }}
            </li>
        </ul>
    </div>
</template>

<script>
import axios from 'axios';

export default {
    name: "BaseInput",
    data() {
        return {
            keyword: null,
            songs: [],
        };
    },
    watch: {
        keyword(after, before) {
            this.getSong();
        },
    },
    methods: {
        async getSong() {
            try {
                const response = await axios.get('/getSong', {
                    params: {
                        keyword: this.keyword,
                    },
                });
                this.songs = response.data;
            } catch (error) {
                console.error(error);
            }
        },
    },
};
</script>

<style scoped>
.base-input {
    @apply flex flex-col items-center;
}


.result-item {
    @apply px-4 py-2 cursor-pointer;
}

.result-item:hover {
    @apply bg-gray-200;
}
</style>
