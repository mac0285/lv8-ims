<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Ticket;
use Livewire\WithPagination;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Haruncpi\LaravelIdGenerator\IdGenerator;
class TicketCrud extends Component
{
    public $ticketid,$ticket_user,$ticket_title,$ticket_desc,
    $ticket_categories,$ticket_priority,$ticket_overdue,$ticket_status,
    $ticket_image,$ticket_solve,$active,$ticket_id;
    public $isModalOpen = 0;
    public $isModalEdit = 0;
    use WithPagination;
    public $search = '';
    
    public function updatingSearch()
    {
        $this->resetPage();
    }
    public function render()
    {
       
       return view('livewire.ticket.ticket-crud', [
        'tickets' => Ticket::where('active', 1)
        ->where('current_team_id', \Auth::user()->current_team_id)
        ->whereYear('created_at', '=', Carbon::now()->year)
        ->orderBy('created_at','DESC')->paginate(8),
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

    public function closeModal()
    {
        $this->isModalOpen = false;
    }
    public function openModalEdit()
    {
        $this->isModalEdit = true;
    }
    public function closeModalEdit()
    {
        $this->isModalEdit = false;
    }


    private function resetCreateForm(){
        $this->ticket_title = '';
        $this->ticket_desc= '';
        $this->ticket_categories= '';
        $this->ticket_priority= '';
        
    }
    public function storeEdit()
    {
        $this->validate([
            'ticket_title'=> 'required|min:1',
            'ticket_desc'=> 'required|min:10',
            'ticket_categories'=> 'required',
            'ticket_priority'=> 'required'

        ]);       
        if ($this->ticket_id) {
            $record = Ticket::find($this->ticket_id);
            $record->update([ 
            'ticket_title' => $this->ticket_title,
            'ticket_desc' => $this->ticket_desc,
            'ticket_categories'=> $this->ticket_categories,
            'ticket_priority'=> $this->ticket_priority, 
            'ticket_status'=> $this->ticket_status,
            'ticket_image'=>"Open.jpg",
            'current_team_id'=>\Auth::user()->current_team_id,
            'ticket_solve'=>false,
            'active'=>true,
     
        ]);

        $this->resetCreateForm();
        $this->updateMode = false;
    } 
         
        
        session()->flash('message', 'Usages Updated Successfully.');
        $this->resetCreateForm();
        $this->closeModalEdit();

    
}
    public function store()
    {
        $this->validate([
            'ticket_title'=> 'required|min:1',
            'ticket_desc'=> 'required|min:10',
            'ticket_categories'=> 'required',
            'ticket_priority'=> 'required'
        ]);
        
        $idgen = IdGenerator::generate(['table' => 'tickets','field'=>'ticketid', 'length' => 10, 'prefix'=>date('ymd')]);
        Ticket::updateOrCreate(['ticketid' => $this->ticket_id], [
            'ticketid' => $idgen,
            'ticket_user' => Auth::user()->name,
            'ticket_title' => $this->ticket_title,
            'ticket_desc' => $this->ticket_desc,
            'ticket_categories'=> $this->ticket_categories,
            'ticket_priority'=> $this->ticket_priority,
            'ticket_overdue'=> Carbon::tomorrow(),
            'ticket_status'=> $this->ticket_status,
            'ticket_image'=>"Open.jpg",
            'current_team_id'=>\Auth::user()->current_team_id,
            'ticket_solve'=>false,
            'active'=>true,
        ]);

        session()->flash('message', $this->ticket_id ? 'Data updated successfully.' : 'Data added successfully.');

        $this->closeModal();
        $this->resetCreateForm();
    }

    public function edit($id)
    {   
        $ticket = Ticket::findOrFail($id);
        $this->ticket_id = $id;
        $this->ticket_title = $ticket->ticket_title;
        $this->ticket_desc = $ticket->ticket_desc;
        $this->ticket_categories = $ticket->ticket_categories;
        $this->ticket_priority = $ticket->ticket_priority;   
        $this->ticket_status = $ticket->ticket_status;     
        //ticket_status

        $this->openModalEdit();
    }

    
    
    public function delete($id)
    {   
        
        Ticket::where('id',$id)->delete();
        session()->flash('message', 'Data deleted successfully.');
    }

    public function markAsClose(Ticket $item)
    {
        $item->ticket_status = "Close";
        $item->ticket_solve = true;
        $item->save();
    }

    public function markAsOpen(Ticket $item)
    {
        $item->ticket_status = "Open";
        $item->ticket_solve = false;
        $item->save();
    }
    public function markAsDisable(Ticket $item)
    {
        $item->ticket_status = "Close";
        $item->active = false;
        $item->save();
    }
    public function chat($id)
    {   
        $ticket = Ticket::findOrFail($id);
        $this->id = $id;
        $this->ticket_title = $ticket->ticket_title;
        $this->ticket_desc = $ticket->ticket_desc;
        $this->ticket_categories = $ticket->ticket_categories;
        $this->ticket_priority = $ticket->ticket_priority;   
        $this->ticket_status = $ticket->ticket_status; 
        //Ticket::where('id',$id)->delete();
        //Chat::create(['email' => $this->email]);
 
        return redirect()->to('/chat');
    }
} 