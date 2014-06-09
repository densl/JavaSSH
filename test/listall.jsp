<%@ page contentType="text/html; charset=GBK" language="java" 
        errorPage="error.jsp" %>
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

	
	<%-- %=3/0 --%>
	<!-- here start test use bean -->
	<%-- jsp:include page="page\testUseBean.jsp"/ --%>
	<%@ include file="page\testUseBean.jsp"%>

	<!-- here start test connect to mysql -->
	<%-- jsp:include page="page\testConnectDb.jsp"/ --%>
	<%@ include file="page\testConnectDb.jsp"%>
	
	<!-- start test jsp declare function -->
	<%-- jsp:include page="page\testDeclare.jsp"/ --%>
	<%@ include file="page\testDeclare.jsp"%>

	<!-- start test jsp expression -->
	<%--jsp:include page="page\testExpression.jsp"/ --%>
	<%@ include file="page\testExpression.jsp"%>

	<!-- start test form -->
	<%--jsp:include page="page\testForm.jsp"/ --%>
	<%@ include file="page\testForm.jsp"%>	

	<!-- start test time -->
	<%@ include file="page\testTime.jsp"%>


	<br/>
	<% for(int i=3; i<6; i++){
	     out.print("<font size='"+i+"'>");
	%>
	  Welcome to java</font><br/>
	<%}%>

  
</body>
</html>
