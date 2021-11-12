 
    <table class="table-fixed bg-with-border text-white w-full bg-gray-500 divide-y px-4 py-4 my-3 shadow-md rounded">
        <thead>
                <tr>
                    <th class="px-6 py-3 text-left text-xs font-medium  uppercase tracking-wide">
                        <div class="flex items-center">
                            <button wire:click="sortBy('created_at')">Date &duarr;</button>
                            <a sortField="created_at" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                        </div>  
                    </th>
                    <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider">
                            <div class="flex items-center">
                                    <button wire:click="sortBy('type')">Category &duarr;</button>
                                    <a sortField="type" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                            </div>    
                    </th>
                    <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider">Topic </th>
                    <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider">Item  </th>
                    <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider">
                            <div class="flex items-center">
                                    <button wire:click="sortBy('done')">Status &duarr;</button>
                                    <a sortField="done" :sort-by="$sortBy" :sort-asc="$sortAsc" />
                            </div>
                    </th>
                    <th class="px-6 py-3 text-left text-xs font-medium   uppercase tracking-wider">Actions</th>
                </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
        @if($list->count())
        @foreach ($list as $item)
            <tr class="bg-white-200 hover:bg-gray-700" >
            <td class="px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"> </td>
            <td class="px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->type }}</td>
             <td class="px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->topic }}</td>
                <td class="px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">{{ $item->description }}</td>
                <td class="px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">  @if($item->done)
                    <button class="border-green-700 border-2  text-gray   hover:bg-green-700   px-6 rounded-full">Done</button> 
                    @else <button class="bg-red-800 text-white px-6 rounded-full"> To Do </button>@endif</td>
                <td class="px-2 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    @if($item->done)
                        <!-- <button wire:click="markAsToDo({{ $item->id }})" class="bg-green-200 text-red-600 px-6 rounded-full">
                            Mark as "To Do"
                        </button>  
                         <button wire:click="markAsDisable({{ $item->id }})" class="bg-red-100 text-red-600 px-6 rounded-full">
                        &cross;
                        </button>
                        <button   class=" bg-green-500 hover:bg-green-700 text-white px-3 rounded-full">&check;
                        </button>--> 
                        <button wire:click="markAsHide({{ $item->id }})" class="bg-red-600 text-white px-6 hover:bg-blue-700 hover:text-gray px-6 rounded-full ">
                            &cross;
                        </button>
                    @else
                        <button wire:click="markAsDone({{ $item->id }})" class="bg-blue-800 text-white px-6 hover:bg-blue-700 hover:text-gray px-6 rounded-full ">
                            Mark as "Done"
                        </button>

                        
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

    {{ $list ->links() }}