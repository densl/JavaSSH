	<jsp:useBean id="b1" class="zeng.UseBean" scope="page"/>

	<jsp:setProperty name="b1" property="name" value="name1"/>

	<jsp:setProperty name="b1" property="age" value="33"/>

	<br/>
	Start test bean<br/>
	From bean, name is
	<jsp:getProperty name="b1" property="name"/>
	<br/>
	From bean, age is
	<jsp:getProperty name="b1" property="age"/>
	<br/>
	<%
	zeng.UseBean p1=new zeng.UseBean("newname", 55);
	pageContext.setAttribute("p1", p1);
	p1.setName("pagecontext");
	%>
	<%=p1.getName()%><br/>	
	
