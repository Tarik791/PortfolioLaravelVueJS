<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProjectResource;
use App\Models\Project;
use App\Models\Skill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projects = ProjectResource::collection(Project::with('skills')->get());

        return Inertia::render('Projects/Index', ['projects' => $projects]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $skills = Skill::all();

        return Inertia::render('Projects/Create', compact('skills'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'min:3'],
            'skill_ids' => ['required', 'array'],
            'skill_ids.*' => ['exists:skills,id'],
            'image' => ['nullable', 'image'],
            'image_2' => ['nullable', 'image'],
            'image_3' => ['nullable', 'image'],
            'image_4' => ['nullable', 'image'],
            'image_5' => ['nullable', 'image'],
            'image_6' => ['nullable', 'image'],
        ]);

        $data = $request->only(['name', 'project_url', 'skill_ids']);

        foreach (['image', 'image_2', 'image_3', 'image_4', 'image_5', 'image_6'] as $imageField) {
            if ($request->hasFile($imageField)) {
                $data[$imageField] = $request->file($imageField)->store('projects', 'public');
            }
        }

        $project = Project::create($data);
        $project->skills()->attach($request->skill_ids);

        return Redirect::route('projects.index')->with('message', 'Project created successfully!');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Project $project)
    {
        $request->validate([
            'name' => ['required', 'min:3'],
            'skill_ids' => ['required', 'array'],
            'skill_ids.*' => ['exists:skills,id'],
        ]);

        $image = $project->image;
        if ($request->hasFile('image')) {
            Storage::delete($project->image);
            $image = $request->file('image')->store('projects', 'public');
        }

        $project->update([
            'name' => $request->name,
            'project_url' => $request->project_url,
            'image' => $image,
        ]);

        $project->skills()->sync($request->skill_ids);

        return Redirect::route('projects.index')->with('message', 'Project updated successfully!');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Project $project)
    {
        $skills = Skill::all();

        return Inertia::render('Projects/Edit', compact('project', 'skills'));
    }

    public function show($id)
    {
        $project = Project::findOrFail($id);

        return Inertia::render('ProjectDetail', ['project' => $project]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        //

        Storage::delete($project->image);
        $project->delete();

        return Redirect::back()->with('message', 'Project deleted successfully!');
    }
}
