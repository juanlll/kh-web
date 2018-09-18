@extends('voyager::master')

@section('css')

@include('voyager::compass.includes.styles')

@stop

@section('page_header')
<h1 class="page-title">
    <i class="voyager-settings"></i>Mensajes
</h1>
 @if (count($errors)>0)
      <div class="alert alert-danger">
        <ul>
        @foreach ($errors->all() as $error)
          <li>{{$error}}</li>
        @endforeach
        </ul>
      </div>
      @endif
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
            <h3> <i class="voyager-paper-plane"></i> Mensajes recibidos <small></small></h3>

       <div class="row">


        <table class="table table-striped database-tables">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Nombre</th>
                            <th>Email</th>
                            <th>Fecha</th>

                            <th>Opciones</th>
                        </tr>
                    </thead>
                     @foreach($comments as $co)
                    <tr>
                        <td>
                        
                       
                        </td>

                         <td>
                     
                         {{$co->name}}
                        </td>

                        <td>
                        {{$co->email}}

                        </td>

                    <td>
                        {{$co->created_at}}

                        </td>
                        <td class="actions">
                        

<a href="/admin/messages/{{$co->id}}"><button class="btn btn-info" ><i class="voyager-eye"></i> Ver</button></a>

          {{Form::Open(array('action'=>array('CommentController@destroy',$co->id),'method'=>'delete'))}}
            {{Form::token()}}
<button class="btn btn-warning"><i class="voyager-trash"></i> Eliminar</button>
               {!!Form::close()!!}
                        </td>
                    </tr>
             @endforeach
                </table>
                    </div>


</div>

</div>

@stop

@section('javascript')

@stop
