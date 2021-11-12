<?php

namespace App\Http\Livewire\Todo;
use App\Models\TodoItem;
use Livewire\Component;

class Form extends Component
{
    
    public $description;
    public $type;
    public $topic;
    public $active;
    public $user_id;

    protected $rules = [
        'topic' => 'required|min:2',
        'type' => 'required', 
        'description' => 'required|min:2'
    ];
    private function resetCreateForm(){ 
        $this->topic= '';
        $this->description='';
        $this->type= '';
        $this->active= '';
        $this->user_id= '';
        $this->done= ''; 
        $this->current_team_id= ''; 
    }
    public function render()
    {
        return view('livewire.todo.form');
    }

    public function createItem()
    {
        $this->validate();

        $item = new TodoItem();
        $item->topic = $this->topic;
        $item->description = $this->description;
        $item->type = $this->type;
        $item->active = true;
        $item->user_id =\Auth::user()->id;
        $item->current_team_id= \Auth::user()->current_team_id;
        $item->save();

        $this->emit('saved');
        $this->resetCreateForm();
 

    }
}
