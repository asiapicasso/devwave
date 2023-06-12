 <!-- resources/views/chat.blade.php -->
@extends('welcome')
<!-- @extends('welcome') -->
@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">Chats</div>
        <div class="card-body">
            <BaseMessage :messages="messages"></BaseMessage>
        </div>
        <div class="card-footer">

            <TheChat v-on:messagesent="addMessage" :user="{{ Auth::user() }}"></TheChat>
        </div>
    </div>
</div>
@endsection
