<?php

namespace App\Exports;

use App\Models\TodoItem;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Carbon\Carbon;
 

class TodoExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
       // return Komputer::all();
        return TodoItem::where('active', 1)->where('current_team_id', \Auth::user()->current_team_id)
        ->where('user_id', auth()->user()->id)
        ->whereYear('created_at', '=', Carbon::now()->year)
        ->get(['topic','type','description','done','created_at']);

    }

    public function headings(): array
    {
        return [
            'Topic', 'Categories','Detail','done','date'
        ];
    }
}
