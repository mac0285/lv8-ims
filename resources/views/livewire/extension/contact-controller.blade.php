<x-slot name="header">
    <h2 class="text-center font-semibold text-sm text-gray-800 leading-tight">Extension Number</h2>
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
            <button wire:click="create()" class="border-indigo-700 border-2  text-white hover:bg-green-700 hover:border-gray-500 hover:border-2   px-6 rounded-full">&#x2719;</button>
             
            @if($isDialogOpen)
            @include('livewire.extension.create_contact')
            @elseif($isModalEdit)
            @include('livewire.extension.contact-update')
            @endif 
            <table class="table-fixed bg-with-border text-white w-full bg-gray-500 divide-y px-4 py-4 my-3 shadow-md rounded">
                <thead>
                    <tr>                         
                        <th class="px-6 py-3 text-center text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('namedisplay')">Name &duarr;</button>
                            <a sortField="namedisplay" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div></th>                        
                        <th class="px-6 py-3 text-center text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('dept')">Dept &duarr;</button>
                            <a sortField="dept" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div></th>
                        <th class="px-6 py-3 text-center text-xs font-medium  uppercase tracking-wider">Lantai</th>
                        <th class="px-6 py-3 text-center text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('lantai')">Ext Number &duarr;</button>
                            <a sortField="lantai" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div></th>
                        <th class="px-6 py-3 text-center text-xs font-medium  uppercase tracking-wider"><div class="flex items-center">
                            <button wire:click="sortBy('digital')">Digital &duarr;</button>
                            <a sortField="digital" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div></th>
                        <th class="px-6 py-3 text-center text-xs font-medium  uppercase tracking-wider ">remark</th>
                        <th class="px-6 py-3 text-center text-xs font-medium  uppercase tracking-wider">Action</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200 ">
                    @foreach($contacts as $item)
                    <tr>                     
                        <td class="px-2 py-3  text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->namedisplay }}</td> 
                        <td class="px-2 py-3 text-center text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->dept}}</td>
                        <td class="px-2 py-3 text-center text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->lantai}}</td>
                        <td class="px-2 py-3 text-center text-xs font-medium text-gray-500 uppercase tracking-wider">
                        
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4"  fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <path stroke-linecap="round" stroke-linejoin="round"   d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
</svg><b class="text-xs font-medium bg-green-500  text-white px-6 rounded-full">{{ $item->extnumber}}</b> </td>
                        <td class="px-2 py-3 text-center text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->digital}}</td>
                        <td class="px-2 py-3 text-center text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->remark}}</td> 
                        <td class="px-2 py-3 text-center text-xs font-medium text-gray-500 uppercase tracking-wider">
                        <button wire:click="edit({{ $item->id }})" class=" bg-green-500 hover:bg-green-700 text-white px-3 rounded-full">
                               <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" viewBox="0 0 20 20" fill="currentColor">
                                <path d="M5 4a1 1 0 00-2 0v7.268a2 2 0 000 3.464V16a1 1 0 102 0v-1.268a2 2 0 000-3.464V4zM11 4a1 1 0 10-2 0v1.268a2 2 0 000 3.464V16a1 1 0 102 0V8.732a2 2 0 000-3.464V4zM16 3a1 1 0 011 1v7.268a2 2 0 010 3.464V16a1 1 0 11-2 0v-1.268a2 2 0 010-3.464V4a1 1 0 011-1z" />
                                </svg>
                        </button>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{ $contacts->links() }}
        </div>
    </div>
</div>