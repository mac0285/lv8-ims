<x-slot name="header">
    <h2 class="text-center font-semibold text-sm text-gray-800 leading-tight">USER</h2>
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
            <!--  <input wire:model.debounce.500ms="q"   type="search" placeholder="Search" class="border-green-700 border-2   text-gray-700 leading-tight focus:outline-none shadow-md rounded-full" />
            -->
            <button wire:click="create()" class="border-blue-500 border-2  text-white hover:bg-blue-700 hover:text-white px-6 rounded-full">&#x2719;</button>
            
            <table class="table-fixed bg-with-border text-white w-full bg-gray-500 divide-y px-4 py-4 my-3 shadow-md rounded">
                <thead>
                    <tr> 
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider">Name</th>
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider">Detail</th>
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider">Active</th>
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider">Action</th>
                    </tr>
                </thead> 
                <tbody class="bg-white divide-y divide-gray-200">
                @foreach($users as $users)
                    <tr>
                        
                        <td class=" px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $users->name }}</td>
                        <td class=" px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Email: {{ $users->email}} Created: {{ $users->created_at}}
                                              
                        </td>
                        <td class="  px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">@if($users->active)   
                            <input  type="checkbox" class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800" id="ids.{{ $users->active }}" @if($users->active) checked @endif disabled>     
                           @else
                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">{{ $users->active }}</span> </td>  
                            @endif   
                        </td> 
                        <td class=" px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                        @if(auth()->user()->is_admin == 1)
 
                            @if($users->active)
                                    <button   wire:click="markAsDisable({{ $users->id }})" class=" bg-red-500 hover:bg-red-600 text-white px-3 rounded-full">
                                    &#x25C9;
                                    </button>
                            @else
                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">Can't Edit</span>
                        @endif
                        @else
                         <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">Can't Edit</span>
                        @endif

                           <!-- <button wire:click="markAsDisable({{ $users->id }})"
                                class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-400 text-white-800">Disable</button>
                            <button wire:click="delete({{ $users->id }})"
                                class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-400 text-red-800">Delete</button>
                                -->
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>