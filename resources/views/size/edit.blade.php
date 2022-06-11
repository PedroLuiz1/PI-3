@extends('layouts.app')

@section('content')
<form action="{{route('size.update', $size->id)}}" method="POST">
    @csrf
    @method('PUT')
    Novo tamanho: <input type="text" name="name">
    <button type="submit">Enviar</button>
</form>
@endsection
