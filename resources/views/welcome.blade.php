<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <header></header>
    <main>
        <section class="py-5 text-center container">
            <div class="row py-lg-5">
              <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Album example</h1>
                <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely.</p>
                <p>
                  <a href="#" class="btn btn-primary my-2">Main call to action</a>
                  <a href="#" class="btn btn-secondary my-2">Secondary action</a>
                </p>
              </div>
            </div>
          </section>

          <section class="container">
                <div class="row">
                    @foreach ($products as $product)
                    <div class="col-4">
                        <img style="width: 200px" src="{{ asset($product->image)}}">
                        <p>{{$product->name}}</p>
                        <p>R$ {{$product->price}}</p>
                        <a href="#" class="btn btn-primary">Comprar</a>
                        <a href="#" class="btn btn-secondary">Visualizar</a>
                    </div>
                    @endforeach
                </div>
          </section>
    </main>
</body>
</html>
