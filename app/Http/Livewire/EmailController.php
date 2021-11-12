<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Emailaccount;

use App\Models\Departement;
use Carbon\Carbon;

class EmailController extends Component
{
    public $name_usr,$email_usr,$pwd_usr,$email_type,$dept_usr,$remark_usr,$month_date,$current_team_id,$active,$emails;
    use WithPagination; 
    public $search = '';
    public $searchTerm; 
    public $q;   
    public $sortBy = 'dept_usr';
    public $sortAsc = true;
    public $item;
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    public function updatingSearch()
    {
        $this->resetPage();
    }
    private function resetCreateForm(){ 
        $this->name_usr= '';
        $this->email_usr='';
        $this->pwd_usr= ''; 
        $this->email_type= ''; 
        $this->dept_usr= ''; 
        $this->remark_usr= ''; 
        $this->month_date= ''; 
        $this->current_team_id= ''; 
    }
    public function sortBy( $field) 
    {
        if( $field == $this->sortBy) {
            $this->sortAsc = !$this->sortAsc;
        }
        $this->sortBy = $field;
    }
    public function markAsHide(Emailaccount $item)
    {
        $item->active = 0;
        $item->save();
    }
    public function markAsDisable(Emailaccount $item)
    {
        //$item->active = "Close";
        $item->active = false;
        $item->save();
        session()->flash('message', 'Disable Successfully.');
    }
    public function render()
    {
        //$list= Emailaccount::where('active', 1)->paginate(15);
       
        //dd($emails);
        //var_dump($emails);
       // return view('livewire.email.email-crud',compact('list'));
//public $name_usr,$email_usr,$pwd_usr,$email_type,$dept_usr,$remark_usr,$month_date,$current_team_id,$active,$emails;
        $dept=Departement::SELECT('id','group', 'dept')
        ->where('active', 1)->get(); 
        $list = Emailaccount::select('id','name_usr','email_usr','pwd_usr','email_type','dept_usr','remark_usr','month_date','current_team_id','active')
       ->where('current_team_id', auth()->user()->current_team_id)
       ->where('active', 1)
        ->when( $this->q, function($query) {
            return $query->where(function( $query) {
            $query->Where('name_usr', 'like', '%' .$this->q. '%')
            ->orWhere('email_usr', 'like', '%' .$this->q. '%')
            ->orWhere('pwd_usr', 'like', '%' .$this->q. '%')
            ->orWhere('dept_usr', 'like', '%' .$this->q. '%');
           });
       })->when($this->active, function( $query) {
           return $query->active();
      // })->orderByRaw('dept_comp - created_at DESC');
   })->orderBy( $this->sortBy, $this->sortAsc ? 'DESC' : 'ASC');
        
   $list = $list->paginate(15);
   return view('livewire.email.email-crud', [
       'list' => $list,'dept'=>$dept,
   ]);    


    }
    public function store()
    {
        $this->validate([ 
            'name_usr' => 'required', 
            'email_usr' => 'required', 
            'pwd_usr' => 'required|min:2', 
            'email_type' => 'required|min:2', 
            'dept_usr' => 'required', 

        ]);
       // $nextbuy=Carbon::create(order_date);
       Emailaccount::Create([ 
            'name_usr' => $this->name_usr,
            'email_usr' => $this->email_usr,
            'pwd_usr' => $this->pwd_usr,
            'email_type' => $this->email_type,
            'dept_usr' => $this->dept_usr,
            'remark_usr' => $this->remark_usr,
            'month_date' => Carbon::now(),  
            'current_team_id'=>\Auth::user()->current_team_id,
            'active'=>true,

        ]);

        session()->flash('message', 'Data added successfully.');
        $this->resetCreateForm();
        $this->closeModal();
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
     
    public function edit($id)
    {
        $contacts = Emailaccount::findOrFail($id);
        $this->email_id = $id;
        $this->name_usr=$contacts->name_usr;
        $this->email_usr=$contacts->email_usr;
        $this->pwd_usr=$contacts->pwd_usr;        
        $this->email_type=$contacts->email_type; 
        $this->dept_usr=$contacts->dept_usr;
        $this->remark_usr=$contacts->remark_usr;
        $this->current_team_id= $contacts->current_team_id;
        //$this->active= $usages->active;
        $this->openModalEdit();
    }

    public function storeEdit()
    {
        $validatedDate = $this->validate([
            'name_usr' => 'required', 
            'email_usr' => 'required', 
            'pwd_usr' => 'required|min:2', 
            'email_type' => 'required|min:2', 
            'dept_usr' => 'required', 
            
        ]);
            
        if ($this->email_id) {
            $contacts = Emailaccount::find($this->email_id);
            $contacts->update([
            'name_usr' => $this->name_usr,
            'email_usr' => $this->email_usr,
            'pwd_usr' => $this->pwd_usr,
            'email_type' => $this->email_type, 
            'dept_usr'=>$this->dept_usr,
            'remark_usr' => $this->remark_usr,
            'month_date' => Carbon::now(), 
            'active'=>true,
            ]);
            
            session()->flash('message', 'Email Updated Successfully.');
            $this->resetCreateForm();
            $this->closeModalEdit();

        }
    }
}
