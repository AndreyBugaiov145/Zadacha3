

@include('inc.Head') 
<div class="container mt-5">
    @include('inc.meseges')
    <div class="gridContent">
        <div class="">@include('inc.aside')</div>
        <div class="">@yield('content')</div>
        
    </div>
</div>
@include('inc.footer') 
