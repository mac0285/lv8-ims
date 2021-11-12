<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Usages;
use Maatwebsite\Excel\Facades\Excel; 
use Livewire\WithPagination;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth; 
use App\Exports\UsageExport;
class Usage extends Component
{
    public $Connection,$type,$inbound,$outbound,$total,$remark,$month_date,$current_team_id,$active,$usage_id;
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    public $level = [];
    use WithPagination;
    public $search = '';
    public $searchTerm; 
    public $q;    
    public $confirmingItemDeletion = false;
    public $sortBy = 'month_date';
    public $sortAsc = true;
    public $item;
    //public $year=Carbon::now('y');
    public function updatingSearch()
    {
        $this->resetPage();
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
        //return view('livewire.usage');

       /* $searchTerm='%' .$this->searchTerm . '%';
        return view('livewire.usage.usage', [
            'usages' => Usages::where('active', 1)
            ->where('current_team_id', \Auth::user()->current_team_id)
            ->where('Connection','like',$searchTerm)
            ->orWhere('type','like',$searchTerm)
            ->paginate(8),
        ]); */
//'Connection','type','inbound','outbound','total','remark','month_date','current_team_id','active','usage_id'
        $usages = Usages::select('id','Connection','type','inbound','outbound','total','remark','month_date','current_team_id','active')
        ->where('current_team_id', auth()->user()->current_team_id)
            ->whereYear('month_date', '=', Carbon::now()->year)
            ->when( $this->q, function($query) {
                return $query->where(function( $query) {
                    $query->where('Connection', 'like', '%'.$this->q. '%')
                        ->orWhere('type', 'like', '%' .$this->q. '%')
                        ->orWhere('remark', 'like', '%' .$this->q. '%');
                });
            })->when($this->active, function( $query) {
                return $query->active();
            })->orderBy( $this->sortBy, $this->sortAsc ? 'ASC' : 'DESC');
             
        $usages = $usages->paginate(12);
        return view('livewire.usage.usage', [
            'usages' => $usages,
        ]);



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
    public function markAsDisable(Usages $item)
    {
        //$item->active = "Close";
        $item->active = false;
        $item->save();
        session()->flash('message', 'Usages Disabled Successfully.');
    }   
    private function resetCreateForm(){
        $this->id= '';
        $this->Connection= '';
        $this->type= '';
        $this->inbound= '';
        $this->outbound= '';
        $this->total= '';
        $this->remark= '';
        $this->month_date= ''; 
        
    }
    public function store()
    {
        $this->validate([ 
            'Connection' => 'required', 
            'type' => 'required', 
            'inbound' => 'required', 
            'outbound' => 'required', 
            'remark' => 'required', 
            'month_date' => 'required', 


        ]);
        
        Usages::Create([  
            'Connection' => $this->Connection,
            'type' => $this->type,
            'inbound' => $this->inbound,
            'outbound' => $this->outbound, 
            'total'=>$this->inbound + $this->outbound,
            'remark' => $this->remark,
            'month_date' => $this->month_date,
            'current_team_id'=>\Auth::user()->current_team_id,
            'active'=>true,
        ]);

        session()->flash('message', 'Usages Created Successfully.');
        $this->resetCreateForm();
        $this->closeModal();
        
    }
    public function cancel()
    {
        $this->updateMode = false;
        $this->resetInputFields();
    }

    public function edit($id)
    {
         
        
        $usages = Usages::findOrFail($id);
        $this->usage_id = $id; 
        $this->Connection=$usages->Connection;
        $this->type=$usages->type;
        $this->inbound=$usages->inbound;
        $this->outbound=$usages->outbound; 
        $this->remark=$usages->remark;
        $this->month_date=$usages->month_date;
        $this->current_team_id= $usages->current_team_id;
        //$this->active= $usages->active;    
        $this->openModalEdit();
    }
    public function export()
    {
       return Excel::download(new UsageExport, 'Usages.csv');
    }

    public function storeEdit()
    {
        $validatedDate = $this->validate([
            'Connection' => 'required', 
            'type' => 'required', 
            'inbound' => 'required|min:2', 
            'outbound' => 'required|min:2', 
            'remark' => 'required', 
            'month_date' => 'required',
        ]);
            
        if ($this->usage_id) {
            $usages = Usages::find($this->usage_id);
            $usages->update([
            'Connection' => $this->Connection,
            'type' => $this->type,
            'inbound' => $this->inbound,
            'outbound' => $this->outbound, 
            'total'=>$this->inbound + $this->outbound,
            'remark' => $this->remark,
            'month_date' => $this->month_date, 
            'active'=>true,
            ]);
            
            session()->flash('message', 'Usages Updated Successfully.');
            $this->resetCreateForm();
            $this->closeModalEdit();

        }
    }
}
