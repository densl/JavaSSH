<body>
	<br/>Start test form <br/>
<form id="login" method="post" action="page\testSubmit.jsp">
	
	username <input type="text" name="username">
	
	<hr/>
	male <input type="radio" name="sex" value="male">
	female <input type="radio" name="sex" value="female">
	
	<hr/>
	favorite color<br/>
	red <input type="checkbox" name="color" value="red">
	white <input type="checkbox" name="color" value="white">
	blue <input type="checkbox" name="color" value="blue"><hr/>

	country<br/>
	<select name="country">
		<option value="Chinav">China</option>
		<option value="Americav">America</option>
		<option value="Englandv">England</option>
	</select><hr/>

	<input type="submit" value="login">
	<input type="reset" value="reset">
</form>
</body>
