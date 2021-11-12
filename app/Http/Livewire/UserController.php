<?php

namespace App\Http\Livewire;
use App\Models\User;
use Livewire\Component;

class UserController extends Component
{
    public function render()
    {
        $users = User::where('current_team_id', auth()->user()->current_team_id)->paginate(6);
        return view('livewire.user.user-crud',compact('users'));
        //return view('livewire.user.user-controller');
    }
    public function markAsDisable(User $item)
    {
        //$item->active = "Close";
        $item->active = false;
        $item->save();
        session()->flash('message', 'users Disabled Successfully.');
    } 
}
