<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>
        <!-- bootstrap -->
       
        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">
        

        @livewireStyles
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.7.3/dist/alpine.js" defer></script>
        <script src="{{ mix('js/app.js') }}" defer></script>
        <!-- Scripts --> 
        <style>
            body {
                font-family: 'Nunito', sans-serif;
            }
        </style>
    </head>
    <body class="font-sans antialiased">
        <x-jet-banner />
<!-- untuk ganti warna background  -->
        <div class="min-h-screen bg-gray-300">
            @livewire('navigation-menu')

            <!-- Page Heading -->
            @if (isset($header))
                <header class="bg-gray-200 border-blue-500 shadow">
                    <div class="max-w-7xl mx-auto py-1 px-4 sm:px-6 lg:px-8 uppercase">
                       <b> {{ $header }} </b>
                    </div>
                </header>
            @endif

            <!-- Page Content -->
            <main>
                {{ $slot }}
            </main>
        </div>

        @stack('modals')

        @livewireScripts
       
  <footer class="text-gray-600 body-font bg-gray-700">
    <div class="container px-3 py-24 mx-auto flex md:items-center lg:items-start md:flex-row md:flex-nowrap flex-wrap flex-col">
      <div class="w-32 flex-shrink-0 md:mx-0 mx-auto text-center md:text-left">
        <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
             <img class="w-16 md:w-16 lg:w-16  text-white p-2 " stroke="currentColor" src="{{ asset('img/anggun.ico') }}" alt="logo company" title="logo company">
             <span class="ml-3 text-sm text-white">IT DEVELOPMENT</span>
        </a>
        <p class="mt-2 text-sm text-white">PT. Anggun Kreasi Garmen</p>
      </div>
      <div class="flex-grow flex flex-wrap md:pl-20 -mb-10 md:mt-0 mt-10 md:text-left text-center">
        <div class="lg:w-1/4 md:w-1/2 w-full px-4">
          <h2 class="title-font font-bold text-white tracking-widest text-md mb-3">Menus</h2>
          <nav class="list-none mb-10">
            <li>
              <a class="text-white hover:text-red-300" href="{{'home'}}">Dashboard</a>
            </li>
            <li>
              <a class="text-white hover:text-red-300" href="{{'todo'}}">To Do List</a>
            </li>
            <li>
              <a class="text-white hover:text-red-300" href="{{'komputers'}}">Komputer</a>
            </li>
            <li>
              <a class="text-white hover:text-red-300" href="{{'softwares'}}">Software</a>
            </li>
             
          </nav>
        </div>
         
      </div>

      <div class="flex-grow flex flex-wrap md:pl-20 -mb-10 md:mt-0 mt-10 md:text-left text-center">
        <div class="lg:w-1/4 md:w-1/2 w-full px-4">
          <h2 class="title-font font-bold text-white tracking-widest text-md mb-3">Another</h2>
          <nav class="list-none mb-10">
            <li>
              <a class="text-white hover:text-red-300" href="{{'emails'}}">Email</a>
            </li>
            <li>
              <a class="text-white hover:text-red-300" href="{{'contacts'}}">Ext Number</a>
            </li>
            <li>
              <a class="text-white hover:text-red-300" href="{{'usages'}}">Usage</a>
            </li>
             
          </nav>
        </div>
         
      </div>      


    </div>
    <div class="bg-gray-900">
      <div class="container mx-auto py-4 px-5 flex flex-wrap flex-col sm:flex-row">
        <p class="text-white text-sm text-center sm:text-left"><i class="bi bi-archive"></i>© 2021 IT Dev —
          <a href="{{'dashboard'}}" rel="noopener noreferrer" class="text-gray-400 ml-1" >git.version {{config('version.date')}}{{ Illuminate\Foundation\Application::VERSION }} (PHP v{{ PHP_VERSION }})</a>
        </p>
        <span class="inline-flex sm:ml-auto sm:mt-0 mt-2 justify-center sm:justify-start">
          <a class="text-gray-200">
            <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
              <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
            </svg>
          </a>
          <a class="ml-3 text-gray-200">
            <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
              <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
            </svg>
          </a>
          <a class="ml-3 text-gray-200">
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
              <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
              <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
            </svg>
          </a>
          <a class="ml-3 text-gray-200">
            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
              <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
              <circle cx="4" cy="4" r="2" stroke="none"></circle>
            </svg>
          </a>
        </span>
      </div>
    </div>
  </footer>
 
          
    </body>
</html>
