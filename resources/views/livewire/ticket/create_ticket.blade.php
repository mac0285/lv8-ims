<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">

    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>
      
   
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
             <!-- button close -->
    <button wire:click="closeModal()"class=" -top-37 -right-7 bg-red-500 hover:bg-red-600 text-2xl w-10 h-10  focus:outline-none text-white">
    &cross;
    </button>
    <label for="name_usr" class="uppercase md:text-sm text-xs text-gray-500 text-light font-semibold">Create Ticket</label>
          
            <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="">

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 md:gap-8 mt-5 mx-7">
                            <div class="grid grid-cols-1">
                            <label for="ticket_title" class="block text-gray-700 text-sm font-bold mb-2">Tittle{{$ticket_id}}</label>
                            <input type="text" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"
                             id="ticket_title" placeholder="Enter Title" wire:model="ticket_title">
                            @error('ticket_title') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>
                        <div class="grid grid-cols-1">
                            <label for="ticket_title" class="block text-gray-700 text-sm font-bold mb-2">Tittle{{$ticket_id}}</label>
                          
                            <select id="ticket_categories" wire:model="ticket_categories" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="ticket_categories">
                                    <option value="">Select Categories</option>
                                    <option value="WFX">WFX</option>
                                    <option value="Network">Network</option>
                                    <option value="Hardware">Hardware</option>
                                    <option value="Software">Software</option>
                       </select>
                       @error('ticket_categories') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>
                    <div class="grid grid-cols-1">
                        <label for="ticket_title" class="block text-gray-700 text-sm font-bold mb-2">Tittle{{$ticket_id}}</label>
                          
                      <select id="ticket_priority" wire:model="ticket_priority" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="ticket_priority">
                                    <option value="">Select Priority</option>
                                    <option value="low">Low</option>
                                    <option value="medium">Medium</option>
                                    <option value="high">High</option>
                                    <option value="urgent">Urgent</option>
                                </select>
                                @error('ticket_priority') <span class="text-red-500">{{ $message }}</span>@enderror
                            </div>
                            <div class="grid grid-cols-1">
                                <label for="ticket_title" class="block text-gray-700 text-sm font-bold mb-2">Tittle{{$ticket_id}}</label>
                          
                                <select id="ticket_status" wire:model="ticket_status" type="" class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="ticket_status">
                                    <option value="">Select Status</option>
                                    <option value="Open">Open</option>
                                    <option value="Progress">Progress</option> 
                                </select>

                                
                            </div>
                            <div class="grid grid-cols-1">
                            <label for="ticket_desc"  class="block text-gray-700 text-sm font-bold mb-2">Enter Description</label>
                            <textarea
                                class="py-2 px-3 rounded-lg border-2 border-purple-300 mt-1 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"
                                id="ticket_desc" wire:model="ticket_desc"
                                placeholder="Description"></textarea>
                            @error('ticket_desc') <span class="text-red-500">{{ $message }}</span>@enderror
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
                    <button wire:click="closeModal()" type="button"
                        class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-bold text-gray-700 shadow-sm hover:bg-yellow-400 hover:text-gray-700 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                        Close
                    </button>
                </span>
            </div>
        </form>
        </div>
    </div>
</div>