	<%@ page import="java.sql.*" %>

	<%
	//web.xml way
	String driver = application.getInitParameter("driver");
	String url = application.getInitParameter("url");
	String user = application.getInitParameter("user");
	String pass = application.getInitParameter("psw");

	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url,user,pass);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from tb_test");
	%>
	
	<%--  
	//hard code
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(
	"jdbc:mysql://localhost:3306/db_test", "root", "1234");

	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from tb_test");
	--%>

	<br/>Start test mysql db<br/>
	<table bgcolor="#9999dd" border="1" width="300">
			<!-- anotation -->
			<%-- anotation --%>
	<%
	while(rs.next())
	{
	%>
		<tr>
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
	</table>
