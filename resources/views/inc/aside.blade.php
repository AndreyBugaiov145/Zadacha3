<div class="aside">
   <h2>Категории</h2>
   <div class="category">
   	<span class="category"><a href="{{route('catalog')}}"><p>Все товары</p></a></span>
   	@foreach($dataCategory as $el)
   		<span class="category"><a href="{{route('category',$el->id)}}"
   		 @if(!Request::is('/')) @if(($el->id==$dataProduct[0]->category_id)) id="active" @endif @endif
   		 ><p>{{$el->name}}</p></a></span>
   	@endforeach
   </div>
</div>