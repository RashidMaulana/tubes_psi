@extends('layouts.template')
@section('title','Profil')
@php
    $number=1;
@endphp
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Profile</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
              <li class="breadcrumb-item active">User Profile</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row"> <!-- /.row -->
          <div class="col-md-3"> <!-- /.col -->
            <!-- Profile Image -->
            <div class="card card-primary card-outline text-center">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="{{ asset('') }}assets/dist/img/user2-160x160.jpg"
                       alt="User profile picture">
                </div>
                <h3 class="profile-username text-center">{{ $LoggedUserInfo ['nama']}}</h3>
                <ul class="list-group list-group-unbordered mb-3">
                    <p class="text-muted text-center">Admin</p>
                  <li class="list-group-item">
                    <p class="card-text">{{$LoggedUserInfo['alamat']}}</p>
                  </li>
                  <li class="list-group-item">
                    <p class="card-text">{{$LoggedUserInfo['email']}}</p>
                  </li>
                </ul>
              </div> <!-- /.card-body -->
            </div> <!-- /.card -->
          </div><!-- /.row -->
      <div class="col-md-9">
        <div class="card">
          <div class="card-header p-2">
            <h2 class="text-center">Daftar Destinasi</h1><hr>
          </div>
          <div class="table-responsive">
            <table class="table table-striped table-hover table-condensed">
              <thead>
                
                <tr>
                  <th><strong>No</strong></th>
                  <th><strong>Nama Destinasi</strong></th>
                  <th><strong>Telephone</strong></th>
                  <th><strong>Alamat</strong></th>
                </tr>
              </thead>
              <tbody>
                @foreach ($destinasi as $d)
                <tr>
                  <td>{{$number++}}</td>
                  <th>{{$d->nama}}</th>
                  <th>{{$d->telephone}}</th>
                  <th>{{$d->alamat}}</th>
                  @endforeach
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
@endsection
@push('custom-script')
<!-- OPTIONAL SCRIPTS -->
<script src="{{ asset('') }}assets/plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{ asset('') }}assets/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{ asset('') }}assets/dist/js/pages/dashboard3.js"></script>
@endpush