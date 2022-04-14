@extends('layouts.app')

@section('content')
<form action="{{route('product.store')}}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            <label>Nome do Produto:</label>
            <input type="text" class="form-control form-control-sm" name="name">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            <label>Descrição:</label>
            <input type="text" class="form-control form-control-sm" name="description">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Preço: <input type="number" class="form-control form-control-sm" step="0.1" name="price">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Imagem: <input type="file" class="form-control form-control-sm" name="image">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Selecione uma categoria:
            <select class="form-control form-control-sm" name="category_id">
                @foreach($categories as $category)
                <option value="{{$category->id}}">{{ $category->name }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Selecione uma tag:
            <select class="form-control form-control-sm" multiple name="tags[]">
                @foreach($tags as $tag)
                <option value="{{$tag->id}}">{{$tag->name}}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Estoque no tamanho P: <input type="number" class="form-control form-control-sm" name="stockP">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Estoque no tamanho M: <input type="number" class="form-control form-control-sm" name="stockM">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Estoque no tamanho G: <input type="number" class="form-control form-control-sm" name="stockG">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Estoque no tamanho GG: <input type="number" class="form-control form-control-sm" name="stockGG">
        </div>
    </div>
    <button class="btn btn-primary" type="submit">Enviar</button>
</form>
@endsection
