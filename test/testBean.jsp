<body>
	<jsp:useBean id="b1" class="zeng.Mytest" scope="page"/>

	<jsp:setProperty name="b1" property="name" value="name1"/>

	<jsp:setProperty name="b1" property="age" value="33"/>

	<jsp:getProperty name="b1" property="name"/>
	<br/>
	<jsp:getProperty name="b1" property="age"/>

</body>

