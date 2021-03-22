@extends('backend.layout')
@section('content')
    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Page Düzenleme</h3>
            </div>
            <div class="box-body">
                <form action="{{route('page.update',$page->id)}}" method="POST"
                      enctype="multipart/form-data">
                    @csrf
                    @method('put')
                    @isset($page->page_file)
                        <div class="form-group">
                            <label>Yüklü Görsel</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <img width="100" src="/images/pages/{{$page->page_file}}" alt="">
                                </div>
                            </div>
                        </div>
                    @endisset
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
                                <input class="form-control" value="{{$page->page_title}}" name="page_title" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Slug</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" value="{{$page->page_slug}}" name="page_slug" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>İçerik</label>
                        <div class="row">
                            <div class="col-xs-12">
                                    <textarea class="form-control" id="editor1"
                                              name="page_content">{{$page->page_content}}</textarea>
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
                                    <option @if($page->page_status==1) selected @endif value="0">Aktif</option>
                                    <option @if($page->page_status==0) selected @endif value="0">Pasif</option>
                                </select>
                            </div>
                        </div>
                    </div>
                        <input type="hidden" name="old_file" value="{{$page->page_file}}">
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
