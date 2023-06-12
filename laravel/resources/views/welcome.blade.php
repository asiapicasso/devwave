<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>
      

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Frank+Ruhl+Libre&family=Open+Sans&family=Quicksand:wght@700&display=swap" rel="stylesheet">
        @vite(['resources/js/app.js'])
        @vite('resources/css/app.css')
    
        <!-- <script src="vue.js"></script> 
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script> -->
      

    </head>
    <body id="main-container" class="min-w-screen min-h-screen">
        <div id="app">
           
        </div>
    </body>
</html>
