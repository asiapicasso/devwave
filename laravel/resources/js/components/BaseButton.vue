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
    margin : 20px;
}

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

.role-secondaire {
  
      @apply bg-svg;
    
}
  .role-inactif {
  
      @apply bg-gradient-to-t from-bleu-clair via-middle-rose to-rose opacity-50 text-gray-500 rounded-md;
    
}

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
