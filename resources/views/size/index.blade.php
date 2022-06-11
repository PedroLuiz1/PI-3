@extends('layouts.app')

@section('content')
<a class="btn btn-lg btn-success float-end me-5" href="{{route('size.create')}}">Novo Tamanho</a>
<div class="container mt-3">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tamanho</th>
                <th>Quantidade de Produtos no Estoque</th>
                <th>Editar</th>
            </tr>
        </thead>
        <tbody>
            @foreach($sizes as $size)
            <tr>
                <td>{{$size->id}}</td>
                <td>{{$size->name}}</td>
                <td>{{$size->stock}}</td>
                <td><a href="{{ route('size.edit', $size->id) }}">Editar</a></td>
            </tr>
            @endforeach
        <tbody>
    </table>
</div>
@endsection
