<?php $loginState = Auth::check() ? true : false ?>
<nav>
    <ul id="navigation">
        <li><a href="{{url('/')}}">&utrif; Home</a></li>
        <li><a>Contact &squarf;</a></li>
    </ul>
    <ul id="connexion">       
        @if($loginState === true)
            <li><a id="login" href="{{url('logout')}}">&ltrif; Logout </a></li>
            <li><a id="dashbord" href="{{url('post')}}">Dashbord </a></li>
        @else
            <li><a id="logout" href="{{url('login')}}">Login &rtrif;</a></li>
        @endif
    </ul>
</nav>
