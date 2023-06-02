<template>
    <div class = "text-3xl font-bold bg-gradient-to-t from-bleu-clair via-middle-rose to-rose flex items-end py-2 px-4 rounded">
    <button class="base-button" @click="clickHandler">
        <span v-if="icon" class="button-icon">
            <img :src="icon" alt="Button Icon" />
        </span>
        <span class="button-text">{{ text }}</span>
    </button>
    </div>
</template>

<script>
export default {
    name: "BaseButton",
    props: {
        text: {
            type: String,
            required: true,
        },
        clickHandler: {
            type: Function,
            required: true,
        },
        icon: {
            type: String,
            default: null,
        },
    },
};
</script>

<style scoped>
.base-button {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0.5rem 1rem;
    cursor: pointer;
}

.button-icon {
    margin-right: 0.5rem;
}

.button-text {
    font-size: 1rem;
}
</style>
