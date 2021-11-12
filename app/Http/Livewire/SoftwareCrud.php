<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Software;
use Maatwebsite\Excel\Facades\Excel; 
use Livewire\WithPagination;
use Carbon\Carbon;

use Illuminate\Support\Facades\Auth; 
use App\Exports\SoftwareExport;
use Illuminate\Support\Facades\Blade;

class SoftwareCrud extends Component
{
    public $sku,$type,$detail,$vendor,$buy_date,$order_date,$renewal_date,$qty,$price,
    $tot_price,$current_team_id,$active; 
    public $soft_id;
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    public $level = [];
    use WithPagination; 
    public $q;
    public $search = '';
    public   $searchTerm;
    public $confirmingItemDeletion = false;

    public $sortBy = 'type';
    public $sortAsc = true;
    public $item;
    public function updatingSearch()
    {
        $this->resetPage();
    }
    public function render()
    { 
        $softwares = Software::SELECT('id','sku','type','detail','vendor','buy_date','order_date','renewal_date','qty','price','tot_price','current_team_id','active')
        ->where('current_team_id', auth()->user()->current_team_id)
        ->whereYear('created_at', '=', Carbon::now()->year)
        ->when( $this->q, function($query) {
                return $query->where(function( $query) {
                    $query->where('type', 'like', '%'.$this->q. '%')
                        ->orWhere('detail', 'like', '%' .$this->q. '%')
                        ->orWhere('vendor', 'like', '%' .$this->q. '%');
                });
            })
            ->when($this->active, function( $query) {
                return $query->active();
            })->orderBy( $this->sortBy, $this->sortAsc ? 'ASC' : 'DESC');
             
        $softwares = $softwares->paginate(15);
        return view('livewire.software.software-crud', [
            'softwares' => $softwares,
        ]);


    }
    public function sortBy( $field) 
    {
        if( $field == $this->sortBy) {
            $this->sortAsc = !$this->sortAsc;
        }
        $this->sortBy = $field;
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
    private function resetCreateForm(){
        $this->sku= '';
        $this->type= '';
        $this->detail= '';
        $this->vendor= '';
        $this->buy_date= '';
        $this->order_date= '';
        $this->renewal_date= '';
        $this->qty= '';
        $this->price= '';
        $this->tot_price= '';
        $this->current_team_id= '';
        $this->active= '';        
    }
    public function store()
    {
        $this->validate([ 
            'sku' => 'required|min:1',
            'type' => 'required',
            'detail' => 'required',
            'vendor' => 'required',
            'buy_date' => 'required',
            'order_date' => 'required',
            'qty' => 'required|numeric|between:1,300',
            'price' => 'required|numeric', 
        ]);
       // $nextbuy=Carbon::create(order_date);
        Software::Create([ 
            'sku' => $this->sku,
            'type' => $this->type,
            'detail' => $this->detail,
            'vendor' => $this->vendor,
            'buy_date' => $this->buy_date,
            'order_date' => $this->order_date,
            'renewal_date' =>Carbon::now()->addYear(1),
            'qty' => $this->qty,
            'price' => $this->price,
            'tot_price' => $this->qty * $this->price,
            'current_team_id'=>\Auth::user()->current_team_id,
            'active'=>true,
        ]);
        session()->flash('message', $this->soft_id ? 'Data updated successfully.' : 'Data added successfully.');
        $this->resetCreateForm();
        $this->closeModal();
    }
    public function storeEdit()
    {
        $validatedDate = $this->validate([
            'sku' => 'required|min:1',
            'type' => 'required',
            'detail' => 'required',
            'vendor' => 'required',
            'buy_date' => 'required',
            'order_date' => 'required',
            'qty' => 'required',
            'price' => 'required', 

        ]);       
        if ($this->soft_id) {
            $Software = Software::find($this->soft_id);
            $Software->update([ 
                'vendor' => $this->vendor,
                'buy_date' => $this->buy_date,
                'order_date' => $this->order_date,
                'renewal_date' =>  Carbon::tomorrow(),
                'qty' => $this->qty,
                'price' => $this->price,
                'tot_price' => $this->qty * $this->price, 
                'active'=>true,
    
            ]);
            session()->flash('message', 'sOFTWARE Updated Successfully.');
            $this->resetCreateForm();
            $this->closeModalEdit();
        }
    }
    public function edit($id)
    {
        $software = Software::findOrFail($id);
        $this->soft_id = $id;
        $this->sku= $software->sku;
        $this->type= $software->type;
        $this->detail= $software->detail;
        $this->vendor= $software->vendor;
        $this->buy_date= $software->buy_date;
        $this->order_date= $software->order_date;
        $this->renewal_date= $software->renewal_date;
        $this->qty= $software->qty;
        $this->price= $software->price;
        $this->tot_price= $software->tot_price;
        $this->current_team_id= $software->current_team_id;
        $this->active= $software->active;
        $this->openModalEdit();
    }
    public function confirmItemDeletion( $id) 
    {
        $this->confirmingItemDeletion = $id;
    }
    public function delete(Softwares $item)
    {
        //Softwares::find($id)->delete();
        //session()->flash('message', 'Data deleted successfully.');
        $item->delete();
        $this->confirmingItemDeletion = false;
        session()->flash('message', 'Item Deleted Successfully');
    }
    public function deleteItem(Software $software)
    {
        //Softwares::find($id)->delete();
        //session()->flash('message', 'Data deleted successfully.');
        $software->delete();
        //$software->active = false;
        $this->confirmingItemDeletion = false;
        session()->flash('message', 'software Deleted Successfully');
    }
    public function markAsDisable(Software $item)
    {
        //$item->active = "Close";
        $item->active = false;
        $item->save();
        session()->flash('message', 'Disable Item Successfully.');
    }
    public function export()
    {
       return Excel::download(new SoftwareExport, 'Software.csv');
    }
    
}
