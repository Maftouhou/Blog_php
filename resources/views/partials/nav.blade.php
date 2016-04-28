<nav>
    <ul id="navigation">
        <li>Home</li>
        <li>Contact</li>
    </ul>
    <ul id="connexion">
        <li>
            @if($loginState === true)
                <a href="{{url('logout')}}">Logout</a>
            @else
                <a href="{{url('login')}}">Login</a>
            @endif
        </li>
        <li>Registrer</li>
    </ul>
</nav>
