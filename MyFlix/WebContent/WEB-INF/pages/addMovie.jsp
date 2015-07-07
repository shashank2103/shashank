<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Movies Page</title>
<link href= "/MyFlix/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/MyFlix/resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="http://getbootstrap.com/examples/carousel/carousel.css" rel="stylesheet"/>
<script type="text/javascript" src="/MyFlix/resources/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/MyFlix/resources/bootstrap/js/bootstrap.min.js"></script>


</head>
<body>


<nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/movieflix/">MyFlix</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/movieflix/addmovie">Add Movies <span class="sr-only">(current)</span></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="jumbotron">
<div class="container">
  <h1>Add Latest Movies</h1>
  </div>
</div>


<div class="container">
<div class="col-md-8">


<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Add Details</h3>
  </div>
  
  <div class="panel-body">
 
<form:form method="POST" modelAttribute="movie" action="/MyFlix/addMovie">
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">MovieName</span>
  <form:input type="text" class="form-control"  path="mname" required ="true" placeholder="Enter MovieName" aria-describedby="sizing-addon2"></form:input>
</div>
<br>

 
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">Movie Director</span>
  <form:input type="text" class="form-control" path="mdirector" required="true" placeholder="Enter Movie Director" aria-describedby="sizing-addon2"></form:input>
</div>
<br>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">Release Date</span>
  <form:input type="text" class="form-control" path="releasedate" placeholder="Enter ReleaseDate(year-month-date)" aria-describedby="sizing-addon2"></form:input>
</div>
<br>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">Starring</span>
  <form:input type="text" class="form-control" path="starring" placeholder="Enter starring" aria-describedby="sizing-addon2"></form:input>
</div>
<br>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">ImageURL</span>
  <form:input type="text" class="form-control" path="imageurl" placeholder="Enter imageurl" aria-describedby="sizing-addon2"></form:input>
</div>
<br>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">VideoURL</span>
  <form:input type="text" class="form-control" path="videourl" placeholder="Enter videourl" aria-describedby="sizing-addon2"></form:input>
</div>
<br>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">RunTime</span>
  <form:input type="text" class="form-control" path="runtime" placeholder="Enter runtime" aria-describedby="sizing-addon2"></form:input>
</div>
<br>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">Genre</span>
  <form:input type="text" class="form-control" path="genre" placeholder="Enter genre" aria-describedby="sizing-addon2"></form:input>
</div>
<br>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">Movie Language</span>
<form:select class="form-control"  path = "language" id="movie">
<c:forEach items="${ language}" var="language">
<option value="${ language}">${ language}</option>
</c:forEach>
   
    </form:select>
  
</div>
<br>
<div class="form-group">
  <label for="comment">Plot</label>
  <form:textarea class="form-control" rows="5"  path ="plot" id="comment"></form:textarea>
</div>

<br>
 <button type="submit" class="btn btn-danger pull-right">Add</button>
 </form:form>

  
  </div>
</div>

</div>
</div>

</body>
</html>