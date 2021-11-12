<x-slot name="header">
    <h2 class="text-center">Posting Item</h2>
</x-slot>
<div class="py-12">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg px-4 py-4">
            @if (session()->has('message'))
             
            <div class=" text-center py-4 lg:px-4">
                <div class="p-2 bg-green-400 items-center text-indigo-100 leading-none lg:rounded-full flex lg:inline-flex" role="alert">
                    <span class="flex rounded-full bg-indigo-500 uppercase px-2 py-1 text-xs font-bold mr-3">News</span>
                    <span class="font-semibold mr-2 text-red-100 text-left flex-auto"> {{ session('message') }} </span>
                    <svg class="fill-current opacity-75 h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M12.95 10.707l.707-.707L8 4.343 6.586 5.757 10.828 10l-4.242 4.243L8 15.657l4.95-4.95z"/></svg>
                </div>
            </div>
             
            @endif
            <button wire:click="create()" class="bg-green-700 text-white font-bold py-2 px-4 rounded my-3">Create Posts</button>
            @if($isModalOpen)
            @include('livewire.create')
            @endif
            <table class="table-fixed bg-with-border w-full bg-gray-500 divide-y px-4 py-4 my-3 shadow-md">
                <thead>
                    <tr class="bg-gray-100">
                        <th class="px-4 py-2 w-20">No.</th>
                        <th class="px-4 py-2">Title</th>
                        <th class="px-4 py-2">Desc</th>
                        <th class="px-4 py-2">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($posts as $post)
                    <tr>
                        <td class="border px-4 py-2">{{ $post->id }}</td>
                        <td class="border px-4 py-2">{{ $post->title }}</td>
                        <td class="border px-4 py-2">{{ $post->desc}}</td>
                        <td class="border px-4 py-2">
                           <div> <button wire:click="edit({{ $post->id }})"
                                class="bg-blue-500  text-white font-bold py-2 px-4 rounded">Edit</button>
                            <button wire:click="delete({{ $post->id }})"
                                class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">Delete</button></div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>