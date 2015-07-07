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
<link href="WebContent/resources/bootstrap/css/carousel.css"
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
						<h3 class="panel-title">LATEST MOVIES</h3>
					</div>
					<div class="panel-body">

						<div class="row">
						<c:forEach items="${latestmovies}" var="m">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="${m.imageurl}" alt="..." style="height:200px">
									<div class="caption">
										 <h6><a href="/MyFlix/movieInfo?mid=${m.mid}">${m.mname}</a></h6>
										
									</div>
								</div>
							</div>
							</c:forEach>
						</div>





					</div>
				</div>



				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">FEATURED MOVIES</h3>
					</div>
					<div class="panel-body">

						<div class="row">
						<c:forEach items="${movies}" var="m">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="${m.imageurl}" alt="..." style="height:200px">
									<div class="caption">
										 <h6><a href="/MyFlix/movieInfo?mid=${m.mid}">${m.mname}</a></h6>
										
									</div>
								</div>
							</div>
							</c:forEach>
						</div>





					</div>
				</div>

			</div>

			<div class="col-md-3">

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">SUGGESTIONS</h3>
					</div>
					<div class="panel-body">

						<div class="row">
<c:forEach items="${movies}" var="m">
							<div class="thumbnail">
								<div class="embed-responsive embed-responsive-4by3">
								
  <iframe class="embed-responsive-item" src="${m.videourl}"></iframe>
</div>
								<div class="caption">
									<h6>${m.mname}</h6>
									
								</div>

							</div>
							</c:forEach>
						</div>

					</div>
				</div>

			</div>



		</div>
	</div>


</body>
</html>