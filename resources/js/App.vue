<script setup>
import { ref } from "vue";
import { watch } from "vue";
import BaseHeader from "./components/BaseHeader.vue";
import BasePlayer from "./components/BasePlayer.vue";
import BaseNav from "./components/BaseNav.vue";
import BaseFormSign from "./components/BaseFormSign.vue";



const isConnected = ref(true);

      //Si vous modifier cette variable en true, vous passez comme si vous étiez connecté.





</script>

<template>
    <BaseHeader class="sticky top-0 w-full z-30" />
    <div class="mb-40"><router-view class="contenu pb-24" :class="{ notConnected: !isConnected }"></router-view></div>
    <div class="formContainer" v-if="!isConnected">
        <BaseFormSign @submit="changeConnectedStatus" />
    </div>

    <div class="fixed bottom-0 z-30">
        <BasePlayer v-if="$route.path !== '/pageLiveVoiture'" class="z-20 w-screen" />
        <BaseNav v-if="$route.path !== '/pageLiveVoiture'" />
    </div>
</template>

<style scoped>
.notConnected {
    filter: blur(5px);
}

.formContainer {
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    top: 30%;
    z-index: 100;
}
</style>
