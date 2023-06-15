<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ChosenSong;
use Illuminate\Support\Facades\Auth;

class ChosenSongController extends Controller
{


    /**
     * Display a listing of the resource.
     */
    public function index()<?php

    namespace App\Http\Controllers;
    
    use Illuminate\Http\Request;
    use App\Models\ChosenSong;
    use Illuminate\Support\Facades\Auth;
    use Illuminate\Support\Facades\DB;
    use App\Models\Song;
    use Carbon\Carbon;
    
    class ChosenSongController extends Controller
    {
    
    
        /**
         * Display a listing of the resource.
         */
        public function index()
        {
    
            $currentUser = Auth::user();
    
            $chosenSongs = ChosenSong::with('song')->orderBy('nb_vote', 'desc')->get();
    
            $songController = new SongController();
            $songs = $songController->getAllSongs();
    
            // Extraire les IDs des chansons choisies
            $chosenSongIds = $chosenSongs->pluck('song.id')->toArray();
    
            // Supprimer les chansons choisies de la liste des chansons
            $songs = $songs->except($chosenSongIds);
    
            return view('reddit', ['chosenSongs' => $chosenSongs, 'currentUser' => $currentUser, 'songs' => $songs]);
    
        }
    
        public function store(Request $request){
        $songId = $request->input('song_id');
        $userId = $request->input('user_id');
    
        $existingChosenSong = ChosenSong::where('song_id', $songId)
            ->where('user_id', $userId)
            ->first();
    
        if ($existingChosenSong) {
            return response()->json(['error' => 'Cette chanson a déjà été choisie... trouve-en une autre :)']);
        }
    
        // Retrieve the song with the given songId
        $song = Song::find($songId);
    
        if (!$song) {
            return response()->json(['error' => 'Chanson introuvable.']);
        }
    
        $chosenSong = new ChosenSong();
        $chosenSong->song_id = $songId;
        $chosenSong->user_id = $userId;
        $chosenSong->title = $song->title; // Set the title based on the song
        $chosenSong->date = Carbon::now();
        $chosenSong->nb_vote = 1;
        $chosenSong->save();
    
        return response()->json($chosenSong);
    }
    
    
    
        public function searchForm()
        {
            return view('search.form');
        }
    
        public function search(Request $request)
        {
            $searchTerm = $request->input('search_term');
    
            $chosenSongs = ChosenSong::where('title', 'LIKE', '%' . $searchTerm . '%')->get();
    
            return view('search.results', compact('chosenSongs'));
        }
    
        public function vote(Request $request)
        {
            $songId = $request->input('song_id');
            $voteType = $request->input('vote');
    
            $chosenSong = ChosenSong::where('song_id', $songId)->first();
    
            if ($chosenSong) {
                $nbVotes = $chosenSong->nb_vote;
    
                if ($voteType === 'up') {
                    $nbVotes++;
                } elseif ($voteType === 'down') {
                    $nbVotes--;
                }
    
                $chosenSong->nb_vote = $nbVotes;
                $chosenSong->save();
    
                return redirect()->back();
            }
    
            // Traitement si aucun enregistrement ChosenSong n'est trouvé
            // ...
    
            return redirect()->back();
        }
    }
    {

        $currentUser = Auth::user();

        $chosenSongs = ChosenSong::with('song')->orderBy('nb_vote', 'desc')->get();

        $songController = new SongController();
        $songs = $songController->getAllSongs();

        // Extraire les IDs des chansons choisies
        $chosenSongIds = $chosenSongs->pluck('song.id')->toArray();

        // Supprimer les chansons choisies de la liste des chansons
        $songs = $songs->except($chosenSongIds);

        return view('reddit', ['chosenSongs' => $chosenSongs, 'currentUser' => $currentUser, 'songs' => $songs]);

    }

    public function searchForm()
    {
        return view('search.form');
    }

    public function search(Request $request)
    {
        $searchTerm = $request->input('search_term');

        $chosenSongs = ChosenSong::where('title', 'LIKE', '%' . $searchTerm . '%')->get();

        return view('search.results', compact('chosenSongs'));
    }

    public function vote(Request $request)
    {
        $songId = $request->input('song_id');
        $voteType = $request->input('vote');

        $chosenSong = ChosenSong::where('song_id', $songId)->first();

        if ($chosenSong) {
            $nbVotes = $chosenSong->nb_vote;

            if ($voteType === 'up') {
                $nbVotes++;
            } elseif ($voteType === 'down') {
                $nbVotes--;
            }

            $chosenSong->nb_vote = $nbVotes;
            $chosenSong->save();

            return redirect()->back();
        }

        // Traitement si aucun enregistrement ChosenSong n'est trouvé
        // ...

        return redirect()->back();
    }
}