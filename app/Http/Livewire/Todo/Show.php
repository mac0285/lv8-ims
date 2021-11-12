<?php

namespace App\Http\Livewire\Todo;

use App\Models\TodoItem;
use Livewire\Component;
use Livewire\WithPagination;
use Maatwebsite\Excel\Facades\Excel; 
use App\Exports\TodoExport;
use Carbon\Carbon;
use Illuminate\Support\Facades\Blade;

class Show extends Component
{
    protected $listeners = ['saved'];
    use WithPagination;
    public $description;
    public $type;
    public $topic;
    public $active;
    public $user_id;

    public $search = '';
    public $searchTerm; 
    public $q;   
    public $sortBy = 'created_at';
    public $sortAsc = true;
    public $item;
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    //public $year = Carbon::now()->year;
    public function updatingSearch()
    {
        $this->resetPage();
    }
    private function resetCreateForm(){ 
        $this->topic= '';
        $this->description='';
        $this->done= ''; 
        $this->current_team_id= ''; 
    }
    public function sortBy( $field) 
    {
        if( $field == $this->sortBy) {
            $this->sortAsc = !$this->sortAsc;
        }
        $this->sortBy = $field;
    }
    public function render()
    {
        //$list = TodoItem::where('current_team_id', \Auth::user()->current_team_id)->sortByDesc('created_at');

        //return view('livewire.todo.show', [ 'list' => $list ]);
//--------------------------------------------
    //    return view('livewire.todo.show', [
      //      'list' => TodoItem::where('current_team_id', \Auth::user()->current_team_id)
     //      ->whereYear('created_at', '=', Carbon::now()->year)
      //    ->where('user_id', \Auth::user()->id)->where('active', 1)          
      //    ->orderBy( $this->sortBy, $this->sortAsc ? 'ASC' : 'DESC')->paginate(10)
           
   //    ]);
//--------------------------------------------------

$list = TodoItem::where('current_team_id', auth()->user()->current_team_id)
            ->where('user_id', auth()->user()->id)
            ->where('active', 1)
            ->whereYear('created_at', '=', Carbon::now()->year)
            ->when( $this->q, function($query) {
                return $query->where(function( $query) {
                    $query->where('active', 1)                        
                        ->orWhere('type', 'like', '%' .$this->q. '%')
                        ->orWhere('topic', 'like', '%' .$this->q. '%')
                        ->orWhere('description', 'like', '%' .$this->q. '%');
                });
            })->when($this->active, function( $query) {
                return $query->active();
           // })->orderByRaw('dept_comp - created_at DESC');
        })->orderBy( $this->sortBy, $this->sortAsc ? 'DESC' : 'ASC');
             
        $list = $list->paginate(10);
        return view('livewire.todo.crud', [
            'list' => $list,
        ]);
      //  $list = TodoItem::where('user_id', \Auth::user()->id)
          //  ->when( $this->q, function($query) {
          //      return $query->where(function( $query) {
              //      $query->where('Connection', 'like', '%'.$this->q. '%')
                 //       ->orWhere('type', 'like', '%' .$this->q. '%')
                 //       ->orWhere('remark', 'like', '%' .$this->q. '%');
              //  });
           // })
           // ->when($this->active, function( $query) {
          //      return $query->active();
         //   });
             
       // $list = $list->paginate(12);
       // return view('livewire.todo.show', [
      //      'list' => $list,
      //  ]);

    }

    public function saved(TodoItem $item)
    {
         $this->render();
      
         $this->resetCreateForm();
     
     
    }
    public function export()
    {
        return Excel::download(new TodoExport, 'Todolist.xls');
    }

    public function markAsDone(TodoItem $item)
    {
        $item->done = true;
        $item->save();
        session()->flash('message', 'Done Successfully.');
    }

    public function markAsHide(TodoItem $item)
    {
        $item->active = 0;
        $item->save();
    }

    public function markAsToDo(TodoItem $item)
    {
        $item->done = false;
        $item->save();
    }

    public function deleteItem(TodoItem $item)
    {
        //$item->delete();
         $item->delete();
        session()->flash('message', 'TodoItem deleted.');
    }

    public function markAsDisable(TodoItem $item)
    {
        //$item->active = "Close";
        $item->active = true;
        $item->save();
        session()->flash('message', 'Disable Successfully.');
    }

    public function create()
    {
        $this->resetCreateForm();
        $this->openModal();
    }

    public function openModal()
    {
        $this->isModalOpen = true;
    }
    
    public function openModalEdit()
    {
        $this->isModalEdit = true;
    }
    public function closeModal()
    {
        $this->isModalOpen = false;
    }
    public function closeModalEdit()
    {
        $this->isModalEdit = false;
    }
    protected $rules = [
        'topic' => 'required|min:2',
        'type' => 'required', 
        'description' => 'required|min:2'
    ];
    public function storex()
    {
        $this->validate([ 
            'topic' => 'required', 
            'type' => 'required', 
            'description' => 'required',  
        ]);
        
        TodoItem::Create([  
            'topic' => $this->topic,            
            'type' => $this->type,
            'active' => true, 
            'user_id'=>\Auth::user()->id,
            'description' => $this->description,
            'current_team_id'=>\Auth::user()->current_team_id,
        ]);

        session()->flash('message', 'To Do List Created Successfully.');
        $this->resetCreateForm();
        $this->closeModal();
        
    }
     
    public function store()
    {
        $this->validate([ 
            'topic' => 'required', 
            'type' => 'required', 
            'description' => 'required',   
        ]);
        
        TodoItem::Create([  
            'topic' => $this->topic,            
            'type' => $this->type,
            'active' => true, 
            'user_id'=>\Auth::user()->id,
            'description' => $this->description,
            'current_team_id'=>\Auth::user()->current_team_id,
        ]);

        session()->flash('message', 'Contact Created Successfully.');
        $this->resetCreateForm();
        $this->closeModal();
        
    }
}