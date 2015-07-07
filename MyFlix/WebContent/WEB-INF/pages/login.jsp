<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyFlixHome</title>
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
	<style>
	body
    {
        background:url('http://static.squarespace.com/static/52685923e4b0269256606ca2/t/527af6eae4b06f059b9c5091/1383790314335/movies.jpg') no-repeat center center fixed;
        background-size: cover;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        margin: 0;
        padding: 0;
    }
    </style>
</head>
<body>
	<div class="row">
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">My Flix</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" placeholder="UserId" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" placeholder="Password" class="form-control">
					</div>
					<button type="submit" class="btn btn-success">Sign in</button>
				</form>
			</div>
			<!--/.navbar-collapse -->
	</div>
	</nav>
	</div>
	<br>
	<br>
	<br>
	<div class="container-fluid">
	<div class=row">
	<div class="col-lg-6">
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  
  <div class="carousel-inner" role="listbox">
    <c:forEach items="${carouselMovies}" var="n" varStatus="i">
        <c:choose>
        <c:when test="${i.index ==0}">
         <div class="item active">
          <img class="third-slide" src="${n.imageurl}" alt="${n.starring}">
          <div class="container">
            <div class="carousel-caption">
              <h1>${n.starring}</h1>
            </div>
          </div>
        </div>
        </c:when>
        <c:otherwise>
         <div class="item">
          <img class="third-slide" src="${n.imageurl}" alt="${n.starring}">
          <div class="container">
            <div class="carousel-caption">
              <h1>${n.starring}</h1>
            </div>
          </div>
        </div>
        </c:otherwise>
        </c:choose>
        </c:forEach>
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
</div>	 
</div>
</div>
<div class="col-md-4">

 <form:form method="POST" modelAttribute="user" action="/MyFlix" class="form-signin">
        <h2 style="color:Red">Register Now!</h2>
        <input type="text"  class="form-control" path="firstname" required ="true" placeholder="First Name" required>
        <br>
        <input type="text"  class="form-control" path="lastname" required ="true" placeholder="Last Name" required>
          <br>
           <input type="text"  class="form-control" path="userid" required ="true" placeholder="UserId" required>
           <br>
           <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" path="password" required ="true" placeholder="Password" required>
       
       
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
      </form:form>

</div>	

	</div>
	
	</body>
	</html>