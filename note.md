

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
 
 #To get specal character
  String rawQueryStr=request.getQueryString();
  String str=java.net.URLDecoder.decode(rawQueryStr, "gbk");
 #Another way to deal with special character
  String rawName=request.getParameter("name");
  byte[] rawBytes=rawName.getBytes("ISO-8859-1");
  String str=new String(rawBytes, "gb2312");


