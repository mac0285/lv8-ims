<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">

    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>
      
   
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
             <!-- button close -->
    <button wire:click="closeModalPopover()"  class=" -top-37 -right-7 bg-red-500 hover:bg-red-600 text-2xl w-10 h-10  focus:outline-none text-white">
    &cross;
    </button>
    <label for="name_usr" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Create Computer</label>
            <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="">

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                            <div class="grid grid-cols-1">
                                <label for="ip_comp" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">IP (192.168.xx.xx)</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"type="text" id="ip_comp" placeholder="192.168.xx.xx" wire:model="ip_comp">
                                  @error('ip_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                                <label for="hostname_comp" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Host Name</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="text" id="hostname_comp" wire:model="hostname_comp"
                                   placeholder="Enter HostName">
                                   @error('hostname_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>
                      
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                        <div class="grid grid-cols-1">
                        <label for="os_comp" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">OS Version</label>
                                <select id="os_comp" wire:model="os_comp" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="os_comp">
                                    <option value="">Select OS Version</option>
                                    <option value="WIN xp">WIN XP</option>
                                    <option value="WIN 7">WIN 7</option>
                                    <option value="WIN 8">WIN 8</option>
                                    <option value="WIN 10">WIN 10</option>
                                    <option value="WIN 11">WIN 11</option>
                                    <option value="Kerio">Kerio</option>
                                    <option value="Linux">Linux</option>
                                    <option value="Android">Android</option>
                                    <option value="Other">Other</option>
                                </select>
                                @error('os_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                                </div>
                                <div class="grid grid-cols-1">
                                <label for="type_comp" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Hardware Type</label>
                                <select id="type_comp" wire:model="type_comp" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="type_comp">
                                    <option value="">Select Type</option>
                                    <option value="AiO">AiO</option>
                                    <option value="PC Buildup">PC Buildup</option>
                                    <option value="Laptop">Laptop</option>
                                    <option value="Mini PC">Mini PC</option>
                                    <option value="PC Rakitan">PC Rakitan</option>
                                    <option value="Other">Other</option>
                                    <option value="Android">Android</option>
                                </select>
                                @error('type_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                                </div>
                           
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                               
                                <div class="grid grid-cols-1">
                                <label for="userpc" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">User</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="text" id="userpc" wire:model="userpc"  placeholder="Enter User ">
                                @error('userpc') <span class="text-red-500">{{ $message }}</span>@enderror
                                </div>
                                
                                <div class="grid grid-cols-1">
                                <label for="ups" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Branding</label>
                                <select id="brand" wire:model="brand" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="brand">
                                    <option value="">Select Branding</option>
                                    <option value="DELL">DELL</option>
                                    <option value="HP">HP</option>
                                    <option value="LENOVO">LENOVO</option>
                                    <option value="ACER">ACER</option>
                                    <option value="ASUS">ASUS</option>
                                    <option value="TP-LINK">TP-LINK</option>
                                    <option value="D-LINK">D-LINK</option>
                                    <option value="SYNOLOGY">SYNOLOGY</option>
                                    <option value="SEAGATE">SEAGATE</option>
                                    <option value="GIGABYTE">GIGABYTE</option>
                                    <option value="UNIFY">UNIFY</option> 
                                    <option value="Other">Other</option> 
                                </select>
                                @error('brand') <span class="text-red-500">{{ $message }}</span>@enderror
                                </div>

                                <div class="grid grid-cols-1">
                                <label for="processor_comp" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Processor Type</label>
                                <select id="processor_comp" wire:model="processor_comp" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="processor_comp">
                                    <option value="">Select Processor</option>
                                    <option value="i3">i3</option>
                                    <option value="i5">i5</option>
                                    <option value="i7">i7</option>
                                    <option value="i9">i9</option>
                                    <option value="AMD">AMD</option>
                                    <option value="Other">Other</option> 
                                </select>
                                @error('processor_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                                </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                             <div class="grid grid-cols-1">
                             <label for="ram_comp" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">RAM Size</label> 
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="number" id="ram_comp" placeholder="Total RAM" wire:model="ram_comp">
                                @error('ram_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                            <label for="hdd" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Hardisk Size</label> 
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="number" id="hdd_comp" placeholder="Total HDD" wire:model="hdd_comp"
                                                    placeholder="Total HDD ">
                                 @error('hdd_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>

                          

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                        <div class="grid grid-cols-1">
                        <label  class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Equipment</label>
                                <select id="ups" wire:model="ups" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="ups">
                                    <option value="">Select UPS aVailabe</option>
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>  
                                </select>
                                @error('ups') <span class="text-red-500">{{ $message }}</span>@enderror
                         </div> 
                            <div class="grid grid-cols-1">
                            <label   class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Office Lisence</label>
                                <select id="office_actv" wire:model="office_actv" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="office_actv">
                                    <option value="">Select Office Lisence</option>
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>  
                                </select>
                                @error('office_actv') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                                <div class="grid grid-cols-1">
                                <label   class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Antivirus</label>
                                <select id="antivir" wire:model="antivir" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="antivir">
                                    <option value="">Select Antivirus Lisence</option>
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>  
                                </select>
                                @error('antivir') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                            <label   class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Departement</label>
                                <select id="dept_comp" wire:model="dept_comp" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="dept_comp">
                                    <option value="">Select Departement</option>
                                    @foreach($dept as $depts)
                                    <option value="{{ $depts->dept }}">{{ $depts->dept }} ({{ $depts->group }} )</option>
                                    @endforeach  
                                </select>
                                @error('dept_comp') <span class="text-red-500">{{ $message }}</span>@enderror
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