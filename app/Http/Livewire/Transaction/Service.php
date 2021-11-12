<?php

namespace App\Http\Livewire\Transaction;

use Livewire\Component;
use App\Models\Supplies;
use App\Models\Search; 
use App\Models\Service as ServiceHw;
use App\Models\Komputer;
use App\Models\Departement;
use Haruncpi\LaravelIdGenerator\IdGenerator;
use Maatwebsite\Excel\Facades\Excel; 
use Livewire\WithPagination;
use Carbon\Carbon;
 
class Service extends Component
{
    public $query;
    public $ServiceHwid,$hw_type;
    public $active; 
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    public $level = [];
    use WithPagination; 
    public $search = '';
    public   $searchTerm; 
    public $sortBy = 'month_date';
    public $sortAsc = true;
    public $item;
    //public $idgen = IdGenerator::generate(['table' => 'ServiceHw','field'=>'ServiceHwid', 'length' => 10, 'prefix'=>date('ymd')]);
    public $idgen;
    public function updatingSearch()
    {
        $this->resetPage();
    }
    public function create()
    {
        $this->resetCreateForm();
        $this->openModalPopover();
    }
    public function openModalPopover()
    {
        $this->isModalOpen = true;
    }
    public function openModalEdit()
    {
        $this->isModalEdit = true;
    }
    public function closeModalEdit()
    {
        $this->isModalEdit = false;
    }
    public function closeModalPopover()
    {
        $this->isModalOpen = false;
    }
    public function cancel()
    {
        $this->updateMode = false;
        $this->resetInputFields();
    }
    private function resetCreateForm(){ 
        $this->ServiceHwid= ''; 
        $this->ip_comp= '';    
        $this->hostname_comp= ''; 
        $this->sku_supplies= ''; 
        $this->hw_type= ''; 
        $this->diagnose= ''; 
        $this-> barcode_supplies= ''; 
        $this->qty= ''; 
        $this->remark= ''; 
        $this->dept_comp= ''; 
        $this->month_date= ''; 
        $this->current_team_id= ''; 
        $this->active= '';        
    }
    public function delete($id)
    {
        ServiceHw::find($id)->delete();
        session()->flash('message', 'Supplies deleted.');
    }
    public function render()
    {   
        $komputers=Komputer::SELECT('id','ip_comp', 'userpc', 'dept_comp')
        ->where('active', 1)->get();

        $dept=Departement::SELECT('id','group', 'dept')
        ->where('active', 1)->get();
        //dd($Komputer);
        //var_dump($Komputer->ip_comp); 
        $query='%'.$this->query.'%';       
        $searchs = ServiceHw::SELECT('id','ServiceHwid','ip_comp','hostname_comp','sku_supplies','hw_type',
        'diagnose','barcode_supplies','qty','remark','dept_comp','month_date' ,'current_team_id','active')
        ->where('current_team_id', auth()->user()->current_team_id)
        ->where('active', 1)
        ->whereYear('month_date', '=', Carbon::now()->year)
        ->when( $this->query, function($query) {
            return $query->where(function( $query) {
                $query->where('active', 1)                        
                    ->orWhere('ServiceHwid', 'like', $query)
                    ->orWhere('ip_comp', 'like', $query)
                    ->orWhere('sku_supplies', 'like', $query);
            });
        })->when($this->active, function( $query) {
            return $query->active();
       // })->orderByRaw('dept_comp - created_at DESC');
    })->orderBy( $this->sortBy, $this->sortAsc ? 'DESC' : 'ASC');
         
    $searchs = $searchs->paginate(10);
    return view('livewire.transaction.service', [
        'searchs' => $searchs,'komputers'=>$komputers,'dept'=>$dept
    ]);

    }
    public function export()
    {
         // return Excel::download(new KomputerExport, 'Komputer.xls');
         session()->flash('message', 'On Development.');
    }
    public function markAsDisable(ServiceHw $item)
    {
        //$item->active = "Close";
        $item->active = false;
        $item->save();
        session()->flash('message', 'Disable Successfully.');
    }
    public function edit($id)
    {
        $searchs = ServiceHw::findOrFail($id);
        $this->searchs_id = $id;
        $this->ServiceHwid=$searchs->ServiceHwid;
        $this->ip_comp=$searchs->ip_comp; 
        $this->hostname_comp= $searchs->hostname_comp;
        $this->sku_supplies= $searchs->sku_supplies;
        $this->hw_type= $searchs->hw_type;
        $this->diagnose= $searchs->diagnose;
        $this->barcode_supplies= $searchs->barcode_supplies;
        $this->qty= $searchs->qty ;
        $this->month_date = $searchs->month_date;  
        $this->dept_comp= $searchs->dept_comp;
        $this->current_team_id= $searchs->current_team_id;
        $this->remark= $searchs->remark;   
        $this->openModalEdit();
    }
    //$idgen = IdGenerator::generate(['table' => 'ServiceHw','field'=>'ServiceHwid', 'length' => 10, 'prefix'=>date('ymd')]);
    
    public function store()
    {
        $this->validate([ 
            'ip_comp'=>'required|min:1',   
            'sku_supplies'=>'required|min:1', 
            'barcode_supplies'=>'required|min:1', 
            'qty'=>'required|min:1', 
            'diagnose'=>'required|max:120', 
            'dept_comp'=>'required' 
        ]);
        $idgen = IdGenerator::generate(['table' => 'Services','field'=>'ServiceHwid', 'length' => 10, 'prefix'=>date('ymd')]);
        ServiceHw::Create([  
            'ServiceHwid'=> $idgen,           
            'ip_comp'=> $this->ip_comp,              
            'hostname_comp'=>\Auth::user()->name,
            'sku_supplies'=> $this->sku_supplies,
            'hw_type'=> $this->hw_type, 
            'diagnose'=>$this->diagnose, 
            'barcode_supplies'=> $this->barcode_supplies,
            'qty'=> $this->qty,
            'remark'=> $this->remark, 
            'month_date'=>Carbon::now(),             
            'dept_comp'=> $this->dept_comp,
            'current_team_id'=>\Auth::user()->current_team_id,
            'active'=>true
        ]);

        session()->flash('message', 'Data Created successfully.');
        $this->resetCreateForm();
        $this->closeModalPopover();
        
    }
    public function storeEdit()
    {
         
        $this->validate([
        // Execution doesn't reach here if validation fails.
        'ip_comp'=>'required|min:1',  
        'hostname_comp'=>'required|min:1', 
        'sku_supplies'=>'required|min:1', 
        'barcode_supplies'=>'required|min:1', 
        'qty'=>'required|min:1',   
        'remark'=>'required|min:1', 
        'dept_comp'=>'required'
        ]);
         
        if ($this->searchs_id) {
            $record = ServiceHw::find($this->searchs_id);
            $record->update([
                'sku_supplies'=> $this->sku_supplies,
                'hw_type'=> $this->hw_type, 
                'diagnose'=>$this->diagnose, 
                'barcode_supplies'=> $this->barcode_supplies,
                'qty'=> $this->qty,
                'remark'=> $this->remark, 
                'dept_comp'=> $this->dept_comp 
            ]);

            $this->resetCreateForm();
            $this->updateMode = false;
        } 
             
            
            session()->flash('message', 'Usages Updated Successfully.');
            $this->resetCreateForm();
            $this->closeModalEdit();

        
    }
     
}
