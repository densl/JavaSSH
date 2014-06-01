<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
<head>
	<title>Welcome</title>
</head>
<body>

	Welcome to study Java Web

	<%
	out.println("<br/>");
	out.println("Time is:");
	out.println(new java.util.Date());
	out.println("<br/>");
	%>


	<% for(int i=0; i<7; i++){
	     out.print("<font size='"+i+"'>");
	%>
	  Welcome to java
        </font>
        <br/>
	
	<% } %>
  
</body>
</html>
