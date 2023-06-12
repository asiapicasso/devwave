<template>
<div class="container">
    <div class="card">
        <div class="card-header">Chats</div>
        <div class="card-body">
            <BaseMessage :messages="messages"></BaseMessage>
        </div>
        <div class="card-footer">
          <div class="input-group">
            <input id="btn-input" type="text" name="message" class="form-control input-sm" placeholder="Type your message here..." 
            v-model="newMessage" @keyup.enter="addMessage"/>
            <span class="input-group-btn">
              <button class="btn btn-primary btn-sm" id="btn-chat" @click="addMessage">
                Send
              </button>
            </span>
          </div>
        </div>
    </div>
</div>
  
</template>
<script setup>
import BaseMessage from "./BaseMessage.vue";
import { ref, defineProps, defineEmits } from "vue";
import Echo from "laravel-echo";
const props = defineProps(["user"]);
  //Takes the "user" props from <chat-form> … :user="{{ Auth::user() }}"></chat-form> in the parent chat.blade.php.
 
const messages = ref([{
  user: { name: "Admin" },
  message: "Welcome to the chat!"
}]);

const newMessage = ref("");
   
 const emit = defineEmits (["messagesent"]);
  
 function sendMessage() {
      //Emit a "messagesent" event including the user who sent the message along with the message content
      emit("messagesent", {
        user: props.user,
      //newMessage is bound to the earlier "btn-input" input field
        message: newMessage.value,
      });
      //Clear the input
     newMessage.value = "";
 }

 function fetchMessages() {
            //GET request to the messages route in our Laravel server to fetch all the messages
            axios.get("/messages").then((response) => {
                //Save the response in the messages array to display on the chat view
                messages.value = response.data;
            });

            window.Echo.public("chat").listen("MessageSent", (e) => {
             messages.value.push({
        message: e.message.message.value,
        user: e.user,
    });
  })

        }

 function addMessage() {
            //Pushes it to the messages array
            messages.value.push(newMessage.value);
            //POST request to the messages route with the message data in order for our Laravel server to broadcast it.
            axios.post("/messages", { message: newMessage.value }).then((response) => {
                console.log(response.data);
            });
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


function echo (){
  
};
</script>
