package zeng;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.*;
import javax.servlet.*;
import javax.servlet.jsp.*;

public class HelloTag extends SimpleTagSupport
{
	public void doTag() throws JspException,IOException{
		getJspContext().getOut().write("hello world"
				+ new java.util.Date());
	}
}



