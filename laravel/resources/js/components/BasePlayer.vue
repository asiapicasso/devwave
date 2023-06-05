<template>
    <router-link to="/pagePlayer">
        <div id="player" class="h-20 shadow-md bg-jaune-clair">
            <div class="ml-5" id="info-emission">
                <p>Nom de l'émission</p>
                <p>Nom animateurs</p>
            </div>
            <button @click="togglePlayPause">
                <img :src="playbackIcon" class="h-6 w-6 mr-9" />
            </button>
        </div>
    </router-link>
</template>
<script>
import playIcon from "../../assets/Play.svg";
import pauseIcon from "../../assets/Pause.svg";
export default {
    name: "BasePlayer",
    data() {
        return {
            isPlaying: false,
        };
    },
    methods: {
        togglePlayPause() {
            this.isPlaying = !this.isPlaying;
        },
    },
    computed: {
        playbackIcon() {
            return this.isPlaying ? pauseIcon : playIcon;
        },
    },
};
</script>
<style>
#player {
    text-align: center;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    text-align: left;
}
</style>
