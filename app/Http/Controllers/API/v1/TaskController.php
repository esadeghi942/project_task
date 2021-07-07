<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Models\Task;
use Illuminate\Http\Request;
use App\Http\Controllers\Api\v1\BaseController as BaseController;

class TaskController extends BaseController
{
    public function index($task)
    {
        $tasks=Task::find($task)->tasks;
        return $this->sendResponse($tasks,'');
    }

    public function store(Request $request)
    {
        $request->validate(['name'=>'required|string',
            'date'=>'required|string',
            'description'=>'string',
            'project_id'=>'required|int',
            'time'=>'required|time']);
        Task::create(['name' => $request->input('name'),
            'date'=>$request->input('date'),
            'time'=>$request->input('time'),
            'project_id'=>$request->input('project_id'),
            'description'=>$request->input('description'),
            ]);
        return self::sendResponse(null, 'Task Create Succesfully', 200);
    }

    public function show($id)
    {
		try{
            $task = Task::findOrFail($id);
            return self::sendResponse($task, '', 200);
		}
		catch(\Exception $e){
		    return self::sendError('Not Found');
		}

    }

    public function update(Request $request, $id)
    {
        $request->validate(['name'=>'required|string',
            'date'=>'required|string',
            'description'=>'string',
            'project_id'=>'required|int',
            'time'=>'required|time']);
        try {
            $task = Task::findOrFail($id);
            $task->update(['name' => $request->input('name'),
                'date' => $request->input('date'),
                'time' => $request->input('time'),
                'project_id' => $request->input('project_id'),
                'description' => $request->input('description'),
            ]);
            return self::sendResponse(null, 'Task Update Succesfully');
        }
        catch (\Exception $e) {
            return self::sendError('Not Found');
        }
    }

    public function destroy($id)
    {
        $item = Task::findOrFail($id);
        try {
            $item->delete();
            return self::sendResponse(null, 'Task Delete Succesfully');
        }
        catch (\Exception $e) {
            return self::sendError(null, 'Task Not Found');
        }
    }    
}
