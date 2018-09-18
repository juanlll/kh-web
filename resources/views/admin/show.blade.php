@extends('voyager::master')

@section('css')

@include('voyager::compass.includes.styles')

@stop

@section('page_header')
<h1 class="page-title">
    <i class="voyager-settings"></i>Mensajes
</h1>
@stop

@section('content')

<div id="gradient_bg"></div>

<div class="container-fluid">

</div>

<div class="page-content compass container-fluid">
    <ul class="nav nav-tabs">

    </ul>

    <div class="tab-content">
        <div id="resources" class="tab-pane fade in @if(empty($active_tab) || (isset($active_tab) && $active_tab == 'resources')){!! 'active' !!}@endif">
            <h3> <i class="voyager-paper-plane"></i> Mensaje <span class="badge badge-pill badge-dark">Nombre: {{$comment->name}}</span>
            
            <span class="badge badge-pill badge-info">Email: {{$comment->email}}</span>
           
            <span class="badge badge-pill badge-warning">Fecha: {{$comment->created_at}}</span></h3>

            
   
     <br>

        <p>
             {{$comment->text}}
        </p>
    </div>


</div>

</div>

@stop

@section('javascript')

@stop
