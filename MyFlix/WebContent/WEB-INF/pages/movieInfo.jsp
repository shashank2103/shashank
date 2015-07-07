<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyFlix</title>

<link href="/MyFlix/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="/MyFlix/resources/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" />
<link href="http://getbootstrap.com/examples/carousel/carousel.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="/MyFlix/resources/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/MyFlix/resources/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/MyFlix/home">MyFlix</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/MyFlix/home">HOME<span
						class="sr-only">(current)</span></a></li>
				<li><a href="/MyFlix/genericHome?language=bollywood">BOLLYWOOD</a></li>
				<li><a href="/MyFlix/genericHome?language=hollywood">HOLLYWOOD</a></li>
				<li><a href="/MyFlix/genericHome?language=tollywood">TOLLYWOOD</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">ADDMOVIE</a></li>

			</ul>

			<form class="navbar-form navbar-right" role="search" method="POST" action="/MyFlix/search">
				<div class="form-group">
					<input type="text" id="query" name="query" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Go!</button>
			</form>



		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">${movieInfo.mname}</h3>
					</div>
					<div class="panel-body">

						<div class="row">

							<div class="thumbnail">
								<img src="${movieInfo.imageurl}" alt="...">
								<div class="caption">
									<h5>DIRECTED BY:${movieInfo.mdirector}</h5>
									<h5>RELEASED ON:${movieInfo.releasedate}</h5>
									<h5>CAST:${movieInfo.starring}</h5>
									<h5>GENRE:${movieInfo.genre}</h5>
									<h5>RUN TIME:${movieInfo.runtime}</h5>
									<P>${movieInfo.plot}</P>
									
								</div>
							</div>
						</div>






					</div>
				</div>
			</div>

			<div class="col-md-3">

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Panel title</h3>
					</div>
					<div class="panel-body">

						<div class="row">

							<div class="thumbnail">
								<img src="..." alt="...">
								<div class="caption">
									<h3>Thumbnail label</h3>
									<p>...</p>
									<p>
										<a href="#" class="btn btn-primary" role="button">Button</a> <a
											href="#" class="btn btn-default" role="button">Button</a>
									</p>
								</div>

							</div>
						</div>



					</div>
				</div>

			</div>



		</div>
	</div>


</body>
</html>