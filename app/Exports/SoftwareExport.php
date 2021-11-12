<?php

namespace App\Exports;

use App\Models\Software;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
 

class SoftwareExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
       // return Komputer::all();
        return Software::where('active', 1)->where('current_team_id', \Auth::user()->current_team_id)->
        get(['sku', 'type','detail','vendor','buy_date', 'order_date', 
        'renewal_date','qty','price','tot_price']);

    }

    public function headings(): array
    {
        return [
            'SKU', 'TYPE','DETAIL','VENDOR','BUY DATE', 'ORDER DATE', 'RENEWAL','QTY','PRICE','TOT PRICE'
        ];
    }
}
