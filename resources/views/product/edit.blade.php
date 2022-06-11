@extends('layouts.app')

@section('content')
<form action="{{route('product.update', $product->id)}}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Nome do Produto: <input type="text" name="name" value="{{$product->name}}">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Descrição: <input type="text" name="description"  value="{{$product->description}}">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Preço: <input type="number" step="0.1" name="price"  value="{{$product->price}}">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Imagem: <input type="file" name="image">
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            Selecione uma categoria:
    <select name="category_id">
        @foreach($categories as $category)
        <option value="{{$category->id}}"
            {{ $product->category_id == $category->id ? 'selected' : '' }}>
            {{ $category->name }}</option>
        @endforeach
    </select>
        </div>
    </div>
    <div class="mt-3 mb-3 ms-3 row g-3">
        <div class="col-3">
            <select multiple name="tags[]">
                @foreach($tags as $tag)
                <option value="{{$tag->id}}"
                    {{ $product->hasTag($tag->id) ? 'selected' : '' }}
                    >{{$tag->name}}</option>
                @endforeach
            </select>
        </div>
    </div>
    <button class="btn btn-primary" type="submit">Enviar</button>
</form>
@endsection
