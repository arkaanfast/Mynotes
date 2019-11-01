<!DOCTYPE html>
<html>
<head>
<script src="JS/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="css/studentpage.css">
<title>Welcome</title>
<script>
	$(document).ready(function(){
    $('select').formSelect();
  });
</script>
</head>
<body>
<%
		String usn = (String) session.getAttribute("usn");
		String firstname = (String) session.getAttribute("firstname");
		String lastname = (String) session.getAttribute("lastname");	
	%>
<div class="row">
<div class="col s12 m12">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Welcome <%=firstname%><%=lastname %></span>
          <ul>
          	<li><h6>USN:<%=usn%></h6></li>
          </ul>
        </div>
        </div>
        </div>
<div class="col s12 m2 center" id="first">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
	<form action="downloadcontroller"  method="get" enctype='multipart/form-data'>
	<select name="subject">
		<option>AJAVA</option>
		<option>CN</option>
	</select>
    <input type="submit" value="Module 1" name="module1">
     </form>
    <div class="row">
    <form action="viewcontroller" method="post">
    <input type="submit" value="Module 1" name="module_1">
    </div>
    </form>
  	</div>
  </div>
  </div>
  <div class="col s12 m2 center">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
	<form action="downloadcontroller"  method="get" enctype='multipart/form-data'>
	<select name="subject">
		<option>AJAVA</option>
		<option>CN</option>
	</select>
    <input type="submit" value="Module 2" name="module2">
  </form>
  </div>
  </div>
  </div>
  <div class="col s12 m2 center" ">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
	<form action="downloadcontroller"  method="get" enctype='multipart/form-data'>
	<select name="subject">
		<option>AJAVA</option>
		<option>CN</option>
	</select>
    <input type="submit" value="Module 3" name="module3">
  </form>
  </div>
  </div>
  </div>
  <div class="col s12 m2 center">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
	<form action="downloadcontroller"  method="get" enctype='multipart/form-data'>
	<select name="subject">
		<option>AJAVA</option>
		<option>CN</option>
	</select>
    <input type="submit" value="Module 4" name="module4">
  </form>
  </div>
  </div>
  </div>
  <div class="col s12 m2 center">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
	<form action="downloadcontroller"  method="get" enctype='multipart/form-data'>
	<select name="subject">
		<option>AJAVA</option>
		<option>CN</option>
	</select>
    <input type="submit" value="Module 5" name="module5">
  </form>
  </div>
  </div>
  </div>
  </div>
</body>
</html>