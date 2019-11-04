<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="css/register.css"> 
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
<div class="card blue-grey darken-1" id="main-header">
        <div class="card-content white-text">       
        <span class="card-title">Registration</span> 
        
        <% if(session.getAttribute("error") == "error") { %>
        
        	<h6><b style="color: red; font: 30px;">The password entered does not match</b></h6>
       		<% session.removeAttribute("error"); %> 
        <% } %>   
        <% if(session.getAttribute("success") == "success") { %>
        	
       		<h6><b style="color: red; font: 30px;">Successfully registered signup to continue </b></h6> 	
        	<% session.removeAttribute("success"); %>
        	 <a href="signin.jsp">Sign In</a>
        <% } %>
    </div>
   </div>
 <div class="card grey darken-3" id="main-card">
   <div class="card-content white-text">
	<div class="row" id="main-form">
    <form class="col s12" action="registercontroller" method="post">
      <div class="row">
        <div class="input-field col s4">
          <input id="first_name" type="text" class="validate" placeholder="First Name" name="first" required="required">
        </div>
        <div class="input-field col s4">
          <input id="last_name" type="text" class="validate" placeholder="Last Name" name="last" required>
        </div>
      </div>
      <div class="row center">
      <div class="input-field col s5">
          <input id="USN" type="text" class="validate" placeholder="USN" name="usn">
        </div>
       </div>
      <div class="row">
        <div class="input-field col s4">
          <input id="password" type="password" class="validate" placeholder="Password" name="pass" required="required">
        </div>
         <div class="input-field col s4">
          <input id="password" type="password" class="validate" placeholder="Retype-Password" name="repass" required="required">
        </div>
      </div>      
      <div class="row center">
        <div class="input-field col s5">
          <input id="email" type="email" class="validate" placeholder="Email" name="email" required>
        </div>
      </div>
      <div class="row center">
      	<div class="col s5">
      		<input class="btn waves-effect  grey darken-4" type="submit">
    			<i class="material-icons">send</i>  
      </div>	
      </div>
      </form>
      </div>
      </div>
      </div>
</body>
</html>