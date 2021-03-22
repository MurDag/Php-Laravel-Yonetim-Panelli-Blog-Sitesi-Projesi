@extends('backend.layout')
@section('content')
    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Slider Düzenleme</h3>
            </div>
            <div class="box-body">
                <form action="{{route('slider.update',$slider->id)}}" method="POST"
                      enctype="multipart/form-data">
                    @csrf
                    @method('put')
                    @isset($slider->slider_file)
                        <div class="form-group">
                            <label>Yüklü Görsel</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <img width="100" src="/images/sliders/{{$slider->slider_file}}" alt="">
                                </div>
                            </div>
                        </div>
                    @endisset
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="file" name="slider_file">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Başlık</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" value="{{$slider->slider_title}}" name="slider_title" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Slug</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" value="{{$slider->slider_slug}}" name="slider_slug" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Url</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" value="{{$slider->slider_url}}"  name="slider_url" type="url">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>İçerik</label>
                        <div class="row">
                            <div class="col-xs-12">
                                    <textarea class="form-control" id="editor1"
                                              name="slider_content">{{$slider->slider_content}}</textarea>
                                <script>
                                    CKEDITOR.replace('editor1');
                                </script>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>İçerik</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <select class="form-control" name="slider_status">
                                    <option @if($slider->slider_status==1) selected @endif value="0">Aktif</option>
                                    <option @if($slider->slider_status==0) selected @endif value="0">Pasif</option>
                                </select>
                            </div>
                        </div>
                    </div>
                        <input type="hidden" name="old_file" value="{{$slider->slider_file}}">
                    <div align="right" class="box-footer">
                        <button type="submit" class="btn btn-success">Düzenle</button>
                    </div>
                </form>
            </div>
        </div>
    </section>

@endsection
@section('css') @endsection
@section('js') @endsection
