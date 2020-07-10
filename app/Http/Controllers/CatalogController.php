<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;

class CatalogController extends Controller
{
    public function index()
    {
    	return view('catalog',['dataCategory'=>Category::all(),
    							'dataProduct'=>Product::inRandomOrder()->get()
    							]);
    }

    public function oneCategory($id)
    {
    	return view('catalog',['dataCategory'=>Category::all(),
    							'dataProduct'=>Product::where('category_id','=',$id)->get()]);
    							
    }

    public function oneProduct($id)
    {
    	return view('product',['el'=>Product::find($id)
    							]);
    }
    public function deleteProduct($id)
    {
    	Product::find($id)->delete();
    	return redirect()->route('catalog')->with('success','сообщение было удалено');
    }
    public function putProduct()
	{
		//return "asdasdasda";
    	//return redirect()->route('putProduct');
    	return view('putProduct');
	}

	public function putProductSubmit(Request $reg)
	{
		$product = new Product();
    	$product->name = $reg->input('name');
    	$product->price = $reg->input('price');
    	$product->category_id = $reg->input('category_id');
    	$product->short_description = $reg->input('short_description');
    	$product->description = $reg->input('description');
    	$product->save();
    	return redirect()->route('catalog')->with('success','Товар добвален');
	}

    public function updateProduct($id)
    {
    	return view('updateProduct',['el'=>Product::find($id)]);
    }
    public function updateProductSubmit($id,Request $reg)
    {	$product =Product::find($id);
    	$product->name = $reg->input('name');
    	$product->price = $reg->input('price');
    	$product->short_description = $reg->input('short_description');
    	$product->description = $reg->input('description');
    	$product->save();
    	return redirect()->route('catalog')->with('success','Товар был обновлен');
    }
}
