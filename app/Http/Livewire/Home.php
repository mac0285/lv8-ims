<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Software;
use App\Models\Komputer;
use App\Models\TodoItem;
use App\Models\Emailaccount;
use App\Models\Contact; 
use App\Models\Usages;
use App\Models\Service as ServiceHw;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
class Home extends Component
{
    public function render()
    {
          
        //$komputers = count($komputers = Komputer::select('current_team_ids','type_comp','active')->where('current_team_ids', auth()->user()->current_team_id)->where('active', 1)->get());
         
        $komputers =count($komputers=  Komputer::select('type_comp' )->where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->get());
        $antivir = count($antivir = Komputer::select('antivir' )->where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->where('antivir', 1)->get());
        $ups = count($ups = Komputer::where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->where('ups', 1)->get());
        $switch = count($switch = Komputer::where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->where('type_comp', 'SWITCH')->get());  
        $softwares = count($softwares = Software::where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->get());
        $shows = count($shows = TodoItem::where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->get());
        $emailCount = count($emailCount = Emailaccount::where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->get());
        $contactCount = count($contactCount = Contact::where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->get());
        $usageCount = count($usageCount = Usages::where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->get());
       
        $serviceCount = count($serviceCount = ServiceHw::where('current_team_id', auth()->user()->current_team_id)->where('active', 1)->get());
              //return view('livewire.home');

              
        return view('livewire.home',compact('komputers','switch','softwares','shows','emailCount','contactCount','usageCount','ups','antivir','serviceCount'));
   
    }
}
