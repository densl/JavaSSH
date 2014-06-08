<body>
	<jsp:useBean id="b1" class="zeng.UseBean" scope="page"/>

	<jsp:setProperty name="b1" property="name" value="name1"/>

	<jsp:setProperty name="b1" property="age" value="33"/>

	From bean, name is
	<jsp:getProperty name="b1" property="name"/>
	<br/>
	From bean, age is
	<jsp:getProperty name="b1" property="age"/>
	<br/>
</body>

