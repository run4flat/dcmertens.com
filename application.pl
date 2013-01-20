#!/usr/bin/env perl

use Mojolicious::Lite;

get '/' => sub {
	shift->render('index');
};

app->start;

__DATA__

@@ index.html.ep
% layout 'default';
% title 'David Mertens, Scientist, Programmer';
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="#">David Mertens</a>
		</div>
	</div>
</div>
<div class="container">
	<!-- Main hero unit for a primary marketing message or call to action -->
	<div class="hero-unit">
		<h1>Scientist, Programmer</h1>
		<p>
			I love science, I love programming, and I love
			working at the intersection of the two.
		</p>
	</div>

	<!-- Example row of columns -->
	<div class="row">
		<div class="span4">
			<h2>Science</h2>
			<p>I enjoy statistical physics, and my dissertation was on synchronization.</p>
			<p><a class="btn" href="#">View details »</a></p>
		</div>
		<div class="span4">
			<h2>Computing</h2>
			<p>I enjoy computing, and I regularly contribute to open source projects including PDL, the Perl Data Language.</p>
			<p><a class="btn" href="#">View details »</a></p>
		</div>
		<div class="span4">
			<h2>Fun</h2>
			<p>I do other things to keep myself happy, too, including cooking and singing in my church choir.</p>
			<p><a class="btn" href="#">View details »</a></p>
		</div>
	</div>

	<hr>

	<footer>
		<p>© David Mertens 2013 | Powered by Perl, Mojolicious, and Bootstrap</p>
	</footer>

</div> <!-- /container -->
	

@@ layouts/default.html.ep
<!doctype html>
<html>
<head>
	<title><%= title %></title>
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
<%= content %>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>