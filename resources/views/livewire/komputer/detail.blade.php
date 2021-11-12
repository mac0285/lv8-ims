<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
            <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="">
                        <div class="mb-4">
                            <label for="ip_comp"
                                class="block text-gray-700 text-sm font-bold mb-2">IP</label>
                            <input type="text"
                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                id="ip_comp" placeholder="Enter IP Address" wire:model="ip_comp">
                            @error('ip_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>

                        <div class="mb-4">
                            <label for="hostname_comp"
                                class="block text-gray-700 text-sm font-bold mb-2">Hostname:</label>
                            <input type="text"
                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                id="hostname_comp" wire:model="hostname_comp"
                                placeholder="Enter HostName">
                            @error('hostname_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>


                        <div class="mb-4">
                                <select id="os_comp" wire:model="os_comp" type="" class="form-control" name="os_comp">
                                    <option value="">Select OS Version</option>
                                    <option value="win xp">WIN XP</option>
                                    <option value="win 7">Win 7</option>
                                    <option value="Win 8">Win 8</option>
                                    <option value="Win 10">Win 10</option>
                                    <option value="Kerio">Kerio</option>
                                    <option value="Linux">Linux</option>
                                    <option value="Android">Android</option>
                                </select>
                                @error('os_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>

                        <div class="mb-4">
                                <select id="type_comp" wire:model="type_comp" type="" class="form-control" name="type_comp">
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

                        <div class="mb-4">
                                <select id="processor_comp" wire:model="processor_comp" type="" class="form-control" name="processor_comp">
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

                        <div class="mb-4">
                            <label for="ram_comp"
                                class="block text-gray-700 text-sm font-bold mb-2">RAM:</label>
                            <input type="number"
                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                id="ram_comp" wire:model="ram_comp"
                                placeholder="Enter RAM">
                            @error('ram_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>

                        <div class="mb-4">
                            <label for="hdd_comp"
                                class="block text-gray-700 text-sm font-bold mb-2">HDD/SSD:</label>
                            <input type="number"
                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                id="hdd_comp" wire:model="hdd_comp"
                                placeholder="Enter Size">
                            @error('hdd_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>
                        <div class="mb-4">
                                <select id="dept_comp" wire:model="dept_comp" type="" class="form-control" name="dept_comp">
                                    <option value="">Select Departement</option>
                                    <option value="IT">IT</option>
                                    <option value="Production">Production</option>
                                    <option value="Comercial">Comercial</option>
                                    <option value="HRD GA">HRD GA</option> 
                                     <option value="Acounting">Acounting</option>
                                    <option value="Design">Design</option> 
                                    <option value="Other">Other</option> 
                                </select>
                                @error('dept_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>



                    </div>
                </div>
                <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    
                    <span class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:w-auto">
                        <button wire:click="closeModalPopover()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-bold text-gray-700 shadow-sm hover:text-gray-700 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Close
                        </button>
                    </span>
                </div>
            </form>
        </div>
    </div>
</div>