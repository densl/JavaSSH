<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="error.jsp" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Welcome to submit.jsp</title>
</head>
<body>
        This is submit page. <br/>
	<hr/>

	<img src="/page/testImg.jsp">
	<%
	String username = request.getParameter("username");
	if (username.equals("zeng"))
	{
request.getRequestDispatcher("/page/testImg.jsp").forward(request, response);
request.getRequestDispatcher("/page/testSubmit2.jsp").forward(request, response);
	}
	out.write("<hr/>username<br/>"+username);	
	String[] colors = request.getParameterValues("color");
	out.write("<hr/>color<br/>");
	if (colors != null)
	for(String i :colors)
		out.write(i+"<br/>");
	
	out.write("<hr/>");
	String sex = request.getParameter("sex");
	if (sex != null)
	out.write("sex  "+sex+"<br/>");

	out.write("<hr/>");
	String country = request.getParameter("country");
	out.write("country "+country);	
	%>
	<hr/>
	<%
	Enumeration<String> headerNames= request.getHeaderNames();
	while (headerNames.hasMoreElements())
	{
		String headerName = headerNames.nextElement();
		out.println(headerName+"  -->  " +
			request.getHeader(headerName)+"<br/>");
	}
	%>
	<hr/>
</body>
</html>
