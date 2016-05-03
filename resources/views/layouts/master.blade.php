<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PHP BLOG Project</title>
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
</body>
</html>