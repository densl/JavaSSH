package zeng;
import java.io.*;
import javax.servlet.http.*;

public class SecondServlet extends HttpServlet
{
  public void service(HttpServletRequest request,
		 HttpServletResponse response)
	 throws javax.servlet.ServletException, java.io.IOException
 {
	request.setCharacterEncoding("GBK");
	response.setContentType("text/html;charSet=GBK");
	
	//String name = request.getParameter("name"):
	PrintStream out = new PrintStream(response.getOutputStream());

	out.println("<html>");
	out.println("<head>");
	out.println("<title>Servlet test</title>");
	out.println("</head>");
	out.println("<body>");
	
	out.println("hello, this is second servlet test!!!");
	out.println("<hr/>");
	out.println("</body>");
	out.println("</html>");
 } 

}
