<?php

namespace App\Exports;

use App\Models\Usages;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
 

class UsageExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
       // return Komputer::all();
        return Usages::where('active', 1)->where('current_team_id', \Auth::user()->current_team_id)->
        get(['Connection','type','inbound',
        'outbound', 'inbound'+'outbound' ,'remark','month_date']);

    }

    public function headings(): array
    {
        return [
            'CONNECTION', 'TYPE','INBOUND','OUTBPUND','TOTAL', 'REMARK', 'MONTH'
        ];
    }
}
