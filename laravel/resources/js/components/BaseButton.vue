<template>
    <div :class="['base-button', roleClass]">
        <button class="text-center flex items-center justify-center p-6 cursor-pointer h-10" @click="clickHandler">
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
    computed: {
        roleClass() {
            return `role-${this.role}`;
        },
    },
    methods: {
        async insertChosenSong() {
            try {
                const response = await axios.get('/insertChosenSong', {
                    params: {
                        keyword: this.keyword,
                    },
                });
                this.songs = response.data;
            } catch (error) {
                console.error(error);
            }
        },
    }
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

.role-secondaire {
  
      @apply bg-svg;
    
}
  .role-inactif {
  
      @apply bg-gradient-to-t from-bleu-clair via-middle-rose to-rose opacity-50 text-gray-500 rounded-md;
    
}



</style>
