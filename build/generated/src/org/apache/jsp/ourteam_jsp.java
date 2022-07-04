package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ourteam_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>OUR TEAM</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"jquary/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("$(\".imgS\").mouseenter(function(){\n");
      out.write("var url=$(this).attr(\"src\");\n");
      out.write("$(\"#imgMain\").attr(\"src\",url);\n");
      out.write("\n");
      out.write("})\n");
      out.write("$(\".imgS\").mouseleave(function(){\n");
      out.write("$(\"#imgMain\").attr(\"src\",\"images/team.jpg\");\n");
      out.write("$(this).css(\"border\",\"5px double black\");\n");
      out.write("$(this).css(\"border\",\"5px solid black\")\n");
      out.write("})\n");
      out.write("})\n");
      out.write("</script>\n");
      out.write("<style>\n");
      out.write("#imgMain\n");
      out.write("{\n");
      out.write("height:380px;\n");
      out.write("width:440px;\n");
      out.write("border:10px double black;\n");
      out.write("box-shadow:10px 10px 50px black;\n");
      out.write("padding:10px;\n");
      out.write("}\n");
      out.write(".imgS\n");
      out.write("{\n");
      out.write("height:220px;\n");
      out.write("width:200px;\n");
      out.write("padding:5px;\n");
      out.write("border:5px double black;\n");
      out.write("margin:10px;\n");
      out.write("box-shadow:5px 5px 10px black;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("<span><img src=\"images/team.jpg\" id=\"imgMain\"/><span><br/>\n");
      out.write("<img src=\"images/anika.jpg\" class=\"imgS\"/>\n");
      out.write("<img src=\"images/ranj.jpg\" class=\"imgS\"/>\n");
      out.write("<img src=\"images/sur.jpg\" class=\"imgS\"/>\n");
      out.write("<img src=\"images/kri.jpg\"class=\"imgS\"/>\n");
      out.write("<img src=\"images/rup.jpg\" class=\"imgS\"/>\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
