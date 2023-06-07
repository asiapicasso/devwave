<template>
    <div id="player" class="h-20 shadow-2xl bg-jaune-clair">
        <div class="flex-grow">
            <router-link to="/pagePlayer">
                <div class="grow ml-5" id="info-emission">
                    <p>Nom de l'émission</p>
                    <p>Nom animateurs</p>
                </div>
            </router-link>
        </div>
        <div class="flex-grow-1"> 
            <button @click="togglePlayPause">
                <img :src="playbackIcon" class="h-6 w-6 mr-9" />
            </button>
        </div>
    </div>
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

    align-items: center;
    text-align: left;
}
</style>
