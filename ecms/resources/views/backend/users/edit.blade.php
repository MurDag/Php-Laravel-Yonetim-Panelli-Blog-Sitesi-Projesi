@extends('backend.layout')
@section('content')
    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">User Düzenleme</h3>
            </div>
            <div class="box-body">
                <form action="{{route('user.update',$user->id)}}" method="POST"
                      enctype="multipart/form-data">
                    @csrf
                    @method('put')
                    @isset($user->user_file)
                        <div class="form-group">
                            <label>Yüklü Resim</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <img width="150" src="/images/users/{{$user->user_file}}">
                                </div>
                            </div>
                        </div>
                    @endisset
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="file" name="user_file">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Ad Soyad</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" value="{{$user->name}}" name="name" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Kullanıcı Adı (Email)</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" value="{{$user->email}}" name="email" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Şifre</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" name="password" type="password">
                                <small style="font-weight: 900; color: red;">
                                    Şifreyi değiştirmek istemiyorsanız boş bırakmalsınız!
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Durum</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <select class="form-control" name="user_status">
                                    <option @if(old('user_status')=='1') selected @endif value="1">Aktif</option>
                                    <option @if(old('user_status')=='0') selected @endif value="0">Pasif</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="old_file" value="{{$user->user_file}}">
                    <div align="right" class="box-footer">
                        <button type="submit" class="btn btn-success">Güncelle</button>
                    </div>
                </form>
            </div>
        </div>
    </section>

@endsection
@section('css') @endsection
@section('js') @endsection
