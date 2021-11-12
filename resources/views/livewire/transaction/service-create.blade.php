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
    <label for="name_usr" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Create Service  </label>
        <form  autocomplete="off">
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="">

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                            <div class="grid grid-cols-1">
                                <label for="ip_comp" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">IP (192.168.xx.xx)</label>
                                <!--<input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"type="text" id="ip_comp" placeholder="192.168.xx.xx" wire:model="ip_comp">
                                    -->
                                    <select  wire:model="ip_comp" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="ip_comp">>
                                    <option value="">Select IP Computer</option>
                                    @foreach($komputers as $komputers)
                                    <option value="{{$komputers->ip_comp}}">{{$komputers->userpc}} ({{$komputers->ip_comp }} )</option>
                                    @endforeach
                                    </select>

                                  @error('ip_comp') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                             
                        <div class="grid grid-cols-1">
                        <label for="sku_supplies" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Replacement part</label>
                                <select id="sku_supplies" wire:model="sku_supplies" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="os_comp">
                                    <option value="">Select Supplies</option>
                                    <option value="Ram">Ram</option>
                                    <option value="Motherboard">Motherboard</option>
                                    <option value="HDD">HDD</option> 
                                    <option value="Processor">Processor</option>
                                    <option value="Power Suply">Power Suply</option>
                                    <option value="Mouse">Mouse</option>
                                    <option value="Keyboard">Keyboard</option>
                                    <option value="Cable">Cable</option>
                                    <option value="LCD">LCD</option>
                                    <option value="Cmos">Cmos</option>
                                    <option value="Bateray">Bateray</option>
                                    <option value="Network Card">Network Card</option>
                                    <option value="Router">Router</option>
                                    <option value="Switch">Switch</option>
                                    <option value="Access Point">Access Point</option>
                                    <option value="Connector">Connector</option>
                                    <option value="Periperal">Periperal</option>
                                    <option value="Other">Other</option>
                                </select>
                                    @error('sku_supplies') <span class="text-red-500">{{ $message }}</span>@enderror
                                </div>
                                <div class="grid grid-cols-1">
                                <label for="hw_type" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Hardware Type</label>
                                <select id="hw_type" wire:model="hw_type" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="hw_type">
                                    <option value="">Select Type</option>
                                    <option value="AiO">AiO</option>
                                    <option value="PC Buildup">PC Buildup</option>
                                    <option value="Laptop">Laptop</option>
                                    <option value="Mini PC">Mini PC</option>
                                    <option value="PC Rakitan">PC Rakitan</option>
                                    <option value="Other">Other</option>
                                    <option value="Android">Android</option>
                                </select>
                                @error('hw_type') <span class="text-red-500">{{ $message }}</span>@enderror
                                </div>
                            
                            <div class="grid grid-cols-1">
                                <label for="qty" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Quantity</label>
                                <input class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" type="number" id="qty" placeholder="Quantity" wire:model="qty"
                                    placeholder="Quantity ">
                                 @error('qty') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>

                          

                         
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                                
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
                            <div class="grid grid-cols-1">
                                <label   class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Status</label>
                                <select id="barcode_supplies" wire:model="barcode_supplies" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="barcode_supplies">
                                    <option value="">Status</option>
                                    <option value="Solve">Solve</option>
                                    <option value="Pending">Pending</option>  
                                    <option value="Disposal">Disposal</option>  
                                </select>
                                @error('antivir') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                            <div class="col-span-6 sm:col-span-4">
                                <label   class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Diagnoses</label>
                                   <textarea id="diagnose" wire:model="diagnose" class="py-2 px-3 w-full rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"  rows="2"  placeholder="Input Your Issues"></textarea>
                                   @error('diagnose') <span class="text-red-500">{{ $message }}</span>@enderror
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