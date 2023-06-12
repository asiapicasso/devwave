<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Message;
use Illuminate\Support\Facades\Auth;

class ChatsController extends Controller
{
    /* public function __construct()
    {
        $this->middleware('auth');
    } */

    /* public function index()
    {
        //return view('chat');
    }
 */
    public function fetchMessages()
    {
        return Message::with('user')->get();
    }

    public function sendMessage(Request $request)
    {//controler le message reçu 
        $user = Auth::user();
        $message = $user->messages()->create([
            'message' => $request->input('message')
        ]);
        //broadcast pusher 
        return ['status' => 'Message Sent!'];
    }
}
