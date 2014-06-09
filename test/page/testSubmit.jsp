<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Welcome to submit.jsp</title>
</head>
<body>
        <hr/>
	<%=request.getParameter("username")%>	
	<%
	String[] colors = request.getParameterValues("color");
	for(String i :colors)
		out.write(i+"<br/>");
	%>

</body>
</html>
