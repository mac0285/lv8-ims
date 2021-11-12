<?php

namespace App\Http\Livewire\Password;

use Livewire\Component;
use App\Models\Password;
use Livewire\WithPagination;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
class PasswordManager extends Component
{
    public $address,$user, $pass,$type ,$current_team_id,$active,$remark;
    public $password_id;
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    public $level = [];
    use WithPagination; 
    public $q;
    public $search = '';
    public $searchTerm;  
    public $sortBy = 'address';
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
    public function markAsDisable(Password $item)
    { 
        $item->active = false;
        $item->save();
        session()->flash('message', 'Disable Successfully.');
    }
    public function render()
    {
       // return view('livewire.password.password-manager');
    $passwords = Password::select( 'id','address','user','pass','type','remark','current_team_id','active')
    ->where('current_team_id', auth()->user()->current_team_id) 
    ->when( $this->q, function($query) {
        return $query->where(function( $query) {
            $query->where('address', 'like', '%'.$this->q. '%')
                ->orWhere('user', 'like', '%' .$this->q. '%')
                ->orWhere('type', 'like', '%' .$this->q. '%');
            });
        })->when($this->active, function( $query) {
            return $query->active();
        })->orderBy( $this->sortBy, $this->sortAsc ? 'ASC' : 'DESC');
             
        $passwords = $passwords->paginate(15);
        return view('livewire.password.password-manager', [
            'passwords' => $passwords]);
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
    public function closeModal()
    {
        $this->isModalOpen = false;
    }
    private function resetCreateForm(){ 
        $this->address= '';
        $this->user='';
        $this->pass= '';
        $this->type= '';
        $this->remark= '';
        $this->current_team_id= '';
        $this->active= '';
    }
    public function edit($id)
    {
        $passwords = Password::findOrFail($id);
        $this->password_id = $id;
        $this->address= $passwords->address;
        $this->user= $passwords->user;
        $this->pass= $passwords->pass;
        $this->type= $passwords->type; 
        $this->remark= $passwords->remark; 
        $this->current_team_id= $passwords->current_team_id;
        $this->active= $passwords->active;
        $this->openModalEdit();
    }

    public function store()
    {
        $this->validate([ 
            'address' => 'required|min:1',
            'user' => 'required',
            'pass' => 'required',
            'type' => 'required',
            'remark' => 'required',
        ]);
       // $nextbuy=Carbon::create(order_date);
       Password::Create([ 
            'address' => $this->address,
            'user' => $this->user,
            'pass' => $this->pass,
            'type' => $this->type,
            'remark' => $this->remark,
            'current_team_id'=>\Auth::user()->current_team_id,
            'active'=>true,
        ]);
        session()->flash('message', 'Data added successfully.');
        $this->resetCreateForm();
        $this->closeModal();
    }
    public function storeEdit()
    {
        $this->validate([ 
            'address' => 'required|min:1',
            'user' => 'required',
            'pass' => 'required',
            'type' => 'required', 
        ]);
            
        if ($this->password_id) {
            $passwords = Password::find($this->password_id);
            $passwords->update([
                'address' => $this->address,
                'user' => $this->user,
                'pass' => $this->pass,
                'type' => $this->type,
                'remark' => $this->remark,
                'current_team_id'=>\Auth::user()->current_team_id,
                'active'=>true,
            ]);
            
            session()->flash('message', 'passwords Updated Successfully.');
            $this->resetCreateForm();
            $this->closeModalEdit();

        }
    }

}
