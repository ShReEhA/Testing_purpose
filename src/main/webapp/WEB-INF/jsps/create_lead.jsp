<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create Lead</title>
</head>
<body>
	<h2>Lead | Create</h2>
	<hr>
	<form action="save" method="post">
	<pre>
		First Name <input type="text" name="firstName"required/><br>
		Last Name  <input type="text" name="LastName"/><br>
		Email      <input type="text" name="email"/><br>
		mobile     <input type="text" name="mobile"/><br>
        Source:
				   <select name="source">
				   <option value="radio">radio</option>
				   <option value="news paper">news paper</option>
				   <option value="trade show">trade show</option>
				   <option value="website">WebSite</option>
				   </select>
		
		
		<input type="submit" value="save"/>
	</pre>
	</form>
</body>
</html>