<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="error.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Welcome to test cookie page</title>
</head>
<body>
	
	Welcome to test cookie page <br/><hr/>
	<%
	String name=request.getParameter("name");
	Cookie c = new Cookie("username", name);
	c.setMaxAge( 24 * 3600);
	response.addCookie(c);

	Cookie[] cs = request.getCookies();

	for (Cookie co : cs)
	{
		if (co.getName().equals("username"))
		{
		out.println("username"+co.getValue()+"<br/>");
		}
		else
		{
		out.println(co.getName() +"----" +co.getValue()+"<br/>");
		}
	}
	%>
</body>
</html>
