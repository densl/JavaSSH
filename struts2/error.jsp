<%@ page contentType="text/html; charset=GBK" language="java"
	isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title> This is error page </title>
</head>

<body>
	<!-- annotation -->
	<%-- annotation --%>
	There's something wrong.<br/><br/>

	Error Type:
	<%=exception.getClass()%><br/>
	Error Msg :
	<%=exception.getMessage()%><br/>
</body>
</html>

