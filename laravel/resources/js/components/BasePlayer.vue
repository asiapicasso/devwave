<template>
    <div id="player_audio_container" class="w-full h-12"></div>
</template>

<script>
export default {
    async beforeMount() {
        await this.loadExternalScript(
            "https://letterbox-web.srgssr.ch/production/letterbox.js"
        );
        this.letterbox = new window.SRGLetterbox({
            container: "#player_audio_container",
        });
        /*URN*//*urn:rts:audio:3262363*/
        this.letterbox.loadUrn("urn:rts:video:8841634");
    },
    created() {
        this.loadExternalStylesheet(
            "https://letterbox-web.srgssr.ch/production/letterbox.css"
        );
    },
    methods: {
        loadExternalScript(src) {
            return new Promise((resolve, reject) => {
                const script = document.createElement("script");
                script.src = src;
                script.onload = () => resolve(script);
                script.onerror = (error) => reject(error);
                document.head.appendChild(script);
            });
        },
        loadExternalStylesheet(href) {
            const link = document.createElement("link");
            link.href = href;
            link.rel = "stylesheet";
            document.head.appendChild(link);
        },
    },
};
</script>
<style>
.vjs-control-bar {
    background-color: #FFFFE5 !important;
}
.vjs-srgssr-skin .vjs-play-progress{
    background-color: #034249 !important;
}
.vjs-current-time-display{
    color: #034249 !important;
}
vjs-play-progress vjs-slider-bar::before{
    background-color: #034249 !important;
}

span.vjs-icon-placeholder {
color: #034249 !important;
}

div.vjs-progress-holder.vjs-slider.vjs-slider-horizontal{
    background-color: #D4D2E0 !important;
}
div.vjs-play-progress.vjs-slider-bar::before{
    color: #034249 !important;
}
</style>