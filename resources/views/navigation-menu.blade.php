<nav x-data="{ open: false }" class="bg-gray-800 border-b border-gray-100 justify-between ">
    <!-- Primary Navigation Menu -->
    <div class="max-w-7xl mx-auto px-6 sm:px-6 lg:px-8">
        <div class="relative flex items-center justify-between text-white h-16">
            <div class="flex">
                <!-- Logo -->
                <div class="flex items-center flex-shrink-0 text-white mr-6">
                    <a href="{{ route('home') }}">
                        <svg class="fill-current h-8 w-8 mr-2"   viewBox="0 0 54 54" xmlns="http://www.w3.org/2000/svg"> 
                        
                        <img class="w-16 md:w-16 lg:w-16" src="{{ asset('img/anggun.ico') }}" alt="Anggun Kreasi Garmen" title="Anggun Kreasi Garmen"> </svg>
                    </a>
                </div>
                <!-- Navigation Links -->
                 <div class=" mt-4 lg:inline-block lg:mt-2 text-teal-200 hover:text-white mr-4">
                     <!--
                    <x-jet-nav-link href="{{ route('dashboard') }}" :active="request()->routeIs('dashboard')">
                        {{ __('Dashboard') }}
                    </x-jet-nav-link>
                    
                    <x-jet-nav-link href="{{ route('posts') }}" :active="request()->routeIs('posts')">
                        Posts
                    </x-jet-nav-link> 

                    <x-jet-nav-link href="{{ route('tickets') }}" :active="request()->routeIs('tickets')">
                            Ticket
                    </x-jet-nav-link>

                    -->
                </div>
 <!--
                <x-jet-nav-link href="{{ route('dashboard-todo') }}" :active="request()->routeIs('dashboard-todo')">
                        {{ __('To-Do List') }}
                    </x-jet-nav-link>

     
               
                <div>
                    <x-jet-nav-link href="{{ route('komputer') }}" :active="request()->routeIs('komputer')">
                        Komputer
                    </x-jet-nav-link>

                    <x-jet-nav-link href="{{ route('softwares') }}" :active="request()->routeIs('softwares')">
                        Software
                    </x-jet-nav-link>

                     <x-jet-nav-link href="{{ route('usages') }}" :active="request()->routeIs('usages')">
                        Internet Usage
                    </x-jet-nav-link> 
                    
                </div>-->


                
            </div>
             
                


                    
                
            <!-- Settings Dropdown -->
            <div class="hidden sm:flex sm:items-center text-white sm:ml-6">
                      <x-jet-dropdown align="right" width="48">
                    <x-slot name="trigger">
                        @if (Laravel\Jetstream\Jetstream::managesProfilePhotos())
                            <button class="flex text-sm border-2 border-transparent rounded-full focus:outline-none focus:border-gray-300 transition duration-150 ease-in-out">
                                <img class="h-8 w-8 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}" />
                            </button>
                        @else
                            <button class="flex items-center text-sm font-medium text-white-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none focus:text-gray-700 focus:border-gray-300 transition duration-150 ease-in-out">
                               <!-- <div>{{ Auth::user()->name }}</div> -->
                                 <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z" />
                                     </svg>       
                                <div class="ml-1">
                                    <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                                    </svg>
                                </div>
                            </button>
                        @endif
                    </x-slot>

                    <x-slot name="content">
                        <!-- Account Management -->
                        <x-jet-dropdown-link href="{{ route('home') }}">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                              </svg>Home
                        </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('todo') }}">
                             To-Do List
                        </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('komputer') }}">
                                {{ __('Computer') }}
                            </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('softwares') }}">
                                {{ __('Software') }}
                            </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('usages') }}">
                                {{ __('Usage') }}
                        </x-jet-dropdown-link>
                        
                        <x-jet-dropdown-link href="{{ route('email') }}">
                                {{ __('Users Mail Account') }}
                        </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('contacts') }}">
                                {{ __('Contacts Extension') }}
                        </x-jet-dropdown-link>
                        <x-jet-dropdown-link href="{{ route('tickets') }}">      Ticket
                        </x-jet-dropdown-link>   

                        <div class="block px-4 py-2 text-xs text-gray-400">
                            {{ __('Manage Account') }}
                        </div>

                        <x-jet-dropdown-link href="{{ route('profile.show') }}">
                            {{ __('Profile') }}
                        </x-jet-dropdown-link>

                        @if (Laravel\Jetstream\Jetstream::hasApiFeatures())
                            <x-jet-dropdown-link href="{{ route('api-tokens.index') }}">
                                {{ __('API Tokens') }}
                            </x-jet-dropdown-link>
                        @endif

                        <div class="border-t border-gray-100"></div>
                    @if(Auth::check() && Auth::user()->is_admin == "1")
                        <!-- Team Management -->
                        @if (Laravel\Jetstream\Jetstream::hasTeamFeatures())
                            <x-jet-dropdown-link href="{{ route('users') }}">
                                {{ __('Users Manage') }}
                            </x-jet-dropdown-link>
                            
                            
                            <div class="block px-4 py-2 text-xs text-gray-400">
                                {{ __('Manage Team') }}
                            </div>
                         
                            <!-- Team Settings -->
                            <x-jet-dropdown-link href="{{ route('teams.show', Auth::user()->currentTeam->id) }}">
                                {{ __('Team Settings') }}
                            </x-jet-dropdown-link>

                            @can('create', Laravel\Jetstream\Jetstream::newTeamModel())
                                <x-jet-dropdown-link href="{{ route('teams.create') }}">
                                    {{ __('Create New Team') }}
                                </x-jet-dropdown-link>
                            @endcan
                         
                            <div class="border-t border-gray-100"></div>

                            <!-- Team Switcher -->
                            <div class="block px-4 py-2 text-xs text-gray-400">
                                {{ __('Switch Teams') }}
                            </div>

                            @foreach (Auth::user()->allTeams() as $team)
                                <x-jet-switchable-team :team="$team" />
                            @endforeach

                            <div class="border-t border-gray-100"></div>
                        @endif
                     @endif  
                        <!-- Authentication -->
                        <form method="POST" action="{{ route('logout') }}">
                            @csrf

                            <x-jet-dropdown-link href="{{ route('logout') }}"
                                                onclick="event.preventDefault();
                                                            this.closest('form').submit();">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                                    {{ __('Logout') }}</svg>
                            </x-jet-dropdown-link>
                        </form>
                    </x-slot>
                </x-jet-dropdown>
            </div>

            <!-- Hamburger -->
            <div class="-mr-2 flex items-center sm:hidden">
                <button @click="open = ! open" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out">
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': open, 'inline-flex': ! open }" class="inline-flex" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! open, 'inline-flex': open }" class="hidden" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Responsive Navigation Menu -->
    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden">
        <div class="pt-2 pb-3 space-y-1">
            <x-jet-responsive-nav-link href="{{ route('dashboard') }}" :active="request()->routeIs('dashboard')">
                {{ __('Dashboard') }}
            </x-jet-responsive-nav-link>

             
 

            
        </div>

        <!-- Responsive Settings Options -->
        <div class="pt-4 pb-1 border-t border-gray-200">
            <div class="flex items-center px-4">
                <div class="flex-shrink-0">
                   <!-- <img class="h-10 w-10 rounded-full" src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}" /> -->
                    <img class="h-10 w-10 rounded-full" src="{{asset('img/'.Auth::user()->profile_photo_path)}}" alt="{{ Auth::user()->name }}" />
                </div>

                <div class="ml-3">
                    <div class="font-medium text-base text-gray-800">{{ Auth::user()->name }}</div>
                    <div class="font-medium text-sm text-gray-500">{{ Auth::user()->email }}</div>
                </div>
            </div>

            <div class="mt-3 space-y-1">
                <!-- Account Management -->
                        <x-jet-dropdown-link href="{{ route('home') }}">
                                    Home
                            </x-jet-dropdown-link>
                        <x-jet-dropdown-link href="{{ route('todo') }}">
                             To-Do List
                        </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('komputer') }}">
                                {{ __('Computer') }}
                            </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('softwares') }}">
                                {{ __('Software') }}
                            </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('usages') }}">
                                {{ __('Usage') }}
                        </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('email') }}">
                                {{ __('Users Mail Account') }}
                        </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('contacts') }}">
                                {{ __('Contacts Extension') }}
                        </x-jet-dropdown-link>
                        <x-jet-nav-link href="{{ route('tickets') }}">
                            Ticket
                        </x-jet-dropdown-link>

                <x-jet-responsive-nav-link href="{{ route('profile.show') }}" :active="request()->routeIs('profile.show')">
                    {{ __('Profile') }}
                </x-jet-responsive-nav-link>

                @if (Laravel\Jetstream\Jetstream::hasApiFeatures())
                    <x-jet-responsive-nav-link href="{{ route('api-tokens.index') }}" :active="request()->routeIs('api-tokens.index')">
                        {{ __('API Tokens') }}
                    </x-jet-responsive-nav-link>
                @endif

                <!-- Authentication -->
                <form method="POST" action="{{ route('logout') }}">
                    @csrf

                    <x-jet-responsive-nav-link href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                                this.closest('form').submit();">
                        {{ __('Logout') }}
                    </x-jet-responsive-nav-link>
                </form>
            @if(Auth::check() && Auth::user()->is_admin == "1")
                <!-- Team Management -->
                @if (Laravel\Jetstream\Jetstream::hasTeamFeatures())
                    <x-jet-responsive-nav-link href="{{ route('users') }}">
                                {{ __('Users Manage') }}
                            </x-jet-responsive-nav-link>
                    <div class="border-t border-gray-200"></div>

                    <div class="block px-4 py-2 text-xs text-gray-400">
                        {{ __('Manage Team') }}
                    </div>

                    <!-- Team Settings -->
                    <x-jet-responsive-nav-link href="{{ route('teams.show', Auth::user()->currentTeam->id) }}" :active="request()->routeIs('teams.show')">
                        {{ __('Team Settings') }}
                    </x-jet-responsive-nav-link>

                    <x-jet-responsive-nav-link href="{{ route('teams.create') }}" :active="request()->routeIs('teams.create')">
                        {{ __('Create New Team') }}
                    </x-jet-responsive-nav-link>

                    <div class="border-t border-gray-200"></div>

                    <!-- Team Switcher -->
                    <div class="block px-4 py-2 text-xs text-gray-400">
                        {{ __('Switch Teams') }}
                    </div>

                    @foreach (Auth::user()->allTeams() as $team)
                        <x-jet-switchable-team :team="$team" component="jet-responsive-nav-link" />
                    @endforeach
                @endif
            @endif
            </div>
        </div>
    </div>
</nav>
