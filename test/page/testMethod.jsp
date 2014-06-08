	<%!
	public int count;
	public String info(){
	    return "This info() method!!";
	}
	%>
	
	<br/>Start test method<br/>
	<%
	out.println(info());
	out.println(count++);
	%>
	<br/>
	
	<%=info()%>
	<%=count++%>
	<br/>

