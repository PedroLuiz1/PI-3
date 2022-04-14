@extends('layouts.app')

@section('content')
<a class="btn btn-lg btn-success float-end me-5" href="{{route('size.create')}}">Novo Tamanho</a>
<div class="container mt-3">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tamanho</th>
                <th>Nome do Produto</th>
                <th>Quantidade de Produtos no Estoque</th>
            </tr>
        </thead>
        <tbody>
            @foreach($sizes as $size)
            <tr>
                <td>{{$size->id}}</td>
                <td>{{$size->name}}</td>
                <td>{{$size->Product->name}}</td>
                <td>{{$size->stock}}</td>
            </tr>
            @endforeach
        <tbody>
    </table>
</div>
@endsection
