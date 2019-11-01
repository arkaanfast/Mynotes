<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<meta charset="UTF-8">
<title>Sign-In</title>
</head>
<body>
	<div class="row">
		<div class="col s12 m6">
			<div class="card blue-grey darken-1" id="main-card">
				<div class="card-content white-text">
					<div class="row">
						<form class="col s12" action="signincontroller" method="post">
							<div class="row">
								<div class="input-field col s4">
									<input placeholder="USN" type="text" class="validate" name="usn" required="required">
								</div>
							</div>
							<div class="row">
								<div class="input-field col s4">
									<input placeholder="Password" type="password" class="validate" name="password" required="required">
								</div>
							</div>
							<div class="row center">
								<div class="col s5">
									<input class="btn waves-effect  grey darken-4" type="submit">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>