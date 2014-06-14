package zeng;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;

@WebFilter(filterName="log", urlPatterns={"/*"})
public class LogFilter implements Filter
{
	private FilterConfig config;
	
	public void init(FilterConfig config){
		this.config=config;
	}

	public void destroy(){
		this.config = null;
	}

	public void doFilter(ServletRequest request,
			ServletResponse response, FilterChain chain)
		throws IOException, ServletException
	{
		ServletContext context = this.config.getServletContext();
		long before = System.currentTimeMillis();
		System.out.println("start filter");

		HttpServletRequest hrequest=(HttpServletRequest)request;

		System.out.println("user addr "+hrequest.getServletPath());

		chain.doFilter(request, response);

		long after = System.currentTimeMillis();

		System.out.println("filter end");

		System.out.println("locate to "+hrequest.getRequestURI()+
				"  spend time " +(after-before));
	}
}
