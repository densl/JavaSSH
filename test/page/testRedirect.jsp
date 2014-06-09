<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="error.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Welcome to test redirect page</title>
</head>
<body>
	<%
	response.sendRedirect("testSubmit2.jsp");
	%>
</body>
</html>
