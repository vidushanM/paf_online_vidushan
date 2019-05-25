<%@ page import="models.User" %>
<%@ page import="javax.sql.*" %>
<%@ page language = "java" contentType = "text/html;  charset=ISO-8859-1" pageEncoding = "ISO-8859-1" %>

<%
	User user = new User();
	String loginMsg = "Please login to continue....";
	
	if(request.getMethod().equalsIgnoreCase("post"))
	{
		if(user.login(request.getParameter("txtUserName"),request.getParameter("txtPassword")).equals("SUCCESS"))
		{
			request.getRequestDispatcher("/items.jsp").forward(request, response);
		}
		else{
			loginMsg = "Invalid credentials";
		}
	}

 %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script type="text/javascript" src=Controllers/jQuery.js></script>
<script type="text/javascript" src=Controllers/ControllerMain.js></script>
 <link rel="stylesheet" href="css/stylesheet.css">
</head>
<body>
<form id = "formLogin" action= "index.jsp" method="post"> 
	UserName = <input id ="txtUserName" name="txtUserName" type="text"><br>
	password = <input id ="txtPassword" name= "txtPassword" type= "password"> <br>
	<input id = "btnLogin" name= "btnLogin" type= "button" value= "Login"> <br>
	<div id ="divStsMsgLogin">
	<% out.println(loginMsg); %>

	</div>
</form>

<div class="login-page">
  <div class="form">
    <form class="register-form">
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form class="login-form">
      <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>


</body>
</html>