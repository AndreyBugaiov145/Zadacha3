@include('inc.Head') 

<form class="form-signin update" method="post" action="{{route('updateProductSubmit',$el->id)}}">
  @csrf
  <div class="text-center mb-4">
    <h1 class="h3 mb-3 font-weight-normal">Изменение</h1>
  </div>

  <div class="form-label-group">
    <label for="inputname">Название товара</label>
    <input name="name" type="text" id="inputname" class="form-control" value="{{$el->name}}" required="" >
    
  </div>
  <div class="form-label-group">
    <label for="inputpice">Цена</label>
    <input name="price" type="text" id="inputpice" class="form-control" value="{{$el->price}}" >
    
  </div>
  <div class="form-label-group">
    <label for="inputtext">Короткое описане товара</label>
    <textarea name="short_description" id="inputtext" class="form-control" cols="40" rows="10">{{$el->short_description}}</textarea>

    
  </div>
  <div class="form-label-group">
    <label for="inputdescription">Полное описание товара</label>
    <textarea name="description" id="inputdescription" class="form-control" cols="40" rows="10">{{$el->description}}</textarea>
    <input type="submit" class="btn btn-lg btn-block btn-outline-primary" value=" Обновить ">    
  </div>

  


</form>

@include('inc.footer') 