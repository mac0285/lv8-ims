<?php

namespace App\Http\Livewire;

use App\Models\Supplies;
use Livewire\Component;

class Search extends Component
{
    public $term = "";

    public function render()
    {
        sleep(1);
        $supplies = Supplies::search($this->term)->paginate(10);

        $data = [
            'supplies' => $supplies,
        ];


        return view('livewire.service', $data);
    }
}

 