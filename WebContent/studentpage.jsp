<%@page import="com.mynotes.dao.Studentdao" %>
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
		Studentdao dao = new Studentdao();
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
         </div>
<div class="row">
<div class="col s12 m2 center">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
	<form action="downloadcontroller"  method="get" enctype='multipart/form-data' id="form">
	<select name="subject">
		<option>AJAVA</option>
		<option>CN</option>
	</select>
	<%if(dao.downloadvalidation("Module1")){%>
		<p>Downloaded</p>
	 <%}else{%>
	 <div class="row">
    		<button class="btn waves-effect waves-light" type= submit value="Module1" name="module1">Module 1</button>
     </div>	<% } %>    
     </form>
    <div class="row">
    <form action="viewcontroller" method="post">
    <button class="btn waves-effect waves-light" type="submit" value="Module1" name="module_1">View</button>
    </form>
  	</div>
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
   <%if(dao.downloadvalidation("Module2")){%>
		<p>Downloaded</p>
	 <%}else{%>
	 <div class="row">
    		<button class="btn waves-effect waves-light" type= submit value="Module2" name="module2">Module 2</button>
     </div>	<% } %>    
  </form>
  <div class="row">
    <form action="viewcontroller" method="post">
    <button class="btn waves-effect waves-light"  type="submit" value="Module2" name="module_2">View</button>
    </form>
  	</div>
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
    <%if(dao.downloadvalidation("Module3")){%>
		<p>Downloaded</p>
	 <%}else{%>
	 <div class="row">
    		<button class="btn waves-effect waves-light" type= submit value="Module3" name="module3">Module 3</button>
     </div>	<% } %>    
  </form>
  <div class="row">
    <form action="viewcontroller" method="post">
    <button class="btn waves-effect waves-light" type="submit" value="Module3" name="module_3">View</button>
    </form>
  	</div>
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
     <%if(dao.downloadvalidation("Module4")){%>
		<p>Downloaded</p>
	 <%}else{%>
	 <div class="row">
    		<button class="btn waves-effect waves-light" type= submit value="Module4" name="module4">Module 4</button>
     </div>	<% } %>    
  </form>
  <div class="row">
    <form action="viewcontroller" method="post">
    <button class="btn waves-effect waves-light" type="submit" value="Module4" name="module_4">View</button>
    </form>
  	</div>
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
     <%if(dao.downloadvalidation("Module5")){%>
		<p>Downloaded</p>
	 <%}else{%>
	 <div class="row">
    		<button class="btn waves-effect waves-light" type= submit value="Module5" name="module5">Module 5</button>
     </div>	<% } %>    
  </form>
  <div class="row">
    <form action="viewcontroller" method="post">
    <button class="btn waves-effect waves-light" type="submit" value="Module5" name="module_5">View</button>
    </form>
  	</div>
  </div>
  </div>
  </div>
  </div>
  <footer class="page-footer blue-grey darken-1" id="footer">
		<div class="container">
			<div class="row" id="footer-row">
				<div class="col s12">
					<h5 class="white-text">MyNotes</h5>
					<p class="grey-text text-lighten-4">By Arkaan, Shayiz and Ridhaan</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>