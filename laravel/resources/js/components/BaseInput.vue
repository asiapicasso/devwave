<template>
    <div class="base-input" @mouseleave="closeList">
          <input
          class="w-full border border-gray-300 rounded-md p-2 focus:outline-none focus:border-blue-500"
          type="text"
          v-model="keyword"
          placeholder="J'veux cette musique..."
          @keydown.enter="addChosenSongOnEnter"
          @song-selected="selectSong"
        />
        <ul class="z-10 list-none max-h-36 overflow-y-auto p-0 m-0" v-if="songs.length > 0">
            <li v-for="song in songs.slice(0, 7)" :key="song.id" class="px-4 py-2 cursor-pointer hover:bg-gray-200" @click="selectSong(song)" @keydown.enter="keyEnter">
                {{ song.title }} - {{song.name}}
            </li>
        </ul>
    </div>
</template>

<script>
import axios from 'axios';
import BaseButton from './BaseButton.vue';
import BaseVoteMusique from './BaseVoteMusique.vue';

export default {
    name: "BaseInput",
    components: {
        BaseButton,
        BaseVoteMusique,
    },
    props: {
        keyEnter: {
            type: Function,
            required: false,
        },
        handleSongSelected: {
            type: Function,
            required: false,
        },
    },
    data() {
        return {
            keyword: null,
            songs: [],
            selectedSong: null,
        };
    },
    watch: {
        keyword(after, before) {
            this.getSong();
        },
    },
    methods: {

        keyEnter() {
            this.$emit("keyEnter");
            },

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

        // Lorsque la touche "Enter" est enfoncée
        addChosenSongOnEnter(event) {
            if (event.key === 'Enter') {
                if (this.selectedSong) {
                   this.$emit("song-selected", this.selectedSong);
                }
            }
        },

        selectSong(song) {
            this.keyword = `${song.title} - ${song.name}`;
            this.selectedSong = song; // Mise à jour de la chanson sélectionnée
            this.$emit("song-selected", song);
            this.songs = []; // Ferme la liste
        },

        handleEnter() {
            if (this.songs.length > 0) {
                this.selectSong(this.songs[0]);
            }
        },
        
         closeList() {
            this.songs = []; // ferme la liste au retrait de la souris
        },
        
    },
};
</script>

<style scoped>
.base-input {
    @apply flex flex-col items-center;
}

</style>
