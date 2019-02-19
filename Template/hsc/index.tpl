<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>{title}</title>
	<meta name="Description" content="hellspawnclan, lineage2, hsc, l2, private, server">
	<meta name="Keywords" content="hellspawnclan, lineage2, hsc, l2, private, server">
	<!-- Bootstrap -->
	<link href="{template}/css/bootstrap.min.css" rel="stylesheet">
	<link href="{template}/css/styles.css" rel="stylesheet">
	<link href="{template}/css/hover-min.css" rel="stylesheet">
	<link href="{template}/css/animate.css" rel="stylesheet">
	<script type='text/javascript' src="{template}/js/stressweb.js"></script>
	<script type="text/javascript" src="{template}/js/flexcroll.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="{template}/js/jquery.mixitup.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#sortplayers').mixItUp({
				load: {
					filter: '.PvP',
					sort: false
				},
				layout: {
					display: 'table'
				}
			});
		});
	</script>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>  
  <body id="home">
		<nav class="nav-main">
			<ul class="list-unstyled main-menu">
				<li class="active"><a href="/">HOME<span class="sr-only">(current)</span></a></li>
				<li><a href="/index.php?f=register">REGISTER</a></li>
				<li><a href="/index.php?f=files">DOWNLOADS</a></li>
				<li><a href="/index.php?f=about">INFOS</a></li>
				<li><a href="/index.php?f=stat">STATISTICS</a></li>
				<li><a href="/index.php?f=support">SUPPORT</a></li>
				<li><a href="/index.php?f=cp" class="btn"><img src="{template}/images/lock.png" class="i-lock"><span><b>AUTHORIZE</b><br/>LOGIN TO YOUR ACCOUNT</a></li>
			</ul>
		</nav>
    <header class="jumbotron">
    	<div class="container">
    		<a href="#" id="nav-expander" class="nav-expander fixed">MENU</a>
    		<button class="btn-primary start reg-popup"><img class="joystick" src="{template}/images/joystick.png"><span><b>FAST START</b><br>Start the game in a couple of clicks.</span></button>
    		<div class="row servers">
    			{server} 
    		</div>
    	</div>
    </header>
		<!-- Navigation Menu Start -->
			<nav class="navbar navbar-default" id="navbar">
				<div class="navbar-overlay">
					<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navi" id="bs-example-navbar-collapse-1">
					  <ul class="nav navbar-nav">
						<li class="active"><a href="/">HOME<span class="sr-only">(current)</span></a></li>
						<li><a href="/">FORUM</a></li>
						<li><a href="/index.php?f=register">REGISTER</a></li>
						<li><a href="/index.php?f=files">DOWNLOADS</a></li>
						<li><a href="/index.php?f=about" role="button">INFOS</a></li>
						<li><a href="/index.php?f=stat">STATISTICS</a></li>
						<li><a href="/index.php?f=support">SUPPORT</a></li>
					  </ul>
					  <ul class="nav navbar-nav navbar-right">
						<li><a href="/index.php?f=cp" class="btn"><img src="{template}/images/lock.png" class="i-lock"><span><b>AUTHORIZE</b><br/>LOGIN TO YOUR ACCOUNT</a></li>
					  </ul>
					</div><!-- /.navbar-collapse -->
				  </div>
			  </div>
			</nav>
			<!-- Navigation Menu End -->

		<!-- Content Block Start -->
	<div class="jumbotron content">
		<div class="container">
				<div class="col-lg-8 logo">
					{info}{content}																																																																																														
				</div>
				<!-- Sidebar Top Players Start -->
				<div class="col-lg-4 players">
					<h2><img src="{template}/images/knives.png" alt="">PLAYERS RATING</h2>
					<hr/>
					<div class="players-stats sidebar-content" id="sortplayers">
						{pvptop}
						{pktop}
						
					</div>
					<div class="filters">
							<button class="btn btn-default btn-xs filter" data-filter=".PvP">PVP</button>
							<button class="btn btn-default btn-xs filter" data-filter=".PK">PK</button>
							<!--<button class="btn btn-default btn-xs filter" data-filter="all">Общая</button>-->
						</div>
				</div>
				<!-- Sidebar Top Players End -->
				<!-- Sidebar Forum posts Start -->
				<div class="col-lg-4 forumposts">
					<h2><img src="{template}/images/letter.png" alt="">LATEST TOPICS</h2>
					<hr/>
					{forum}
					<a href="http://forum.la2-ares.pw"><button class="btn btn-default">GO TO FORUM</button></a>
				</div>
				<!-- Sidebar Forum posts End -->
				<!-- Sidebar VK Start -->
				<div class="col-lg-4 VK">
					<div id="vk_groups"></div>
				</div>
				<!-- Sidebar VK End -->
		</div>
	</div>
	<!-- Content Block End -->
	<!-- Fast start Block Start -->
	<div class="cd-popup start" role="alert">
		<div class="cd-popup-container">
			<h4>FILES FOR THE GAME</h4>
			<hr/ class="bl">
			<div class="row">
				<div class="col-lg-12">
					<h5><img src="{template}/images/ico-files1.png">1. DOWNLOAD AND INSTALL GAME</h2>
					<p>To play on the servers Hellspawnclan.com, you need the client of the game Lineage II Hight Five.</p>
					<a href="http://rutracker.org/forum/viewtopic.php?t=3820599" target="_blank" class="btn btn-default btn-lg btn-patch">DOWNLOAD CLIENT</a>
					<a href="http://www.utorrent.com/intl/ru/downloads/complete/os/win/track/stable" class="torrent"><img src="{template}/images/ico-torrent.png">DOWNLOAD CLIENT TORRENT</a>
					<hr/>
				</div>
				<div class="col-lg-12">
					<h5><img src="{template}/images/ico-files2.png">2. INSTALL PATCH</h2>
					<p>You should also install our patch or run a full scan of files (update).</p>
					<p><b>Patch unpack to the root folder of the game. Client run through l2.exe.</b></p>
					<a href="/La2-Ares.PW_Patch_V9.7z" target="_blank" class="btn btn-default btn-lg btn-patch">DOWNLOAD PATCH</a>
					<a href="https://cloud.mail.ru/public/ut3Y/EnEVceiMh" target="_blank" class="btn btn-default btn-lg btn-mirror">MIRROR</a>
					<hr/>
				</div>
				<div class="col-lg-12">
					<h5><img src="{template}/images/ico-user.png">3. REGISTER ACCOUNT</h2>
					<p>It remains only to register an account.</p>
					<a href="/index.php?f=register" class="btn btn-default btn-lg btn-patch">CREATE AN ACCOUNT</a>
				</div>
			</div>
			<a href="#0" class="cd-popup-close img-replace">CLOSE</a>
		</div> 
	</div>
	<!-- Fast start Block End -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<h5>GAME PROJECT HELLSPAWNCLAN.COM</h5>
					<p>THIS SERVER IS A VARIANT OF THE GAME LINEAGE II AND IS INTENDED ONLY FOR THE READING OF PLAYERS. ALL RIGHTS BELONG TO NCSOFT. </p>
				</div>
				<div class="col-lg-2">
					<h5>CONTACTS</h5>
					<p>MAIL : <a href="support@hellspawnclan.com">CLICK HERE</a><br/>
						FORUM : <a href="https://hellspawnclan.com/forum">CLICK HERE</a><br/>
						</p>
				</div>
				<div class="col-lg-2">
						<h5>BEST SERVER WITH ADDONS</h5>
						<p>© 2019 HellSpawnClan.com - Lineage II Hight Five<br/>
						</p>
				</div>
			</div>
			<a href="#home" class="top"><img src="{template}/images/top.png" alt=""></a>
		</div>
	</footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="{template}/js/bootstrap.min.js"></script>
		<script src="{template}/js/progressbar.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){												
	       //Navigation Menu Slider
	        $('#nav-expander').on('click',function(e){
	      		e.preventDefault();
	      		$('body').toggleClass('nav-expanded');
	      	});
	      });
		</script>
		<script type="text/javascript">
			jQuery(document).ready(function($){
				//open popup
				$('.reg-popup').on('click', function(event){
					event.preventDefault();
					$('.cd-popup').addClass('is-visible');
				});
				
				//close popup
				$('.cd-popup').on('click', function(event){
					if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup') ) {
						event.preventDefault();
						$(this).removeClass('is-visible');
					}
				});
				//close popup when clicking the esc keyboard button
				$(document).keyup(function(event){
					if(event.which=='27'){
						$('.cd-popup').removeClass('is-visible');
					}
				});
			});
		</script>
	</body>
</html>