<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">

<div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>
      
   
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
             <!-- button close -->
         
    <button wire:click="closeModalEdit()" class=" -top-37 -right-7 bg-red-500 hover:bg-red-600 text-2xl w-10 h-10  focus:outline-none text-white">
    &cross;
    </button>
    <label for="name_usr" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Edit Email</label>
            <form autocomplete="off">
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class=""> 

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                            <div class="grid grid-cols-1">
                                <label for="name_usr" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Name User</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"type="text" id="name_usr" placeholder="Name User" wire:model="name_usr">
                                  @error('name_usr') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                                <label for="email_usr" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Email User</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="text" id="email_usr" wire:model="email_usr"
                                   placeholder="info@anggunkreasi.com">
                                   @error('email_usr') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>
                      
                         

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                            <div class="grid grid-cols-1">
                                <select id="email_type" wire:model="email_type" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="email_type">
                                    <option value="">Select Lisence</option>
                                    <option value="O365 Basic">O365 Basic</option>
                                    <option value="O365 Standart">O365 Standart</option> 
                                </select>
                                @error('email_type') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                                <select id="dept_usr" wire:model="dept_usr" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="dept_usr">
                                    <option value="">Select Departement</option>
                                    @foreach($dept as $depts)
                                    <option value="{{ $depts->dept }}">{{ $depts->dept }} ({{ $depts->group }} )</option>
                                    @endforeach 
                                </select>
                                @error('dept_usr') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                             <div class="grid grid-cols-1">
                                <label for="pwd_usr" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Pwd</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="text" id="pwd_usr" placeholder="Password" wire:model="pwd_usr">
                                @error('pwd_usr') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                                <label for="remark_usr" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Remark</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="text" id="remark_usr" placeholder="Remark" wire:model="remark_usr">
                                @error('remark_usr') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bg-gray-200 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <span class="flex w-full rounded-md shadow-sm sm:ml-3 sm:w-auto">
                        <button wire:click.prevent="storeEdit()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-green-500 hover:bg-green-700 text-base leading-6 font-bold text-white shadow-sm  focus:outline-none focus:border-green-700 focus:shadow-outline-green transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Store
                        </button>
                    </span>
                    <span class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:w-auto">
                        <button wire:click="closeModalEdit()" type="button"
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