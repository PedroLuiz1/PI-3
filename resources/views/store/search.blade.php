@extends('layouts.store')

@section('content')
    <section class="container py-4">
        <div class="row">
            <div class="mx-auto col-10 text-center">
                <h1 class="text-uppercase">{{ $title }}</h1>
                <!--<p class="text-muted">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Harum, nobis!</p>-->
            </div>
        </div>
        <div class="row">
            @foreach ($products as $product)
                <div class="mx-auto col-sm-10 col-md-6 col-lg-3">
                    <img src="{{ asset($product->image) }}" class="img-fluid">
                    <span class="text-truncate d-block h6 text-center mt-3">{{ $product->name }}</span>
                    <div class="text-center">
                        <span class="text-muted">R$ {{ $product->price }}</span>
                    </div>
                    <div class="text-center m-3">
                        <a href="{{ route('show.product', $product->id) }}" class="btn btn-dark btn-sm">Visualizar</a>
                    </div>
                </div>
            @endforeach
        </div>
    </section>
@endsection
