<?php

public function store(Request $request)
    {
        
        $collection = Collection::create([
            'assignment_id' => $request->input('assignment_id'),
            'bag_id' => $request->input('bag_id'),
            'weight' => $request->input('weight')
        ]);
        
        
        $station = Collection::join('assignments', 'collections.assignment_id', '=', 'assignments.id')
            ->join('stations', 'assignments.station_id', '=', 'stations.id')
            ->select('stations.id')
            ->where('collections.id', '=', $collection->id)
            ->first();
        
        $weight = Collection::join('assignments', 'collections.assignment_id', '=', 'assignments.id')
            ->join('stations', 'assignments.station_id', '=', 'stations.id')
            ->select('collections.weight')
            ->where('collections.id', '=', $collection->id)
            ->first();
        
        //query in selectings process that exists within a month
        $processexist = Process::select('*')
            ->where('bag_id', $request->input('bag_id'))
            ->where('created_at', '=', $month = date('m'))
            ->first();
        
        if($processexist == null)//if doesn't exist: create
        {
            $processes = Process::create([
                'bag_id' => $request->input('bag_id'),
                'station_id' => $station->id,
                'total_weight' => $weight->weight
            ]); 
        }
        else //if exist: update
        {
            $processes = Process::where('id', $processexist->id)
                ->update(['weight'=>sum($weight->weight)]);
        }
        
        
        
        return redirect('/collections');
    }







    public function firstOrCreate(array $attributes, array $values = [])
{

    if (! is_null($instance = $this->where($attributes)->first())) {
        return $instance;
    }

    /**
     * @var $instance \Illuminate\Database\Eloquent\Model
     */
    $instance = $this->model->newInstance($attributes + $values)->setConnection('mysql');
    $instance->save();
    
    return $instance;
}


public function updateOrCreate(array $attributes, array $values = [])
{
    if (! is_null($instance = $this->where($attributes)->first())) {
        return $instance;
    }

    $instance = $this->model->newInstance($attributes)->setConnection('mysql');
    $instance->fill($values)->save();

    return $instance;
}

    ?>