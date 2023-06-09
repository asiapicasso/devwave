<template>
    <div class="base-input" @mouseleave="closeList">
        <input class="w-full border border-gray-300 rounded-md p-2 focus: outline-none focus:border-blue-500;
    margin-bottom: 10px;" type="text" v-model="keyword" placeholder="J'veux cette musique..." />
        <ul class="z-10 list-none max-h-36 overflow-y-auto p-0 m-0" v-if="songs.length > 0">
            <li v-for="song in songs.slice(0, 7)" :key="song.id" class="px-4 py-2 cursor-pointer hover:bg-gray-200" @click="selectSong(song)">
                {{ song.title }} 
                <!-- - {{ song.album.artist.name }}  ca marche paaaaaaaaaaaas-->
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
        closeList() {
            this.songs = []; // ferme la liste au retrait de la souris
        },
        selectSong(song) {
            this.selectedSong = song;
            this.keyword = song.title;
            this.closeList();
        },
        
    },
};
</script>

<style scoped>
.base-input {
    @apply flex flex-col items-center;
}

</style>
