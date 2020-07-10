<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title> @yield('title')</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
    <link rel="stylesheet" href="/css/app.css">
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <h5 class="my-0 mr-md-auto font-weight-normal">Бугаев</h5>
  <nav class="my-2 my-md-0 mr-md-3">
    @guest
    <span style="color:red">Вы не авторезированы</span>
    @endguest
    @auth
    <span style="color:red">Вы успешно авторизировались</span>
    @endauth
    <a class="p-2 text-dark" href="{{route('catalog')}}">Главная</a>
    
      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;"> @csrf</form>
    <a class="p-2 text-dark" href="{{route('putProduct')}}">Добавить новый товар</a>
  </nav>
  <a class="btn btn-outline-primary" href="{{ route('register') }}">регистрация</a>
  @guest<a class="btn btn-outline-primary" href="{{ route('login') }}">Войти</a>@endguest
  @auth
  <a class="p-2 text-dark btn btn-outline-primary "  href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">Выйти</a>
     @endauth
</div>