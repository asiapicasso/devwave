<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Message;
use Illuminate\Support\Facades\Auth;
use App\Events\MessageSent;
use Illuminate\Support\Facades\DB;

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
        $messages = DB::table('messages')
        ->join('users', function($join)
        {
            $join->on('users.id', '=', 'messages.user_id');
        })
        ->get();
        //$messages = Message::with('users')->get();
        return response()->json($messages);
    }

    public function sendMessage(Request $request)
    {//controler le message reçu 
        //$user = Auth::user();
        $message = $user->messages()->create([
            'message' => $request->input('message')
        ]);
        broadcast(new MessageSent($user, $message))->toOthers();
        return ['status' => 'Message Sent!'];
    }

}
