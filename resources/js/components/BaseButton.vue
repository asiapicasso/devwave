<template>
    <div :class="['base-button', roleClass]">
        <button
            class="h-8 w-auto px-4 m-2 text-center text-sm text-[#211F2D] flex items-center justify-center cursor-pointer focus:shadow-outline "
            @click="clickHandler">
            <span v-if="icon" class="button-icon">
                <img :src="icon" alt="Button Icon" />
            </span>
            <p class="button-text">{{ text }}</p>
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
            required: false,
        },
        icon: {
            type: String,
            default: null,
        },
        role: {
            type: String,
            default: "principal",
        },
    },
    methods: {
        clickHandler() {
            this.$emit("clickHandler");
        },
    },
    computed: {
        roleClass() {
            return `role-${this.role}`;
        },
    },

};
</script>

<style scoped>
.role-principal {

    @apply bg-gradient-to-t from-bleu-clair via-middle-rose to-rose rounded-md;
    color: black;

}

.bg-svg {
    background-image: url('../../assets/CTA-secondaire.svg');
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100%;
}

.bg-svg-gris {
    background-image: url('../../assets/fondGris-1.png');
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100%;
}

.role-secondaire {
    @apply bg-svg;
}

.role-secondairegris {
    @apply bg-svg-gris;
}

.role-inactif {

    @apply bg-gradient-to-t from-bleu-clair via-middle-rose to-rose opacity-50 text-gray-500 rounded-md;

}
</style>
