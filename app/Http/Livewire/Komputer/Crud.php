<?php

namespace App\Http\Livewire\Komputer;

use Livewire\Component;
use Illuminate\Support\Facades\Storage;
use App\Models\Komputer;
use App\Models\Departement;
use Maatwebsite\Excel\Facades\Excel; 
use Livewire\WithPagination;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use App\Exports\KomputerExport;
use PDF;

class Crud extends Component
{
//Remove the line
 //public $komputers;
//And replace $this->posts by $posts in the render function:
    public $ip_comp, $userpc,$hostname_comp,$os_comp,$type_comp, $processor_comp,
    $ram_comp,$hdd_comp,$ups,$office_actv,$antivir,$dept_comp,$current_team_id,$active,$remark,$remote;
    public $komputer_id;
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    public $level = [];
    use WithPagination; 
    public $q;
    public $search = '';
    public $searchTerm;
  
    public $sortBy = 'dept_comp';
    public $sortAsc = true;
    public $item;

    public function updatingSearch()
    {
        $this->resetPage();
    }
    public function render()
    {
        $dept=Departement::SELECT('id','group', 'dept')
        ->where('active', 1)->get();
        $komputers = Komputer::select( 'id','ip_comp', 'userpc','hostname_comp','os_comp','brand','type_comp', 'processor_comp',
        'ram_comp','hdd_comp','ups','office_actv','antivir','dept_comp','current_team_id','active','remark','remote')
        ->where('current_team_id', auth()->user()->current_team_id)
        ->where('active', 1)
            ->when( $this->q, function($query) {
                return $query->where(function( $query) {
                    $query->where('ip_comp', 'like', '%'.$this->q. '%')
                        ->orWhere('hostname_comp', 'like', '%' .$this->q. '%')
                        ->orWhere('os_comp', 'like', '%' .$this->q. '%')
                        ->orWhere('type_comp', 'like', '%' .$this->q. '%')
                        ->orWhere('dept_comp', 'like', '%' .$this->q. '%')
                        ->orWhere('userpc', 'like', '%' .$this->q. '%');
                });
            })->when($this->active, function( $query) {
                return $query->active();
           // })->orderByRaw('dept_comp - created_at DESC');
        })->orderBy( $this->sortBy, $this->sortAsc ? 'ASC' : 'DESC');
             
        $komputers = $komputers->paginate(15);
        return view('livewire.komputer.crud', [
            'komputers' => $komputers,'dept'=>$dept
        ]);
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


    private function resetCreateForm(){ 
        $this->ip_comp= '';
        $this->userpc= '';
        $this->hostname_comp= '';
        $this->os_comp= '';
        $this->brand= '';
        $this->type_comp= '';
        $this->processor_comp= '';
        $this->ram_comp= '';
        $this->hdd_comp= '';
        $this->ups= '';
        $this->office_actv= '';
        $this->antivir='';
        $this->dept_comp= '';
        $this->current_team_id= '';
        //$this->active= '';
    }

    public function store()
    {
        $this->validate([ 
            'ip_comp'=> 'required|min:2',
            'userpc'=> 'required|min:3',
            'hostname_comp'=> 'required|min:2',
            'os_comp'=> 'required',
            'brand'=> 'required',
            'type_comp'=> 'required', 
            'processor_comp'=> 'required',
            'ram_comp'=>'required|min:1',
            'hdd_comp'=>'required|min:1',
            //'ups'=> 'required',
            //'office_actv'=> 'required',
            //'antivir'=> 'required',
            'dept_comp'=> 'required',  
        ]);
        
        Komputer::Create([ 
            'ip_comp'=> $this->ip_comp,
            'userpc'=>$this->userpc,
            'hostname_comp'=> $this->hostname_comp,
            'os_comp'=> $this->os_comp,
            'brand'=> $this->brand,
            'type_comp'=> $this->type_comp, 
            'processor_comp'=> $this->processor_comp,
            'ram_comp'=> $this->ram_comp,
            'hdd_comp'=> $this->hdd_comp,
            'ups'=> $this-> ups,
            'office_actv'=> $this-> office_actv,
            'antivir'=> $this-> antivir,
            'dept_comp'=> $this->dept_comp,
            'current_team_id'=>\Auth::user()->current_team_id,
            'active'=>true
        ]);

        session()->flash('message', $this->komputer_id ? 'Data Komputer updated.' : 'Data Komputer created.');
        $this->resetCreateForm();
        $this->closeModalPopover();
        
    }
    public function cancel()
    {
        $this->updateMode = false;
        $this->resetInputFields();
    }
    public function delete($id)
    {
        Komputer::find($id)->delete();
        session()->flash('message', 'Komputer deleted.');
    }
    public function edit($id)
    {
        $komputer = Komputer::findOrFail($id);
        $this->komputer_id = $id;
        $this->ip_comp=$komputer->ip_comp;
        $this->userpc=$komputer->userpc;
        $this->hostname_comp= $komputer->hostname_comp;
        $this->os_comp= $komputer->os_comp;
        $this->brand= $komputer->brand;
        $this->type_comp= $komputer->type_comp;
        $this->processor_comp= $komputer->processor_comp;
        $this->ram_comp= $komputer->ram_comp;
        $this->hdd_comp= $komputer->hdd_comp;
        $this-> ups= $komputer->ups;
        $this-> office_actv= $komputer->office_actv;
        $this-> antivir= $komputer->antivir;
        $this->dept_comp= $komputer->dept_comp;
        $this->current_team_id= $komputer->current_team_id;
        $this->remark= $komputer->remark;
        $this->remote= $komputer->remote;
        //$this->active= $komputer->active;    
        $this->openModalEdit();
    }

    public function detail($id)
    {
        $komputer = Komputer::findOrFail($id);
        $this->komputer_id = $id;
        $this->ip_comp=$komputer->ip_comp;
        $this->userpc=$komputer->userpc;
        $this->hostname_comp= $komputer->hostname_comp;
        $this->os_comp= $komputer->os_comp;
        $this->brand= $komputer->brand;
        $this->type_comp= $komputer->type_comp;
        $this->processor_comp= $komputer->processor_comp;
        $this->ram_comp= $komputer->ram_comp;
        $this->hdd_comp= $komputer->hdd_comp;
        $this-> ups= $komputer->ups;
        $this-> office_actv= $komputer->office_actv;
        $this-> antivir= $komputer->antivir;
        $this->dept_comp= $komputer->dept_comp;
        $this->current_team_id= $komputer->current_team_id;
        $this->active= $komputer->active;    
        $this->openModalPopover();
    }
    public function markAsDisable(Komputer $item)
    {
        //$item->active = "Close";
        $item->active = false;
        $item->save();
        session()->flash('message', 'Disable Successfully.');
    }
    public function export()
    {
        //return Excel::download(new KomputerExport, 'users.xlsx');
        //$filename = 'export.csv';
       // return Komputer::all('ip_comp', 'hostname_comp','os_comp','type_comp','processor_comp', 'ram_comp', 'hdd_comp','dept_comp')->where('active',1)->download('export.csv');
       return Excel::download(new KomputerExport, 'Komputer.xls');
    }
    // Generate PDF
     
    public function generateBarcode()
    {
         

       // return PDF::download(new KomputerExport, 'Komputer.pdf');

 
        // retreive all records from db
        $data = Komputer::all();
  
        // share data to view
        view()->share('komputer',$data);
        $pdf = PDF::loadView('livewire.komputer.pdf_view', $data);
  
        // download PDF file with download method
        return $pdf->download('pdf_file.pdf');
    }
    public function sortBy( $field) 
    {
        if( $field == $this->sortBy) {
            $this->sortAsc = !$this->sortAsc;
        }
        $this->sortBy = $field;
    }
    public function storeEdit()
    {
         
        $this->validate([
        // Execution doesn't reach here if validation fails.
        'os_comp'=>'required|min:1',
        'brand'=>'required|min:1',
        'userpc'=>'required|min:1',
        'type_comp'=>'required',
        'processor_comp'=>'required',
        'ram_comp'=>'required|min:1',
        'hdd_comp'=>'required|min:1',
        'ups'=>'required',
        'office_actv'=>'required',
        'antivir'=>'required',
        'dept_comp'=>'required'
        ]);
         
        if ($this->komputer_id) {
            $record = Komputer::find($this->komputer_id);
            $record->update([
                'userpc'=>$this->userpc,
                'os_comp'=> $this->os_comp,
                'brand'=> $this->brand,
                'type_comp'=> $this->type_comp, 
                'processor_comp'=> $this->processor_comp,
                'ram_comp'=> $this->ram_comp,
                'hdd_comp'=> $this->hdd_comp,
                'ups'=> $this-> ups,
                'office_actv'=> $this-> office_actv,
                'antivir'=> $this-> antivir,
                'dept_comp'=> $this->dept_comp,
                'remark'=> $this->remark,
                'remote'=> $this->remote,
            ]);

            $this->resetCreateForm();
            $this->updateMode = false;
        } 
             
            
            session()->flash('message', 'Usages Updated Successfully.');
            $this->resetCreateForm();
            $this->closeModalEdit();

        
    }

    
}
