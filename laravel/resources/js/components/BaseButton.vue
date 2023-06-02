<template>
    <div :class="['base-button', roleClass]">
        <button @click="clickHandler">
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
        role: {
            type: String,
            default: "principal",
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

/* Styles for different roles */
  .role-principal {
    @apply bg-gradient-to-t from-bleu-clair via-middle-rose to-rose;
    @apply text-black;
    @apply rounded-md;
  }


.role-secondaire {
    background-color: #00ff00;
    color: #000000;
}

.role-inactif {
    background-color: #0000ff;
    color: #ffffff;
}
</style>
