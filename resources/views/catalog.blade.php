@extends('app')

@section('title')Каталог товаров@endsection

@section('content') 
<a href="{{ route('login') }}">Login</a>
	  <div class="grid">
	  	@foreach($dataProduct as $el)
	    <div class="card mb-4 shadow-sm">
	      <div class="card-header">
	        <h4 class="my-0 font-weight-normal">{{$el->name}}</h4>
	      </div>
	      <div class="card-body">
	        <h1 class="card-title pricing-card-title">${{$el->price}}</h1>
	        <span>${{$el->short_description}}</span>
	        <a href="{{route('product',$el->id)}}"><button type="button" class="btn btn-lg btn-block btn-outline-primary">Детельние</button></a>
	      </div>
	    </div>
	    @endforeach
	    </div>

 

</div>
 @endsection 