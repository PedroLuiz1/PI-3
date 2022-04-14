@extends('layouts.app')

@section('content')
<form action="{{route('size.store')}}" method="POST">
    @csrf
    Novo tamanho: <input type="text" name="name">
    <button type="submit">Enviar</button>
</form>
@endsection
