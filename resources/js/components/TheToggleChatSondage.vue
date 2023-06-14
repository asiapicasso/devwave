<template>
    <div>
        <div class="sticky top-80 z-30 justify-center bg-bleu-clair flex items-center flex-wrap">
            <button
                @click="showComponentChat"
                :class="{ 'bg-white': showChat }"
                class="flex-1 rounded-l-md text-black focus:outline-none"
            >
                <h2>Chat</h2>
            </button>
            <button
                @click="showComponentSondage"
                :class="{ 'bg-white': showSondage }"
                class="flex-1 rounded-r-md text-black focus:outline-none"
            >
                <h2>Sondages Live</h2>
            </button>
        </div>
        <div>
            <div class="flex">
        <img class="h-6 w-6 m-4" src="https://picsum.photos/200/300" alt="avatar" />
        <p class="mt-4">Animateur</p> 
    </div>
            <TheChat  v-show="showChat" />
            <BaseSondage
                :bgColor="bgColor"
                v-show="showSondage"
                v-bind="options"
                @addvote="addVote"
            />
        </div>
    </div>
</template>
<script>
import TheChat from "./TheChat.vue";
import BaseSondage from "../components/BaseSondage.vue";
export default {
    name: "TheToggleChatSondage",
    components: {
        BaseSondage,
        TheChat,
    },

    data: function () {
        return {
            showChat: true,
            showSondage: false,
            bgColor: "bg-bleu-clair",
            options: {
                question:
                    "Vous avez pensé quoi de l'émission de hier soir ? &#128526",
                answers: [
                    { value: 1, text: "Géniaaal", votes: 53 },
                    { value: 2, text: "Mouais", votes: 35 },
                    { value: 3, text: "Pas d'avis", votes: 30 },
                    { value: 4, text: "Nul plus jamais", votes: 10 },
                ],
                finalResults: false,
                showResults: false,
                multiple: false,
                customId: 1,
                
            },
            
        };
    },
    methods: {
        addVote: function (obj) {
            console.log("You voted " + obj.value + "!");
        },
        showComponentChat() {
            this.showChat = true;
            this.showSondage = false;
        },
        showComponentSondage() {
            this.showChat = false;
            this.showSondage = true;
           this.changeBgColor();
        },
        changeBgColor() {
            const colors = [
                "bg-bleu-clair",
                "bg-rose-clair",
                "bg-jaune-fonce",
                "bg-violet",
            ];

            // Génère un index aléatoire pour sélectionner une couleur
            const randomIndex = Math.floor(Math.random() * colors.length);

            // Met à jour la couleur de fond
            this.bgColor = colors[randomIndex];
        },
    },
};
</script>
