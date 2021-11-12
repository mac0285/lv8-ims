<x-slot name="header">
    <h2 class="text-center font-semibold text-sm text-gray-800 leading-tight">TodoList</h2>
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
            <input wire:model.debounce.500ms="q"   type="search" placeholder="Search"  class="border-green-700 border-2   text-gray-700 leading-tight focus:outline-none shadow-md rounded-full" />
            <button wire:click="create()" class="border-blue-500 border-2  text-white hover:bg-blue-700 hover:text-white px-6 rounded-full">&#x2719;</button>
            <button wire:click="export" class="border-blue-500 border-2   text-white hover:bg-blue-700 hover:text-white px-6 rounded-full">&#x2399;CSV</button>
            @if($isModalOpen)
            @include('livewire.todo.form')
            
            @elseif($isModalEdit)
            @include('livewire.todo.form')  
            @endif             
            <table class="table-fixed bg-with-border text-white w-full bg-gray-500 divide-y px-4 py-4 my-3 shadow-md rounded">
                <thead>
                        <tr>
                            <th class="px-6 py-3 text-left text-xs font-medium   tracking-wider"><div class="flex items-center">
                            <div class="flex items-center">
                                <button wire:click="sortBy('created_at')">Date &duarr;</button>
                                <a sortField="created_at" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                            </div>  
                        </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium   tracking-wider"><div class="flex items-center">
                                    <button wire:click="sortBy('topic')">Categories &duarr;</button>
                                    <a sortField="topic" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                            </div>
                         </th>                           
                        <th class="px-6 py-3 text-left text-xs font-medium   tracking-wider"><div class="flex items-center">
                                    <button wire:click="sortBy('type')">Item &duarr;</button>
                                    <a sortField="type" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                            </div> 
                        </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium   tracking-wider">
                            <div class="flex items-center">
                                    <button wire:click="sortBy('description')">Detail &duarr;</button>
                                    <a sortField="description" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                            </div>
                        </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium   tracking-wider">
                            <div class="flex items-center">
                                    <button wire:click="sortBy('done')">Status &duarr;</button>
                                    <a sortField="done" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                            </div> 
                        </th>
                        <th class="px-6 py-3 text-left text-xs font-medium   tracking-wider"> Action </th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                @if($list->count())
                    @foreach ($list as $item)
                        <tr class="bg-white-200 hover:bg-gray-700">
                            <td class=" px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"> 
                                <div class="text-sm  font-medium text-gray-900  "> 
                                <p class="text-sm font-medium text-gray-900">                        
                                {{ $item->created_at }}  </p></div>
                            </td>                            
                            <td class="  px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"> 
                                <div class="text-sm  font-medium text-gray-900  "> 
                                <p class="text-sm font-medium text-gray-900">                        
                                {{ $item->type }} </p></div>
                            </td>  
                            <td class=" px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->topic }}</td> 
                            <td class=" px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->description }}</td>
                            <td class="  px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                @if($item->done)
                                <button class="border-green-700 border-2  text-gray   hover:bg-green-700   px-6 rounded-full">Done</button> 
                                @else <button class="bg-red-800 text-white px-6 rounded-full"> To Do </button>@endif 
                            </td>
                            <td class="  px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                @if($item->done) 
                                    
                                    <button wire:click="markAsHide({{ $item->id }})" class="bg-red-600 text-white px-4 hover:bg-blue-700 hover:text-gray px-4 rounded-full ">
                                    &#x25C9;
                                    </button>
                                @else
                                    <button wire:click="markAsDone({{ $item->id }})" class="bg-blue-800 text-white px-6 hover:bg-blue-700 hover:text-gray px-6 rounded-full ">
                                        Mark as "Done"
                                    </button>                        
                                    @endif
                            </td>
                        </tr>
                    @endforeach 
                @else
            
                    <tr>
                        <td class="  px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"> not show any data my table remains empty </td>
                    </tr>
                    @endif
                </tbody>
            </table>  
                {{ $list->links() }}
        </div> 
    </div>
</div>
