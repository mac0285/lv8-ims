<x-slot name="header">
    <h2 class="text-center font-semibold text-sm text-gray-800 leading-tight">Software Asset</h2>
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
                <button wire:click="create()" class="border-blue-500 border-2  text-white hover:bg-blue-700 hover:text-gray px-6 rounded-full">&#x2719;</button>
                <button wire:click="export" class="border-blue-500 border-2   text-white hover:bg-blue-700 hover:text-gray px-6 rounded-full">&#x2399;Xls</button>
                <button wire:click="export" class="border-blue-500 border-2   text-white hover:bg-blue-700 hover:text-white px-6 rounded-full">&#x2399;Report</button>
            @if($isModalOpen)
            @include('livewire.software.create')
            @elseif($isModalEdit)
            @include('livewire.software.update')
            @endif
             
            <table class="table-fixed bg-with-border text-white w-full bg-gray-500 divide-y px-4 py-4 my-3 shadow-md rounded">
                <thead>
                    <tr>
                       <th class="px-6 py-3 text-left text-xs font-medium text-white-500   uppercase tracking-wider">
                           <div class="flex items-center">
                            <button wire:click="sortBy('type')">Name &duarr;</button>
                            <a sortField="type" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div> </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider">
                            <div class="flex items-center">
                            <button wire:click="sortBy('detail')">Detail &duarr;</button>
                            <a sortField="detail" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div>  </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider">
                        <div class="flex items-center">
                            <button wire:click="sortBy('tot_price')">Total Price &duarr;</button>
                            <a sortField="tot_price" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div></th>
                        <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider">
                        <div class="flex items-center">
                            <button wire:click="sortBy('active')">active &duarr;</button>
                            <a sortField="active" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div>
                        </th> 
                        <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wider">
                        <div class="flex items-center">
                            <button wire:click="sortBy('renewal_date')">Renewal &duarr;</button>
                            <a sortField="renewal_date" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div></th> 
                        <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider"> 
                      </th>
                         <!--
                         <input    wire:model="searchTerm" placeholder="Search" class="w-full py-2 px-2 text-gray-700 leading-tight focus:outline-none" /></th>
                            -->

                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
            @if($softwares->count())
            @foreach($softwares as $software)
                    <tr class="bg-white-200">
                        <td class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"> 
                            <div class="text-xs  font-medium text-gray-900"> 
                            {{$software->type}}   </div>
                        </td> 
                        <td class="px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            <p>Detail:{{ $software->detail}} </p>
                            <p>Vendor:{{ $software->vendor}}  </p>
                            <p>Buy:{{ $software->buy_date}} </p>  
                           <p> Order:{{ $software->order_date}} </p> 
                            <b class="text-xs font-medium bg-red-500   text-white px-6 rounded-full">Qty:{{ $software->qty}}</b> 
                            <b class="text-xs font-medium bg-green-500  text-white px-6 rounded-full">Price:{{ number_format( $software->price, 2) }}</b> 
                        </td> 
                        <td class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"><b class="text-xs font-medium bg-green-500  text-white px-6 rounded-full">Price:{{ number_format($software->tot_price, 2) }}</b> </td>
                        <td class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                        @if($software->active)
                            <input  type="checkbox" class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800" id="ids.{{ $software->active }}" @if($software->active) checked @endif disabled>     
                        </td>  
                            @else
                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">{{ $software->active }}</span></td>  
                            @endif
                         <td class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"> 
                         {{$software->renewal_date}}   
                           </td>                        
                        <td class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                          <!--  <button wire:click="delete({{ $software->id }})"
                                class="flex px-4 py-2 bg-red-100 text-gray-900 cursor-pointer">Delete</button>
                            -->
                    @if(auth()->user()->is_admin == 1)
                             @if($software->active)
                        <button wire:click="markAsDisable({{ $software->id }})" class="bg-blue-500 hover:bg-blue-600 text-white px-3 rounded-full">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                </svg>
                        </button>
                        <button wire:click="edit({{ $software->id }})"
                                class=" bg-green-500 hover:bg-green-700 text-white px-3 rounded-full">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" viewBox="0 0 20 20" fill="currentColor">
                                <path d="M5 4a1 1 0 00-2 0v7.268a2 2 0 000 3.464V16a1 1 0 102 0v-1.268a2 2 0 000-3.464V4zM11 4a1 1 0 10-2 0v1.268a2 2 0 000 3.464V16a1 1 0 102 0V8.732a2 2 0 000-3.464V4zM16 3a1 1 0 011 1v7.268a2 2 0 010 3.464V16a1 1 0 11-2 0v-1.268a2 2 0 010-3.464V4a1 1 0 011-1z" />
                                </svg></button>
                       <!--  <button wire:click="detail({{ $software->id }})" class="text-sm font-medium bg-blue-500 hover:bg-blue-700 text-white px-6 rounded-full">
                            Show
                        </button> -->

                        <button wire:click="confirmItemDeletion( {{ $software->id}})" wire:loading.attr="disabled" class="bg-red-500 hover:bg-red-600 text-white px-3 rounded-full">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                </svg>
                        </button>
                        @else
                        @endif
                        @else
                        <!--
                        <button wire:click="detail({{ $software->id }})" class="bg-blue-500 hover:bg-blue-700 text-white px-3 rounded-full">
                            Show
                        </button> 
                        <x-jet-danger-button wire:click="confirmItemDeletion( {{ $software->id}})"  class="bg-red-500 hover:bg-red-600 text-white px-3 rounded-full" wire:loading.attr="disabled">
                                &cross;
                        </x-jet-danger-button>-->

                        <button wire:click="edit({{ $software->id }})"
                                class=" bg-green-500 hover:bg-green-700 text-white px-3 rounded-full">&check;</button>
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
            {{ $softwares->links() }}
        </div>

                    <x-jet-confirmation-modal wire:model="confirmingItemDeletion">
        <x-slot name="title">
            {{ __('Delete Item') }}
        </x-slot>

        <x-slot name="content">
            {{ __('Are you sure you want to delete Software? ') }}
        </x-slot>

        <x-slot name="footer">
            <x-jet-secondary-button wire:click="$set('confirmingItemDeletion', false)" wire:loading.attr="disabled">
                {{ __('Nevermind') }}
            </x-jet-secondary-button>

            <x-jet-danger-button class="ml-2" wire:click="deleteItem({{ $confirmingItemDeletion }})" wire:loading.attr="disabled">
                {{ __('Delete') }}
            </x-jet-danger-button>
        </x-slot>
    </x-jet-confirmation-modal>

    </div>
</div>



