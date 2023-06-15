<?php

namespace App\Http\Controllers;

use App\Models\ChosenSong;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Song;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SongController extends Controller
{


    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $currentUser = Auth::user();

        $songs = Song::with('album')->get();

        return view('reddit', ['songs' => $songs, 'currentUser' => $currentUser]);

    }


    public function getAllSongs()
    {
        // ici on ajoute la table devant title pour spécifier que c'est bien le champs title de song que l'on veut trier et non celui de la relation contenu dans la table album-> title
        $songs = Song::with('album')->orderBy('song.title', 'asc')->get();

        return $songs;

    }
    //fonction utilisée par le composant baseInput pour la recherche de chansons
   public function getSong(Request $request)
    {
    $keyword = $request->input('keyword');
    $data = Song::where('song.title', 'LIKE', '%' . $keyword . '%')
        ->join('album', 'song.album_id', '=', 'album.id')
        ->join('album_artist','album.id', '=', 'album_artist.album_id')
        ->join('artist','album_artist.artist_id', '=', 'artist.id')
        ->orderBy('song.title', 'asc')
        ->get(['song.title', 'album.title', 'artist.name']);
    return response()->json($data);
    }

    // public function getArtist(Request $request)
    // {
    // $artist = Song::with('album.artist.name')->get();

    // }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //$song->title = $request->input('title');
        //$song->nb_vote = $request->input('nb_vote');
        // $validatedData = $request->validate([
            // 'title' => 'required',
        // ]);
        // $song = new Song();
        $song = Song::with('chosen_song')->get();
        
        // $songtitle = $song->title('title');
        // $song->album_id = $request->input('album_id');
        $chosenSong->save();
        //Song::create($validatedData);
        return response()->json($song);
    }


    public function addChosenSong(Request $request)
    {
        $song->title = $request->input('title');
        $song->nb_vote = $request->input('nb_vote');
        //$userId = Auth::id();

        //Check if the song_id is already present in the ChosenSong table for this user
        $existingChosenSong = ChosenSong::
        where('song_id', $songId);
            // ->where('user_id', $userId)
            // ->first();
        if ($existingChosenSong) {
            return response()->json(['error' => 'Cette chanson a déjà été choisie... trouve-en une autre :)']);
        }
        // If the song_id is not already present, add it to the ChosenSong table
        $chosenSong = new ChosenSong();
        $chosenSong->song_id = $songId;

        $chosenSong->title = $songTitle;
        //$chosenSong->user_id = $userId;
        $chosenSong->date = Carbon::now();
        $chosenSong->nb_vote = 1;
        $chosenSong->save();
        return response()->json($song);    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}