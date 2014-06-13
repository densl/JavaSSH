<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="error.jsp" %>
<%@ taglib uri="http://hello/mytaglib" prefix="mytag"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Welcome to jsp tag page</title>
</head>
<body>
	
	Welcome to jsp tag page <br/><hr/>

	<mytag:helloWorld/><br/>

</body>
</html>
