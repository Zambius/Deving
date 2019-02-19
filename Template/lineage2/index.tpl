<!DOCTYPE html>
<html>
<head>
    <title>{title}</title>
    <link rel="shortcut icon" href="{url}/images/favicon.ico">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="Description" content="stress, lineage2, la2, stressweb.ru">
    <meta name="Keywords" content="stress, lineage2, la2, stressweb.ru">
    <link href="{template}/css/style.css" rel="stylesheet" type="text/css" />
    <link href="{template}/css/hover-min.css" rel="stylesheet" type="text/css" />
    <link href="{template}/css/engine.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="{template}/js/circle-progress.js"></script>
    <script type="text/javascript" language="javascript" src="{template}/js/jquery.carouFredSel-5.2.2-packed.js"></script>
    <script type="text/javascript" language="javascript">
        $(function() {
            //	Scrolled by user interaction
            $('#foo2').carouFredSel({
                prev: '#prev2',
                next: '#next2',
                pagination: "#pager2",
                auto: false
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function(e) {
            if($('#progress1').length > 0) {
                $('#progress1 .circle').circleProgress({
                    value: $('#progress1').attr('data-online')/5000,
                    emptyFill: 'rgba(35, 35, 35, 0.5)',
                    thickness: 12,
                    startAngle: 4.73,
                    fill: { color: "#99c45a" }
                });
            }
        });
    </script>
</head>
<body>
<div class="page">
    <header class="header">
        <div class="inner-box">
            <a class="logo pulse-grow" href="/"><img src="{template}/images/logo.png" alt="logo"></a>
            <div class="status">
                {server}
            </div>
        </div>
    </header>

    <section>
        <nav class="menu">
            <div class="inner-box">
                <a class="float" href="/">HOME</a>
                <a class="float" href="/index.php?f=register">REGISTER</a>
                <a class="float" href="/">FILES</a>
                <a class="float" href="/index.php?f=stat">STATISTICS</a>
                <a class="float" href="/">DONATION</a>
                <a class="float" href="/">FORUM</a>
            </div>
        </nav>
    </section>

    <section class="container-box">
        <div class="inner-box content">
            <article class="info">
                {info}{content}																																																																																								         <div style="display:none;"><a href="https://www.vlemon.info/l2top/" title="Рейтинг серверов Lineage 2">Рейтинг серверов Lineage 2</a></div>  <div style="display:none;"><a href="https://www.vlemon.info" title="Блог посвящённый Lineage 2">Блог посвящённый Lineage 2</a></div> <div style="display:none;"><a href="https://www.lemonbitcoin.com" title="Free Bitcoin">Free Bitcoin</a></div>
            </article>
            <article class="sidebar">
                <a class="cp wobble-horizontal" href="/index.php?f=cp"></a>
                <div class="forum">
                    <div class="bar-title clearfix">Topics from the forum</div>
					<center><a href="https://www.vlemon.info" target="_blank" title="Lineage 2 Forum"><img src="https://www.vlemon.info/button.gif" alt="Lineage 2 Forum" /></a></center>
                    {forum}
                </div>
                <div class="top-player">
                    <div class="bar-title clearfix">Top 10 Players</div>
					<center><a href="https://www.vlemon.info/l2top/" target="_blank" title="Rating servers Lineage 2"><img src="https://www.vlemon.info/l2button.gif" alt="Rating servers Lineage 2" /></a></center>
                    {pvptop}
                </div>
            </article>
        </div>
    </section>

    <section class="carousel">
        <article class="inner-box list_carousel">
            <ul id="foo2">
                <li>
                    <h4>ABSOLUTELY NEW VIEW ON LINEAGE 2</h4>
                    <p>UNIQUE SERVER CONCEPT, QUALITY ASSEMBLY, 24-HOUR TECHNICAL SUPPORT FOR PLAYERS!</p>
                </li>
                <li>
                    <h4>ABSOLUTELY NEW VIEW ON LINEAGE 2</h4>
                    <p>UNIQUE SERVER CONCEPT, QUALITY ASSEMBLY, 24-HOUR TECHNICAL SUPPORT FOR PLAYERS!</p>
                </li>
                <li>
                    <h4>ABSOLUTELY NEW VIEW ON LINEAGE 2</h4>
                    <p>UNIQUE SERVER CONCEPT, QUALITY ASSEMBLY, 24-HOUR TECHNICAL SUPPORT FOR PLAYERS!</p>
                </li>
            </ul>
            <a id="prev2" class="prev" href="#">&lt;</a>
            <a id="next2" class="next" href="#">&gt;</a>
            <div id="pager2" class="pager"></div>
        </article>
    </section>

    <footer class="footer">
        <div class="inner-box cop">
            <div class="copyright">
                © 2015 YouSyte - Lineage II Gracia Epilogue
                THIS SERVER IS A TEST VARIANT OF THE LINEAGE II GAME AND IS INTENDED ONLY
                FOR ACQUAINTING PLAYERS. ALL RIGHTS BELONG TO NCSOFT
            </div>
            <div class="pay">
                <h4>Payment method:</h4>
                <div class="icon"></div>
            </div>
        </div>
    </footer>
</div>
</body>
</html>