@include('inc.Head') 

<form class="form-signin update" method="post" action="{{route('putProductSubmit')}}">
  @csrf
  <div class="text-center mb-4">
    <h1 class="h3 mb-3 font-weight-normal">Добавить товар</h1>
  </div>

  <div class="form-label-group">
    <label for="inputname">Название товара</label>
    <input name="name" type="text" id="inputname" class="form-control"  >
    
  </div>
  <div class="form-label-group">
    <label for="inputpice">Цена</label>
    <input name="price" type="text" id="inputpice" class="form-control" >
  </div>
  <div class="form-label-group">
    <label for="category">Категория продукта</label>
    <input name="category_id" type="text" id="category" class="form-control"  >
  </div>
  <div class="form-label-group">
    <label for="inputtext">Короткое описане товара</label>
    <textarea name="short_description" id="inputtext" class="form-control" cols="40" rows="10"></textarea>

    
  </div>
  <div class="form-label-group">
    <label for="inputdescription">Полное описание товара</label>
    <textarea name="description" id="inputdescription" class="form-control" cols="40" rows="10"></textarea>
    <input type="submit" class="btn btn-lg btn-block btn-outline-primary" value=" Добавить ">    
  </div>

  


</form>

@include('inc.footer') 