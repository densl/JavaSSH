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

        <br/>
	<%=request.getParameter("username")%>	
	<%
	%>

	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(
	"jdbc:mysql://localhost:3306/db_test", "root", "1234");

	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from tb_test");
	%>

	<table bgcolor="#9999dd" border="1" width="300">

	<%
	while(rs.next())
	{
	%>
		<tr>
			<!-- anotation -->
			<%-- anotation --%>
                <td>
			<%=rs.getString(1)%>
		</td>
		<td>
			<%=rs.getString(2)%>
		</td>
		</tr>
	<%
	}
	%>
		

</body>
</html>
