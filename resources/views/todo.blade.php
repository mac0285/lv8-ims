<x-app-layout>
    <x-slot name="header">
        <h2 class="text-center font-semibold text-sm text-gray-800 leading-tight">
            {{ __('My To-Do List') }}
        </h2>
    </x-slot>

    <div>
        <div class="max-w-7xl mx-auto py-4 sm:px-6 lg:px-8">
            @livewire('todo.form')
        </div>
    </div>

    <div class="py-4">
        <div class="max-w-7xl mx-auto sm:px-4 lg:px-8">
            <div class=" ">
                @livewire('todo.show')
            </div>
        </div>
    </div>
</x-app-layout>