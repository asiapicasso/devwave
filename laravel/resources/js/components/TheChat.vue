<template>

<div class="container">
    <div class="card">
       <!--  <h1 >Chat</h1> -->
        <!-- <div>
            <BaseMessage  v-for="message in messages":messages="messages"></BaseMessage>
        </div> -->
        <div>
          <!--<div>{{ messages.data }}</div>-->
          <ul>
    <li class="flex" v-for="message in messages.data" :key="message.id">
      <img class="w-10 h-10" :src="getImagePath(message.picture_path)" alt="Profile Image" />
      <span>{{ message.username }}: {{ message.message }}</span>
    </li>
    <li v-if="messages.data === 0">
      Aucun message trouvé.
    </li>
  </ul>
          <template v-if="messagesWritten.length > 0">
      <ul>
        <li class="bg-indigo-500" v-for="message in messagesWritten">
          <p>{{ message.user }}: {{ message.message }}</p>
        </li>
      </ul>
    </template>
        </div>
        <div class="card-footer">
          <div class="input-group">
            <input id="btn-input" type="text" name="message" class="form-control input-sm" placeholder="T'en penses quoi?" 
            v-model="newMessage" @keyup.enter="sendMessage"/>
            <span class="input-group-btn">
              <BaseButton class="ml-6 btnSend" text="Envoyer" @click="sendMessage" role="principal"/>
              <!-- <button class="btn btn-primary btn-sm" id="btn-chat" @click="addMessage">
                Send
              </button> -->
            </span>
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




const props = defineProps(["user"]);

async function fetchMessages() {
  console.log("fetchMessages")
  

  try {
    axios.get('/fetchMessages').then((response) => {
      messages.value = response;
    });
  }
  catch (error) {
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
 
async function importProfileImages() {
  for (let i = 1; i <= 10; i++) {
        const imagePath = `../../assets/profils-${i.toString().padStart(2, '0')}.png`;
        const image = await import(imagePath);
        profileImages.push({
          path: image.default,
          fileName: `profils-${i.toString().padStart(2, '0')}.png`,
        });
      }
    }
  
    function getImagePath(fileName) {
      const image = profileImages.find((img) => img.fileName === fileName);
      return image ? image.path : '';
    }

  function sendMessage() {
    console.log("sendMessage");
    const message = {
      user: 'Moi',
      message: newMessage.value,
   };
    messagesWritten.value.push(message);
    newMessage.value = ''; // Clear the input field

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
  .btnSend{
    padding: 5px 10px;
    text-align: center;
    display: inline-block;
    font-size: 16px;
  }
</style>