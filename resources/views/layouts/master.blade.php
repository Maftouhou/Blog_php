<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PHP BLOG Project</title>
    <style>
/*        #wrapper{
            width: 1000px;
        }
        
        #main{
            width: 60%;
            float: left;
        }
        
        #sidebar{
            width: 40%;
            float: right;
        }
        
        #content, #sidebar{
            display: inline-block;
        }*/
    </style>
</head>
<body>
    <div id="wrapper">
        <header>
            @include('partials.nav')
        </header>

        <main id="main">
            <section id="content">
                @yield('content')
            </section>

            <aside id="sidebar">
                @include('partials.sidebar')
            </aside>
        </main>

        <footer>
            @include('partials.footer')
        </footer>
    </div>
</body>
</html>