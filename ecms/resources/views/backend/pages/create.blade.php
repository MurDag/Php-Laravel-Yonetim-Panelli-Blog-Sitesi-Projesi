@extends('backend.layout')
@section('content')
    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Blog Ekle</h3>
            </div>
            <div class="box-body">
                <form action="{{route('page.store')}}" method="POST"
                      enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="file" name="page_file">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Başlık</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" value="{{old('page_title')}}" name="page_title" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Slug</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" value="{{old('page_slug')}}" name="page_slug" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>İçerik</label>
                        <div class="row">
                            <div class="col-xs-12">
                                    <textarea class="form-control" id="editor1"
                                              name="page_content">{{old('page_content')}}</textarea>
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
                                <select class="form-control" name="page_status">
                                    <option @if(old('page_status')=='1') selected @endif value="1">Aktif</option>
                                    <option @if(old('page_status')=='0') selected @endif value="0">Pasif</option>
                                </select>
                            </div>
                        </div>
                    </div>


                    <div align="right" class="box-footer">
                        <button type="submit" class="btn btn-success">Ekle</button>
                    </div>
                </form>
            </div>
        </div>
    </section>

@endsection
@section('css') @endsection
@section('js') @endsection
