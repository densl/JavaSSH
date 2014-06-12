package zeng;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name="login", urlPatterns={"/login"})
public class MvcOne extends HttpServlet
{
	public void service(HttpServletRequest request,
			HttpServletResponse response)
		throws ServletException, java.io.IOException
	{
		String errMsg = "";

		RequestDispatcher rd;
		
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");

		if (username.equals("zeng")){
			rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}
		else
		{
			rd = request.getRequestDispatcher("/mvc1.jsp");
			String str = "hello, this is servlet one";
			zeng.MvcBean1 mvcbean = new zeng.MvcBean1();
			str = mvcbean.echos();

			request.setAttribute("str", str);
			rd.forward(request,response);
		}
	}
}




