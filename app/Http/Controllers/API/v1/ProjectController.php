<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Http\Resources\v1\ProjectResource;
use App\Models\Project;
use Illuminate\Http\Request;
use App\Http\Controllers\API\v1\BaseController as BaseController;

class ProjectController extends BaseController
{
    public function index()
    {
        $project = Project::all();
        $project=ProjectResource::collection($project);
        $project=Project::count1();
        return self::sendResponse($project, '', 200);
    }

    public function store(Request $request)
    {
        $request->validate(['name'=>'required|string']);
        $name = $request->input('name');
        Project::create(['name' => $name]);
        return self::sendResponse(null, 'Project Create Succesfully', 200);
    }

    public function show($id)
    {
        $project = Project::find($id);
        return self::sendResponse(new ProjectResource($project), '', 200);

    }

    public function update(Request $request, $id)
    {
        $request->validate(['name'=>'required|string']);
        $name = $request->input('name');
        $project=Project::find($id);
        $project->update(['name' => $name]);
        return self::sendResponse(null, 'Project Update Succesfully');
    }

    public function destroy($id)
    {
        $item = Project::find($id);
        if ($item) {
            $item->delete();
            return self::sendResponse(null, 'Project Delete Succesfully');
        }
        return self::sendError(null, 'Project Not found');

    }
}
