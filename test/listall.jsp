<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Welcome</title>
</head>
<body>

	Welcome to study Java Web b.jsp
        <br/>
	<!-- here start test use bean -->
	<jsp:include page="page\testUseBean.jsp"/>
	
	<%
	%>

	<!-- here start test connect to mysql -->
	<jsp:include page="page\connectDb.jsp"/>



	<%!
	public int count;
	public String info(){
	    return "hello";
	}
	%>
	
	<%
	out.println(info());
	out.println(count++);
	%>
	<br/>
	
	<%=info()%>
	<%=count++%>
	<br/>

	<table bgcolor="#9999dd" border="1" width="300px">
		
	<%
	for(int i=0; i<10; i++)
	{
	%>
		<tr>
			<td>loop value</td>
			<td><%=i%></td>
		</tr>
	<%
	}
	%>
	</table>	

	<jsp:include page="form.jsp"/>	

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
