<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/faculty.css">
<title>MyNotes</title>
</head>
<body>
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
	<div class="row" id="card-row">
		<div class="col s4">
			<div class="card red lighten-1" id="faculty-card">
				<div class="card-content white-text">
					<form action="facultypage" method="post">
						<div class="row">
							<div class="input-field col s6" id="input">
								<input placeholder="ID" type="text" class="validate" name="Fid">
								<input class="waves-effect waves-light btn" type="submit">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="page-footer" id="footer">
		<div class="container">
			<div class="row" id="footer-row">
				<div class="col s12">
					<h5 class="white-text">MyNotes</h5>
					<p class="grey-text text-lighten-4">By Arkaan, Shayiz and
						Ridhaan</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>