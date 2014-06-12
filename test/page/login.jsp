<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="error.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Welcome to jsp login page</title>
</head>
<body>
	
	Welcome to jsp login page <br/><hr/>

<span style="color:red;font-weight:bold">
	<%
	if (request.getAttribute("err") != null)
	{
		out.println(request.getAttribute("err") +"<br/>");
	}
	%>
</span>

<form id="login" method="post" action="login">
	username <input type="text" name="username"/><br/>
	password <input type="password" name="pass"/><br/>
	<input type="submit" value="login"/><br/>
</form>

</body>
</html>
