<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Blogs;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['blog'] = Blogs::all()->sortBy('blog_must');
        return view('backend.blogs.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.blogs.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (strlen($request->blog_slug) > 3) {
            $slug = Str::slug($request->blog_slug);
        } else {
            $slug = Str::slug($request->blog_title);
        }

        $request->validate([
            'blog_title' => 'required',
            'blog_content' => 'required',
            'blog_file' => 'mimes:jpg,jpeg,png|max:2048',
        ]);
        if ($request->hasFile('blog_file')) {
            $file_name = uniqid() . '.' . $request->blog_file->getClientOriginalExtension();
            $request->blog_file->move(public_path('images/blogs'), $file_name);
        } else {
            $file_name = null;
        }


        $blog = Blogs::insert([
            "blog_title" => $request->blog_title,
            "blog_slug" => $slug,
            "blog_file" => $file_name,
            "blog_content" => $request->blog_content,
            "blog_status" => $request->blog_status,
        ]);

        if ($blog) {
            return redirect(route('blog.index'))->with('success', 'İşlem Başarılı');
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
        $blog = Blogs::where('id', $id)->first();
        return view('backend.blogs.edit')->with('blog', $blog);
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
        if (strlen($request->blog_slug) > 3) {
            $slug = Str::slug($request->blog_slug);
        } else {
            $slug = Str::slug($request->blog_title);
        }

        $request->validate([
            'blog_title' => 'required',
            'blog_content' => 'required',
            'blog_file' => 'mimes:jpg,jpeg,png|max:2048',
        ]);

        if ($request->hasFile('blog_file')) {

            $file_name = uniqid() . '.' . $request->blog_file->getClientOriginalExtension();
            $request->blog_file->move(public_path('images/blogs'), $file_name);
            $blog = Blogs::where('id', $id)
                ->update([
                    "blog_title" => $request->blog_title,
                    "blog_slug" => $slug,
                    "blog_file" => $file_name,
                    "blog_content" => $request->blog_content,
                    "blog_status" => $request->blog_status,
                ]);
        } else {
            $blog = Blogs::where('id', $id)
                ->update([
                    "blog_title" => $request->blog_title,
                    "blog_slug" => $slug,
                    "blog_content" => $request->blog_content,
                    "blog_status" => $request->blog_status,
                ]);
        }

        if ($blog) {
            if ($request->hasFile('blog_file'))
            {
                $path = 'images/blogs/' . $request->old_file;
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
        $blog = Blogs::find(intval($id));
        if ($blog->delete()) {
            echo 1;
        } else {
            echo 0;
        }
    }

    public function sortable()
    {
//        print_r($_POST['item']);

        foreach ($_POST['item'] as $key => $value) {
            $Blogs = Blogs::find(intval($value));
            $Blogs->blog_must = intval($key);
            $Blogs->save();
        }

        echo true;
    }


}
