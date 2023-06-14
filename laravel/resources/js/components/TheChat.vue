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
            <li class=" bg-indigo-500" v-for="message in messages.data"><p>{{ message.username }}: {{message.message}}</p></li>
            
          </ul>
        </div>
        <div class="card-footer">
          <div class="input-group">
            <input id="btn-input" type="text" name="message" class="form-control input-sm" placeholder="Type your message here..." 
            v-model="newMessage" @keyup.enter="sendMessage"/>
            <span class="input-group-btn">
              <BaseButton class="ml-6" text="Envoyer" @click="sendMessage" role="principal"/>
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
import { onMounted } from "vue";
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
 
  });


/* //GET request to the messages route in our Laravel server to fetch all the messages
            await axios.get("/messages").then((response) => {
                //Save the response in the messages array to display on the chat view
                // messages.value = response.data;
                messages = response.data;
            }); */


             /* this.messages.push({
                message: newMessage.value,
                user: props.user, 
    });*/





// const messages = ref([{
//   user: { name: "Admin" },
//   message: "Welcome to the chat!"
// }]);

const messages = ref([]);
const newMessage = ref("");
   
const emit = defineEmits(["messagesent"]);
/* const messagesWritten = ref([""]); */


  
function sendMessage() {
  console.log("sendMessage");
      //Emit a "messagesent" event including the user who sent the message along with the message content
             //user: props.user,
      //newMessage is bound to the earlier "btn-input" input field
      //messagesWritten.push(newMessage.value); 
      //Clear the input
  newMessage.value = "";

 // console.log(messagesWritten);
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
