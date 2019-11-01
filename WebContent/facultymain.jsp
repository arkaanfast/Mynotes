<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="css/facultypage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<meta charset="UTF-8">
<title>Faculty</title>
</head>
<body>
	<%
		String name = (String) session.getAttribute("F_name");
		String department = (String) session.getAttribute("Department");
		String subject = (String) session.getAttribute("Subject");	
		int subject_id = (int) session.getAttribute("Subject_id");
	%>
<!-- Header --> 
<!-- Welcome Card -->
 <div class="row">
    <div class="col s12 m12">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Welcome <%=name%></span>
          <ul>
          	<li><h6>Department:<%=department%></h6></li>
          	<li><h6>Subject:<%=subject%></h6></li>
          </ul>
        </div>
        </div>
        </div>
    <div class="col s12 m2 center" id="first">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Module 1</span>
          <%if(session.getAttribute("module1") == "yes"){%>
            	<p>Submitted</p>
    		<%}else{%>
    			<form action="modulePage"  method="post" enctype='multipart/form-data'>
    <input type="file" name="file1">
    <input type="submit" value="submit">
  </form>
    		<%}%>
		</div>
        </div>
        </div>
         <div class="col s12 m2 center">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Module 2</span>
          <%if(session.getAttribute("module2") == "yes"){%>
            	<p>Submitted</p>
    		<%}else{%>
    			<form action="modulePage"  method="post" enctype='multipart/form-data'>
    <input type="file" name="file2">
    <input type="submit" value="submit">
  </form>
    		<%}%>
		</div>
        </div>
        </div>
         <div class="col s12 m2 center">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Module 3</span>
          <%if(session.getAttribute("module3") == "yes"){%>
            	<p>Submitted</p>
    		<%}else{%>
    			<form action="modulePage"  method="post" enctype='multipart/form-data'>
    <input type="file" name="file3">
    <input type="submit" value="submit">
  </form>
    		<%}%>
		</div>
        </div>
        </div>
         <div class="col s12 m2 center">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Module 4</span>
          <%if(session.getAttribute("module4") == "yes"){%>
            	<p>Submitted</p>
    		<%}else{%>
    			<form action="modulePage"  method="post" enctype='multipart/form-data'>
    <input type="file" name="file4">
    <input type="submit" value="submit">
  </form>
    		<%}%>
		</div>
        </div>
        </div>
         <div class="col s12 m2 center">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Module 5</span>
          <%if(session.getAttribute("module5") == "yes"){%>
            	<p>Submitted</p>
    		<%}else{%>
    			<form action="modulePage"  method="post" enctype='multipart/form-data'>
    <input type="file" name="file5">
    <input type="submit" value="submit">
  </form>
    		<%}%>
		</div>
        </div>
        </div>
      </div>
</body>
</html>