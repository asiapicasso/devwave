<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>
      

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
        @vite(['resources/js/app.js'])
        @vite('resources/css/app.css')
        @yield('content')
        <script src="vue.js"></script> 
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
      

    </head>
    <body id="main-container" class="min-w-screen min-h-screen">
        <div id="app">

            
        </div>
    </body>
</html>
