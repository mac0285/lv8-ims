<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Expense;
use Asantibanez\LivewireCharts\Models\AreaChartModel;
use Asantibanez\LivewireCharts\Models\ColumnChartModel;
use Asantibanez\LivewireCharts\Models\LineChartModel;
use Asantibanez\LivewireCharts\Models\PieChartModel; 

class DasboardCharts extends Component
{
    public function render()
    {
        return view('livewire.dasboard-charts');
    }
}
