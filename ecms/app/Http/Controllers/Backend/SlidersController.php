<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Sliders;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class SlidersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['slider'] = Sliders::all()->sortBy('slider_must');
        return view('backend.sliders.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.sliders.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (strlen($request->slider_slug) > 3) {
            $slug = Str::slug($request->slider_slug);
        } else {
            $slug = Str::slug($request->slider_title);
        }

        $request->validate([
            'slider_title' => 'required',
            'slider_content' => 'required',
            'slider_file' => 'mimes:jpg,jpeg,png|max:2048',
        ]);
        if ($request->hasFile('slider_file')) {
            $file_name = uniqid() . '.' . $request->slider_file->getClientOriginalExtension();
            $request->slider_file->move(public_path('images/sliders'), $file_name);
        } else {
            $file_name = null;
        }


        $slider = Sliders::insert([
            "slider_title" => $request->slider_title,
            "slider_slug" => $slug,
            "slider_url" => $request->slider_url,
            "slider_file" => $file_name,
            "slider_content" => $request->slider_content,
            "slider_status" => $request->slider_status,
        ]);

        if ($slider) {
            return redirect(route('slider.index'))->with('success', 'İşlem Başarılı');
        } else {
            return back()->with('error', 'İşlem Başarısız');
        }


    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $slider = Sliders::where('id', $id)->first();
        return view('backend.sliders.edit')->with('slider', $slider);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {   $_SESSION['isVal']='no';
        $request->flash();
        if (strlen($request->slider_slug) > 3) {
            $slug = Str::slug($request->slider_slug);
        } else {
            $slug = Str::slug($request->slider_title);
        }

        $request->validate([
            'slider_title' => 'required',
            'slider_content' => 'required',
            'slider_url' => 'active_url',
            'slider_file' => 'mimes:jpg,jpeg,png|max:2048',
        ]);

        if ($request->hasFile('slider_file')) {

            $file_name = uniqid() . '.' . $request->slider_file->getClientOriginalExtension();
            $request->slider_file->move(public_path('images/sliders'), $file_name);
            $slider = Sliders::where('id', $id)
                ->update([
                    "slider_title" => $request->slider_title,
                    "slider_slug" => $slug,
                    "slider_url" => $request->slider_url,
                    "slider_file" => $file_name,
                    "slider_content" => $request->slider_content,
                    "slider_status" => $request->slider_status,
                ]);
        } else {
            $slider = Sliders::where('id', $id)
                ->update([
                    "slider_title" => $request->slider_title,
                    "slider_slug" => $slug,
                    "slider_url" => $request->slider_url,
                    "slider_content" => $request->slider_content,
                    "slider_status" => $request->slider_status,
                ]);
        }

        if ($slider) {
            if ($request->hasFile('slider_file'))
            {
                $path = 'images/sliders/' . $request->old_file;
                if (file_exists($path)) {
                    @unlink(public_path($path));
                }
            }
            $success=[
              'success' => 'İşlem Başarılı',
              'isValidate' => 'yes'
            ];
            return back()->with($success);
        } else {
            $error=[
                'error' => 'İşlem Başarısız',
                'isValidate' => 'yes'
            ];
            return back()->with($error);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $slider = Sliders::find(intval($id));
        if ($slider->delete()) {
            echo 1;
        } else {
            echo 0;
        }
    }

    public function sortable()
    {
//        print_r($_POST['item']);

        foreach ($_POST['item'] as $key => $value) {
            $Sliders = Sliders::find(intval($value));
            $Sliders->slider_must = intval($key);
            $Sliders->save();
        }

        echo true;
    }


}
