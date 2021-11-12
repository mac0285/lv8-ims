<x-slot name="header">
    <h2 class="text-center font-semibold text-sm text-gray-800 leading-tight">Internet Usage Asset</h2>
</x-slot>

<div class="flex flex-col">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
            @if (session()->has('message'))
            <div class=" text-center py-4 lg:px-4">
                <div class="p-2 bg-green-400 items-center text-indigo-100 leading-none lg:rounded-full flex lg:inline-flex" role="alert">
                    <span class="flex rounded-full bg-indigo-500 uppercase px-2 py-1 text-xs font-bold mr-3">News</span>
                    <span class="font-semibold mr-2 text-red-100 text-left flex-auto"> {{ session('message') }} </span>
                    <svg class="fill-current opacity-75 h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M12.95 10.707l.707-.707L8 4.343 6.586 5.757 10.828 10l-4.242 4.243L8 15.657l4.95-4.95z"/></svg>
                </div>
            </div>
            @endif
            <input wire:model.debounce.500ms="q"   type="search" placeholder="Search" class="border-green-700 border-2   text-gray-700 leading-tight focus:outline-none shadow-md rounded-full" />
            <button wire:click="create()" class="border-blue-500 border-2  text-white hover:bg-blue-700 hover:text-white px-6 rounded-full">&#x2719;</button>
            <button wire:click="export" class="border-blue-500 border-2   text-white hover:bg-blue-700 hover:text-white px-6 rounded-full">&#x2399;CSV</button>
      
            @if($isModalOpen)
            @include('livewire.usage.usage-create')
            @elseif($isModalEdit)
            @include('livewire.usage.usage-update')
            @endif
             
            <table class="table-fixed bg-with-border text-white w-full bg-gray-500 divide-y px-4 py-4 my-3 shadow-md rounded">
                <thead>
                    <tr>
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('month_date')">Date &duarr;</button>
                            <a sortField="month_date" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div> </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('Connection')">Conection &duarr;</button>
                            <a sortField="Connection" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div> </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('type')">Type &duarr;</button>
                            <a sortField="type" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div> </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('inbound')"> inbound </button>
                            <a sortField="inbound" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div></th>
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('outbound')">outbound  </button>
                            <a sortField="outbound" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div> </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('total')">total  </button>
                            <a sortField="total" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div> </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider"> Remark</th>
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider">
                        <!--<input  wire:model="searchTerm" placeholder="Search" class="w-full py-2 px-2 text-gray-700 hover:bg-blue-700 hover:text-white leading-tight focus:outline-none" /></th> -->
                        </th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                @if($usages->count())

                @foreach($usages as $usage)
                    <tr class="bg-white-200 hover:bg-gray-700">
                        <td class=" px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"> 
                            <div class="text-sm  font-medium text-gray-900  "> 
                            <p class="text-sm font-medium text-gray-900">
                        
                         {{$usage->month_date}}  </p></div>
                           </td> 
                           
                           <td class="  px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"> 
                            <div class="text-sm  font-medium text-gray-900  "> 
                            <p class="text-sm font-medium text-gray-900">
                        
                         {{$usage->Connection}}  </p></div>
                           </td>
                        <td class="  px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $usage->type}}</td>  
                        <td class=" px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $usage->inbound}}</td> 
                        <td class=" px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{$usage->outbound}} </td>
                        <td class="  px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{$usage->total}} </td>
                        <td class="  px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">@if($usage->active)   
                            <input  type="checkbox" class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800" id="ids.{{ $usage->active }}" @if($usage->active) checked @endif disabled>     
                              {{ $usage->remark }}
                        </td>  
                            
                            @else
                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">{{ $usage->active }}</span>{{ $usage->remark }}</td>  
                            @endif
                  
                        <td class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            
                          <!--  <button wire:click="delete({{ $usage->id }})"
                                class="flex px-4 py-2 bg-red-100 text-gray-900 cursor-pointer">Delete</button>
                            -->

                    @if(auth()->user()->is_admin == 1)

  
                             @if($usage->active)
                        <button   wire:click="markAsDisable({{ $usage->id }})" class=" bg-red-500 hover:bg-red-600 text-white px-3 rounded-full">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                </svg>
                        </button>
                        <button   wire:click="edit({{ $usage->id }})"
                                class=" bg-green-500 hover:bg-green-700 text-white px-3 rounded-full">  
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" viewBox="0 0 20 20" fill="currentColor">
                                <path d="M5 4a1 1 0 00-2 0v7.268a2 2 0 000 3.464V16a1 1 0 102 0v-1.268a2 2 0 000-3.464V4zM11 4a1 1 0 10-2 0v1.268a2 2 0 000 3.464V16a1 1 0 102 0V8.732a2 2 0 000-3.464V4zM16 3a1 1 0 011 1v7.268a2 2 0 010 3.464V16a1 1 0 11-2 0v-1.268a2 2 0 010-3.464V4a1 1 0 011-1z" />
                                </svg>
                        </button>
                         
                        @else
                            
                        @endif
                        @else
                        <button   wire:click="edit({{ $usage->id }})"
                                class=" bg-green-500 hover:bg-green-700 text-white px-3 rounded-full">  <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" viewBox="0 0 20 20" fill="currentColor">
                                <path d="M5 4a1 1 0 00-2 0v7.268a2 2 0 000 3.464V16a1 1 0 102 0v-1.268a2 2 0 000-3.464V4zM11 4a1 1 0 10-2 0v1.268a2 2 0 000 3.464V16a1 1 0 102 0V8.732a2 2 0 000-3.464V4zM16 3a1 1 0 011 1v7.268a2 2 0 010 3.464V16a1 1 0 11-2 0v-1.268a2 2 0 010-3.464V4a1 1 0 011-1z" />
                                </svg>
                        </button>
                    @endif
                        </td>
                    </tr>
            @endforeach 
            @else
                <tr>
                    <td class="table-fixed bg-with-border text-white w-full bg-gray-500   shadow-md rounded"> not show any data my table remains empty </td>
                </tr>
            @endif
                </tbody>
            </table> 
            {{ $usages->links() }}
        </div>
    </div>
</div>
