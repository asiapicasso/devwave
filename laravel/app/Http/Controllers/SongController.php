<?php

namespace App\Http\Controllers;

use App\Models\ChosenSong;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Song;
use Illuminate\Support\Facades\Auth;

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
    $data = Song::where('title', 'LIKE', '%' . $keyword . '%')->with('album.artist')->orderBy('song.title', 'asc')->get();
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
        $validatedData = $request->validate([
            // 'title' => 'required',
        ]);
        $song = new Song();
        $song = Song::with('chosen_song')->get();
        $songtitle = $song->title('title');
        $song->votes = $request->input('votes', 0);
        // $song->album_id = $request->input('album_id');
        $song->save();

        Song::create($validatedData);

        return redirect()->back()->with('success', 'Chanson ajouté avec succès');
    }


    public function addChosenSong(Request $request)
    {
        $song->title = $request->input('title');
        $song->nb_vote = $request->input('nb_vote');
        //$userId = Auth::id();

        // Check if the song_id is already present in the ChosenSong table for this user
        // $existingChosenSong = ChosenSong::where('song_id', $songId)
        //     ->where('user_id', $userId)
        //     ->first();

        // if ($existingChosenSong) {
        //     return redirect()->back()->with('error', 'The song is already present in the list of chosen songs.');
        // }

        // If the song_id is not already present, add it to the ChosenSong table
        $chosenSong = new ChosenSong();
        $chosenSong->song_id = $songId;

        $chosenSong->title = $songTitle;
        //$chosenSong->user_id = $userId;
        //$chosenSong->date = Carbon::now();
        $chosenSong->nb_vote = 1;
        $chosenSong->save();
        $dd = $chosenSong;

        //return redirect()->back()->with('success', 'Song added successfully.');
    }


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