@include('inc.Head') 

<div class=" container card mb-4 shadow-sm">
  <div class="card-header">
    <h1 class="my-0 font-weight-normal">{{$el->name}}</h1>
  </div>
  <div class="card-body">
    <h2 class="card-title pricing-card-title">${{$el->price}}</h2>
    <span>${{$el->description}}</span>
    <a href="{{route('updateProduct',$el->id)}}" class="btn"><button type="button" class="btn btn-lg btn-block btn-outline-primary">изменить</button></a>
    <a href="{{route('deleteProduct',$el->id)}}" class="btn"><button type="button" class="btn btn-lg btn-block btn-outline-primary">удалить</button></a>
  </div>

</div>
@include('inc.footer') 

