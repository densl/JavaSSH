package zeng;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet(name="firstservlet", urlPatterns="/firstservlet")
public class FirstServlet extends HttpServlet
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
	
	out.println("hello, this is a servlet test!!!");
	out.println("<hr/>");
	out.println("</body>");
	out.println("</html>");
 } 

}
