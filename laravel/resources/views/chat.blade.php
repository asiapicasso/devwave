 <!-- resources/views/chat.blade.php -->
 @extends('layouts.app')
@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">Chats</div>
        <div class="card-body">
            <base-message :messages="messages"></base-message>
        </div>
        <div class="card-footer">
            <the-chat v-on:messagesent="addMessage" :user="{{ Auth::user() }}"></the-chat>
        </div>
    </div>
</div>
@endsection
