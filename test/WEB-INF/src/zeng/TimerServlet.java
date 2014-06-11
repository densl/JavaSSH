package zeng;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import javax.swing.Timer;
import java.awt.event.*;
import java.util.*;

@WebServlet(loadOnStartup=1)
public class TimerServlet extends HttpServlet
{
	public void init(ServletConfig config) throws ServletException
	{
		super.init(config);
		Timer t = new Timer(1000, new ActionListener(){
			public void actionPerformed(ActionEvent e){
				System.out.println(new Date());
			}
		});
		t.start();
	}
}

	

