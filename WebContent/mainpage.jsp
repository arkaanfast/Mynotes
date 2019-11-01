<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<meta charset="UTF-8">
<title>MyNotes</title>
</head>
<body>
<!-- Navigation Bar -->
	<nav class="navbar">
    <div class="nav-wrapper container">
      <a href="#" class="brand-logo">MyNotes</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="faculty.jsp">Faculty</a></li>
        <li><a href="signin.jsp">Sign up</a></li>
        <li><a href="register.jsp">Register</a></li>
      </ul>
    </div>
  </nav>
<div class="row" id="content-row">
        <div class="col s4">
            <div class="center">
                <i class="large material-icons" style="color: #EE6E73">flash_on</i>
                <p>Access notes faster</p>
                <p class="light center">Get faster access to your notes</p>
            </div>
        </div>
        <div class="col s4">
            <div class="center">
                <i class="large material-icons" style="color: orange">camera</i>
                <p>Organized Notes</p>
                <p class="light center">Easier to access notes no need to search for them on your system</p>
            </div>
        </div>

        <div class="col s4">
            <div class="center">
                <i class="large material-icons" style="color: blue">chrome_reader_mode</i>
                <p>A Pretty GUI</p>
                <p class="light center">User friendly and attractive GUI</p>
            </div>
        </div>
        </div>
</body>
</html>