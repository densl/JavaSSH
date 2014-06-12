package zeng;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;

@WebServlet(name="login", urlPatterns={"/login"})
public class LoginServlet extends HttpServlet
{
	public void service(HttpServletRequest request,
			HttpServletResponse response)
		throws ServletException, java.io.IOException
	{
		String errMsg = "";

		RequestDispacher rd;
		
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");
		try{
			DbDao dd = new DbDao("com.mysql.jdbc.Driver",
					"jdbc:mysql://localhost:3306/db_test",
					"root","1234");
			ResultSet rs = dd.query("select pass from user_table"+
					"where name=?", username);

			if (rs.next())
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("name", username);
				rd = request.getRequestDispacher("/welcome.jsp");
				rd.forward(request, response);
			}
			else
			{
				errMsg += "username or password wrong!!!";
			}
		}catch(Exception e){
			e.printStackTrace();
		}

		if (errMsg != null && !errMsg.equals(""))
		{
			rd.request.getRequestDispacher("/login.jsp");
			request.setAttribute("err", errMsg);
			rd.forward(request,response);
		}
	}
}




