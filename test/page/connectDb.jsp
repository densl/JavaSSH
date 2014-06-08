	<%@ page import="java.sql.*" %>

	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(
	"jdbc:mysql://localhost:3306/db_test", "root", "1234");

	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from tb_test");
	%>

	<br/>Start connect to mysql db<br/>
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
	<br/>
