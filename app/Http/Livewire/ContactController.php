<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Contact;

use App\Models\Departement;
use Carbon\Carbon;
use Maatwebsite\Excel\Facades\Excel; 

class ContactController extends Component
{
    public $namedisplay,$group,$dept,$lantai,$extnumber,$digital,$remark,$active,$current_team_id;
    public $isDialogOpen = 0;
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    
    public $q;
    public $search = '';
    public $searchTerm;
  
    public $sortBy = 'dept';
    public $sortAsc = true;
    public $item;
    public function sortBy( $field) 
    {
        if( $field == $this->sortBy) {
            $this->sortAsc = !$this->sortAsc;
        }
        $this->sortBy = $field;
    }
    public function updatingSearch()
    {
        $this->resetPage();
    }
    public function render()
    {       
            $depts=Departement::SELECT('id','group', 'dept')->where('active', 1)->get();      
            $contacts = Contact::select('id','namedisplay','group','dept','lantai','extnumber','digital','remark','active','current_team_id')
                ->where('current_team_id', auth()->user()->current_team_id)
                ->where('active', 1)
                ->when( $this->q, function($query) {
                    return $query->where(function( $query) {
                        $query->where('namedisplay', 'like', '%'.$this->q. '%')
                            ->orWhere('dept', 'like', '%' .$this->q. '%')
                            ->orWhere('extnumber', 'like', '%' .$this->q. '%')
                            ->orWhere('digital', 'like', '%' .$this->q. '%');
                    });
                })->when($this->active, function( $query) {
                    return $query->active();
               // })->orderByRaw('dept_comp - created_at DESC');
            })->orderBy( $this->sortBy, $this->sortAsc ? 'ASC' : 'DESC');
                 
            $contacts = $contacts->paginate(15);
            return view('livewire.extension.contact-controller', [
                'contacts' => $contacts,'depts'=>$depts
            ]);

    }
    public function store()
    {
        $this->validate([ 
            'extnumber' => 'required', 
            'namedisplay' => 'required', 
            'group' => 'required', 
            'dept' => 'required', 
            'lantai' => 'required',  
        ]);
        
        Contact::Create([  
            'extnumber' => $this->extnumber,
            'namedisplay' => $this->namedisplay,
            'group' => $this->group,
            'dept' => $this->dept, 
            'lantai'=>$this->lantai,
            'current_team_id'=>\Auth::user()->current_team_id,
            'active'=>true,
        ]);

        session()->flash('message', 'Contact Created Successfully.');
        $this->resetCreateForm();
        $this->closeModalPopover();
    }
    public function edit($id)
    {
        $contacts = Contact::findOrFail($id);
        $this->contact_id = $id;
        $this->extnumber=$contacts->extnumber;
        $this->namedisplay=$contacts->namedisplay;
        $this->group=$contacts->group;
        $this->dept=$contacts->dept;
        $this->lantai=$contacts->lantai;
        $this->current_team_id= $contacts->current_team_id;
        //$this->active= $usages->active;
        $this->openModalEdit();
    }
    public function storeEdit()
    {
        $validatedDate = $this->validate([
            'extnumber' => 'required', 
            'namedisplay' => 'required', 
            'group' => 'required', 
            'dept' => 'required', 
            'lantai' => 'required', 
            
        ]);
            
        if ($this->contact_id) {
            $contacts = Contact::find($this->contact_id);
            $contacts->update([
                'extnumber' => $this->extnumber,
                'namedisplay' => $this->namedisplay,
                'group' => $this->group,
                'dept' => $this->dept, 
                'lantai'=>$this->lantai,
                'current_team_id'=>\Auth::user()->current_team_id,
                'active'=>true,
            ]);
            
            session()->flash('message', 'Contact Updated Successfully.');
            $this->resetCreateForm();
            $this->closeModalEdit();

        }
    }
    public function create()
    {
        $this->resetCreateForm();
        $this->openModalPopover();
    }

    public function openModalPopover()
    {
        $this->isDialogOpen = true;
    }

    public function closeModalPopover()
    {
        $this->isDialogOpen = false;
    }
    public function cancel()
    {
        $this->updateMode = false;
        $this->resetCreateForm();
    }
    private function resetCreateForm(){
        $this->extnumber = '';
        $this->namedisplay = '';
        $this->group = '';
        $this->dept = '';
        $this->lantai = '';
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

    
    
}
