@extends('layouts.store')

    @section('content')
        <section class="py-5 text-center container"></section>

        <section class="container">
            <div class="row">
                @foreach ($products as $product)
                    <div class="mx-auto col-sm-10 col-md-6 col-lg-3">
                        <img src="{{ asset($product->image) }}" class="img-fluid">
                        <span class="text-truncate d-block h6 text-center mt-3 ">{{ $product->name }}</span>
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
