<template>
    <div class="container">
        <div class="card">
            <div>
                <ul>
                    <li class="flex items-center mx-2" v-for="message in messages.data" :key="message.id">
                        <img class="w-10 h-10" :src="getImagePath(message.picture_path)" alt="Profile Image"/>
                        <span class="text-Rose-principale">
                            {{ message.username }}:
                        </span>
                        <span>&nbsp;{{ message.message }}</span>
                    </li>
                    <li v-if="messages.data === 0">Aucun message trouvé.</li>
                </ul>
                <template v-if="messagesWritten.length > 0">
                    <ul>
                        <li class="flex flex-row-reverse items-center mx-3" v-for="message in messagesWritten">
                            <img
                                class="w-10 h-10"
                                :src="getImagePath(message.picture_path)"
                                alt="Profile Image"/>
                            <span class="text-bleuFonce+2" >&nbsp;:{{ message.user }}</span>
                            <span class="flex items-center">{{ message.message }}
                              <span v-if="message.icon_path">
                                <img class="h-10 w-8" :src="message.icon_path" alt="Icon"/>
                              </span>
                            </span>
                        </li>
                    </ul>
                </template>
            </div>
            <div class="flex fixed w-full bottom-32 bg-gris-1 bg-opacity-75 items-center" >
                 
                    <input
                        id="btn-input"
                        type="text"
                        name="message"
                        class="pl-2 form-control input-sm ml-3 mr-3 flex-grow"
                        placeholder="T'en penses quoi?"
                        v-model="newMessage"
                        @keyup.enter="sendMessage"/>
                    <div class="flex items-center">
                      <span class="input-group-btn mr-2">
                        <button
                            class="btnSend w-9 bg-gradient-to-t from-bleu-clair via-middle-rose to-rose rounded-md"
                            @click="sendMessage">
                            <img class="ml-1.5 h-8 w-7" src="../../assets/envoyer.png"/>
                          </button>
                    </span>
                      <div class="flex">
                        <button  @click="selectIcon(emojiSaucisse)">
                          <img src="../../assets/emojis-reaction-saucisse.png" alt="emojis saucisse" class="h-12 w-10 -mx-1" />
                        </button>
                        <img src="../../assets/emojis-reaction-soleil.png" alt="emojis saucisse" class="h-12 w-10 -mx-1"
                        @click="selectIcon(emojiSoleil)">
                        <img src="../../assets/emojis-reaction-punch.png" alt="emojis saucisse" class="h-12 w-10 "
                        @click="selectIcon(emojiPunch)">
                      </div>
                    </div>
                  
            </div>
        </div>
    </div>
</template>
<script setup>
import BaseButton from "./BaseButton.vue";
import axios from "axios";
import { onMounted, reactive } from "vue";
import BaseMessage from "./BaseMessage.vue";
import { ref, defineProps, defineEmits } from "vue";
import Echo from "laravel-echo";
import Pusher from "pusher-js";

import emojiSoleil from "../../assets/emojis-reaction-soleil.png";
import emojiPunch from "../../assets/emojis-reaction-punch.png";
import emojiSaucisse from "../../assets/emojis-reaction-saucisse.png";

const props = defineProps(["user"]);

const selectedIcon = ref();

function selectIcon(icon) {
  selectedIcon.value = icon;
}


async function fetchMessages() {
    console.log("fetchMessages");

    try {
        axios.get("/fetchMessages").then((response) => {
            messages.value = response;
        });
    } catch (error) {
        console.log(error);
    }
}

onMounted(() => {
    console.log("onMounted");
    fetchMessages();
    importProfileImages();
    console.log(profileImages);
});

const messages = ref([]);
const newMessage = ref("");

const messagesWritten = ref([]);
let profileImages = [];
let icones = [emojiSoleil, emojiPunch, emojiSaucisse];
console.log(icones)


async function importProfileImages() {
    for (let i = 1; i <= 16; i++) {
        const imagePath = `../../assets/profils-${i
            .toString()
            .padStart(2, "0")}.png`;
        const image = await import(imagePath);
        profileImages.push({
            path: image.default,
            fileName: `profils-${i.toString().padStart(2, "0")}.png`,
        });
    }
}

function getImagePath(fileName) {
    const image = profileImages.find((img) => img.fileName === fileName);
    return image ? image.path : "";
}

function sendMessage() {
    console.log("sendMessage");
    const message = {
        user: "Moi",
        message: newMessage.value,
        picture_path: "profils-08.png",
        icon_path: selectedIcon.value,
    };
    messagesWritten.value.push(message);
    newMessage.value = ""; // Clear the input field
  

    console.log(messagesWritten.value);
}

function addMessage() {
    //Pushes it to the messages array
    messages.push(newMessage.value);
    //POST request to the messages route with the message data in order for our Laravel server to broadcast it.
    axios.post("/messages", { message: newMessage.value }).then((response) => {
        console.log(response.data);
    });

    console.log(messages.value);

    sendMessage();
    fetchMessages();

    console.log(messages.value);
}
/* ,
        //Receives the message that was emitted from the ChatForm Vue component
        addMessage(message) {
            //Pushes it to the messages array
            this.messages.push(message);
            //POST request to the messages route with the message data in order for our Laravel server to broadcast it.
            axios.post("/messages", message).then((response) => {
                console.log(response.data);
            });
        } */
</script>
<style scoped>
.btnSend {
    text-align: center;
    display: inline-block;
    font-size: 16px;
}
</style>
