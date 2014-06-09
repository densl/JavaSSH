

For a jsp page:
 Tomcat will generate files '.java .class' in directory
  'work\Catalina\localhost\YourAppName\org\apache\jsp\'
 Those are special java class: Servlet.

 useBean, care about the package. The *.class file should be stored in
    \classes\"package"\*.class


Jsp
request:  Object of  HttpServletRequest.
 #for parameter
 String  getParameter(String paramName)
 Map  getParameterMap()
 Enumeration  getParameterNames()
 String[]  getParameterValues(String name)
 #for visit header
 String  getHeader(String name)
 java.util.Enumeration<String>  getHeaderNames()
 java.util.Enumeration<String>  getHeaders(String name)
 int  getIntHeader(String name)
 

