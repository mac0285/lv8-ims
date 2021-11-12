<?php

namespace App\Exports;

use App\Models\Komputer;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
 

class KomputerExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
       // return Komputer::all();
        return Komputer::where('active', 1)->where('current_team_id', \Auth::user()->current_team_id)->
        get(['ip_comp', 'hostname_comp','os_comp','type_comp','processor_comp', 'ram_comp', 
        'hdd_comp','ups','office_actv','antivir','dept_comp']);

    }

    public function headings(): array
    {
        return [
            'IP KOMPUTER', 'HOSTNAME','OS','TYPE','PROCESSOR', 'MEMMORY', 'HDD SIZE','UPS','OFFICE','TRENDMICRO','DEPARTEMENT'
        ];
    }
}
