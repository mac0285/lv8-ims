<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">

<div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>
      
   
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
             <!-- button close -->
         
    <button wire:click="closeModalPopover()" class=" -top-37 -right-7 bg-red-500 hover:bg-red-600 text-2xl w-10 h-10  focus:outline-none text-white">
    &cross;
    </button>
    <label for="extnumber" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Create Extension Number</label>
            <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class=""> 

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                            <div class="grid grid-cols-1">
                                <label for="extnumber" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Extension Number</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"type="text" id="extnumber" placeholder="111,101, 212, 213" wire:model="extnumber">
                                  @error('extnumber') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                                <label for="namedisplay" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">User</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="text" id="namedisplay" wire:model="namedisplay"
                                   placeholder="user on this desk">
                                   @error('namedisplay') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>
                      
                         

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                            <div class="grid grid-cols-1">
                                <select id="group" wire:model="group" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="group">
                                    <option value="">Select Group</option>
                                    <option value="Ameyaindo">Ameyaindo</option>
                                    <option value="Anggun Kreasi">Anggun Kreasi</option> 
                                </select>
                                @error('group') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                                 
                                    <select id="dept" wire:model="dept" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="dept">
                                        <option value="">Select Departement</option>
                                        @foreach($depts as $depts)
                                        <option value="{{ $depts->dept }}">{{ $depts->dept }} ({{ $depts->group }} )</option>
                                        @endforeach 
                                    </select>
                                @error('dept') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                             <div class="grid grid-cols-1">
                                <label for="lantai" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Location</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="text" id="lantai" placeholder="Location" wire:model="lantai">
                                @error('lantai') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                             
                        </div>
                    </div>
                </div>
                <div class="bg-gray-200 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <span class="flex w-full rounded-md shadow-sm sm:ml-3 sm:w-auto">
                        <button wire:click.prevent="store()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-green-500 hover:bg-green-700 text-base leading-6 font-bold text-white shadow-sm  focus:outline-none focus:border-green-700 focus:shadow-outline-green transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Store
                        </button>
                    </span>
                    <span class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:w-auto">
                        <button wire:click="closeModalPopover()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-bold text-gray-700 shadow-sm hover:bg-yellow-400 hover:text-gray-700 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Close
                        </button>
                    </span>
                </div>
            </form>
        </div>
    </div>
</div>
</div>