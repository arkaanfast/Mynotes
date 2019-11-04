<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mynotes.dao.FacultyDao"%>
<html>
<head>
<script src="JS/jquery.js" type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('input#input_text, textarea#textarea2').characterCounter();
	});
</script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="css/facultypage.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<meta charset="UTF-8">
<title>Faculty</title>
</head>
<body>
	<%
		String name = (String) session.getAttribute("F_name");
		String department = (String) session.getAttribute("Department");
		String subject = (String) session.getAttribute("Subject");
		int subject_id = (int) session.getAttribute("Subject_id");
		FacultyDao dao = new FacultyDao();
	%>
	<!-- Header -->
	<!-- Welcome Card -->
	<div class="row">
		<div class="col s12 m12">
			<div class="card blue-grey darken-1">
				<div class="card-content white-text">
					<span class="card-title">Welcome <%=name%></span>
					<ul>
						<li><h6>
								Department:<%=department%></h6></li>
						<li><h6>
								Subject:<%=subject%></h6></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col s12 m2 center">
			<div class="card blue-grey darken-1">
				<div class="card-content white-text">
					<span class="card-title">Module 1</span>
					<%
						if (dao.vaildatemodule(subject, "module_1")) {
					%>
					<p>Submitted</p>
					<%
						} else {
					%>
					<form action="modulePage" method="post"
						enctype='multipart/form-data'">
						<div class="file-field input-field">
							<div class="btn">
								<span>File</span> <input type="file" name="file1">
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text">
							</div>
						</div>
						<div class="row">
							<div class="col s6">
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Submit <i class="material-icons right">send</i>
								</button>
							</div>
						</div>
					</form>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<div class="col s12 m2 center">
			<div class="card blue-grey darken-1">
				<div class="card-content white-text">
					<span class="card-title">Module 2</span>
					<%
						if (dao.vaildatemodule(subject, "module_2")) {
					%>
					<p>Submitted</p>
					<%
						} else {
					%>
					<form action="modulePage" method="post"
						enctype='multipart/form-data'>
						<div class="file-field input-field">
							<div class="btn">
								<span>File</span> <input type="file" name="file2">
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text">
							</div>
						</div>
						<div class="row">
							<div class="col s6">
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Submit <i class="material-icons right">send</i>
								</button>
							</div>
						</div>
					</form>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<div class="col s12 m2 center">
			<div class="card blue-grey darken-1">
				<div class="card-content white-text">
					<span class="card-title">Module 3</span>
					<%
						if (dao.vaildatemodule(subject, "module_3")) {
					%>
					<p>Submitted</p>
					<%
						} else {
					%>
					<form action="modulePage" method="post"
						enctype='multipart/form-data'>
						<div class="file-field input-field">
							<div class="btn">
								<span>File</span> <input type="file" name="file3">
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text">
							</div>
						</div>
						<div class="row">
							<div class="col s6">
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Submit <i class="material-icons right">send</i>
								</button>
							</div>
						</div>
					</form>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<div class="col s12 m2 center">
			<div class="card blue-grey darken-1">
				<div class="card-content white-text">
					<span class="card-title">Module 4</span>
					<%
						if (dao.vaildatemodule(subject, "module_4")) {
					%>
					<p>Submitted</p>
					<%
						} else {
					%>
					<form action="modulePage" method="post"
						enctype='multipart/form-data'>
						<div class="file-field input-field">
							<div class="btn">
								<span>File</span> <input type="file" name="file4">
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text">
							</div>
						</div>
						<div class="row">
							<div class="col s6">
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Submit <i class="material-icons right">send</i>
								</button>
							</div>
						</div>
					</form>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<div class="col s12 m2 center">
			<div class="card blue-grey darken-1">
				<div class="card-content white-text">
					<span class="card-title">Module 5</span>
					<%
						if (dao.vaildatemodule(subject, "module_5")) {
					%>
					<p>Submitted</p>
					<%
						} else {
					%>
					<form action="modulePage" method="post"
						enctype='multipart/form-data'>
						<div class="file-field input-field">
							<div class="btn">
								<span>File</span> <input type="file" name="file5">
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text">
							</div>
						</div>
						<div class="row">
							<div class="col s6">
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Submit <i class="material-icons right">send</i>
								</button>
							</div>
						</div>
					</form>
					<%
						}
					%>
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