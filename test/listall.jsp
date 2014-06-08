<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Welcome</title>
</head>
<body>
	Welcome to study Java Web listall.jsp
        <br/>
	<!-- here start test use bean -->
	<jsp:include page="page\testUseBean.jsp"/>

	<!-- here start test connect to mysql -->
	<jsp:include page="page\testConnectDb.jsp"/>

	<!-- start test jsp declare function -->
	<jsp:include page="page\testDeclare.jsp"/>

	<!-- start test jsp expression -->
	<jsp:include page="page\testExpression.jsp"/>

	<!-- start test form -->
	<jsp:include page="page\testForm.jsp"/>	

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
