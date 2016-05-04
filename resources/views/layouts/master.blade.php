<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PHP BLOG Project</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="{{url('assets/css/app.min.css')}}" type="text/css"/>
    <link rel="stylesheet" href="{{url('assets/css/bootstrap.css')}}" type="text/css"/>
</head>
<body>
    <div id="wrapper">
        <header id="page_header">
            @include('partials.nav')
        </header>

        <section id="page_content">
            <main id="main_content">
                    @yield('content')
            </main>

            <aside id="sidebar">
                @include('partials.sidebar')
            </aside>
        </section>

        <footer id="page_footer">
            @include('partials.footer')
        </footer>
    </div>
    <script src="{{url('assets/js/app.min.js')}}" ></script>
</body>
</html>