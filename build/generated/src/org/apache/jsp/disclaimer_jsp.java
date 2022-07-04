package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class disclaimer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/MasterPage/link.jsp");
    _jspx_dependants.add("/MasterPage/header1.jsp");
    _jspx_dependants.add("/MasterPage/footer1.jsp");
  }

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
      out.write("<html> \n");
      out.write("    <html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Disclaimer</title>\n");
      out.write("         ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("      \n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("          <link href=\"css/bootstrap-theme.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("          <script src=\"js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/hover-min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/hover.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/general.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/logincss.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        ");
      out.write("\n");
      out.write("         <style>\n");
      out.write("                 .privacy\n");
      out.write("            {\n");
      out.write("                min-height:500px;\n");
      out.write("                background:#efefef;\n");
      out.write("                  padding-bottom: 20px;\n");
      out.write("                 \n");
      out.write("                   padding-top: 2%;\n");
      out.write("                   line-height:16%;\n");
      out.write("            }\n");
      out.write("            .disc{\n");
      out.write("                line-height: 20px;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("         </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"loader\"></div>\n");
      out.write("        <div class=\"col-lg-12\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("           ");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"col-sm-12 t\">\n");
      out.write("            <div class=\"col-sm-9\"> </div>\n");
      out.write("         \n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("             \n");
      out.write("            <button onclick=\"document.getElementById('id01').style.display='block'\"  class=\"btn btn-primary\" style=\"font-family:arial\"><span class=\" fa fa-key\"></span>&nbsp;&nbsp;<b>LOG IN</b></button>\n");
      out.write("\n");
      out.write("<div id=\"id01\" class=\" modal\">\n");
      out.write("  \n");
      out.write("    <form class=\"modal-content animate\" action=\"generalcode/logcode.jsp\">\n");
      out.write("    <div class=\"imgcontainer\">\n");
      out.write("      <span onclick=\"document.getElementById('id01').style.display='none'\" class=\"close\" title=\"Close Modal\">&times;</span>\n");
      out.write("      <img src=\"images/user.png\" alt=\"Avatar\" class=\"avatar\">\n");
      out.write("    </div>\n");
      out.write("      <br>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <label for=\"uname\" style=\"color:black;margin-left:20px;font-size:35px; float: left;\"><b>Username</b></label>\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Username\" name=\"userid\" required class=\"u1\">\n");
      out.write("      <br>\n");
      out.write("      <label for=\"psw\" style=\"color:black; margin-left:20px;font-size:35px;float:left;\"><b>Password</b></label>\n");
      out.write("      <input type=\"password\" placeholder=\"Enter Password\" name=\"password\" required class=\"p1\">\n");
      out.write("      <br><center>\n");
      out.write("          <button type=\"submit\" class=\"logbutton\" style=\"color:white;float:left;  background-color:#122b40;\">LOGIN</button></center>\n");
      out.write("    </div>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("// Get the modal\n");
      out.write("var modal = document.getElementById('id01');\n");
      out.write("\n");
      out.write("// When the user clicks anywhere outside of the modal, close it\n");
      out.write("window.onclick = function(event) {\n");
      out.write("    if (event.target === modal) {\n");
      out.write("        modal.style.display = \"none\";\n");
      out.write("    }\n");
      out.write("};\n");
      out.write("</script>\n");
      out.write(" <a href=\"electregistration.jsp\">   <button type=\"button\" class=\"btn btn-primary\" style=\"font-family:arial\" > <span class=\" fa fa-user-plus\"> </span>&nbsp;&nbsp;<b>SIGN UP</b></button></a>\n");
      out.write("</div>\n");
      out.write("                      \n");
      out.write("                 </div>\n");
      out.write("<div class=\"col-sm-12 header\" style=\"background:rgb(240,240,240)\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-2 logo\">\n");
      out.write("                <img src=\"images/vote1.png\" style=\"max-height: 250px;\" class=\"img-responsive\"/>\n");
      out.write("                </div>\n");
      out.write("    <div class=\"col-sm-10\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("                    <nav class=\"navbar navbar-default\" id=\"menu\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("      </button>\n");
      out.write("    </div>\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("        <ul class=\"nav navbar-nav navbar-right\" >\n");
      out.write("          <li><a class=\"hvr-trim\" href=\"index.jsp\" style=\"color:white;\"><span class=\"glyphicon glyphicon-home\"></span> Home</a></li>\n");
      out.write("         <li><a class=\"hvr-trim\" href=\"aboutus.jsp\" style=\"color:white;\"><span class=\"fa fa-user\" ></span> About Us</a></li>\n");
      out.write("         <li><a class=\"hvr-trim\" href=\"contactus.jsp\" style=\"color:white;\"><span class=\"fa fa-gift\"></span> Features</a></li>\n");
      out.write("         <li><a class=\"hvr-trim\" href=\"gallery.jsp\" style=\"color:white;\"><span class=\"fa fa-camera-retro\"></span> Gallery</a></li>\n");
      out.write("                </ul>\n");
      out.write("    </div><!-- /.navbar-collapse -->\n");
      out.write("  </div><!-- /.container-fluid -->\n");
      out.write("</nav>\n");
      out.write("</div>\n");
      out.write("        <span style=\"font-family: algerian;font-size: 35px;text-shadow: 2px 2px 3px black;padding-left: 17%\">\n");
      out.write("                     voting is the first duty of democracy\n");
      out.write("        </span>\n");
      out.write("    </div>\n");
      out.write("                </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("           <div class=\"col-sm-12 privacy\">\n");
      out.write("               <div class=\"col-sm-1\"></div>\n");
      out.write("               <div class=\"col-sm-10\">\n");
      out.write(" \n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                    <img src=\"images/disc.PNG\" class=\"img-responsive\"/>\n");
      out.write("                    <div class=\"disc\" style=\"text-align:justify;padding-top:3%;\">\n");
      out.write("                    \n");
      out.write("1.&nbsp; Every effort has been made by the website administrator to provide accurate, up-to-date information.<br><br>\n");
      out.write("2.&nbsp; The information contained on www.OnlineElectionSystem.com website the \"Service\" is for Online Election Purpose only.<br><br>\n");
      out.write("3.&nbsp; online election system assumes no responsibility for errors or omissions in the contents on the Service.<br><br>\n");
      out.write("4.&nbsp; In no event shall online election system be liable for any special, direct, indirect, consequential, or incidental damages or any damages whatsoever.<br><br>\n");
      out.write("5.&nbsp; whether in an action of contract, negligence or other tort, arising out of or in connection with the use of the Service or the contents of the Service. <br><br>\n");
      out.write("6.&nbsp; online election system reserves the right to make additions, deletions, or modification to the contents on the Service at any time without prior notice.<br><br>\n");
      out.write("7.&nbsp; This Website for online election system has been created with the help of My Team Support.<br><br>\n");
      out.write("8.&nbsp;online election system does not warrant that the website is free of viruses or other harmful components.<br><br>\n");
      out.write("9.&nbsp;online election system reserves the right to make additions, deletions, or modification to the \n");
      out.write("contents on the Service at any time without prior notice.<br><br>\n");
      out.write("10.&nbsp; The Election System does not control, monitor or guarantee the information contained in the sites or information.<br><br>\n");
      out.write("11.&nbsp;contained in links to other external web sites, and does not endorse any views expressed or products or services offered therein.<br><br>\n");
      out.write("12.&nbsp; In no event shall the Online Election System be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods,or services available on or through any such site or resource.\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write(" </div>       \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-sm-1\"></div>\n");
      out.write("           </div>\n");
      out.write("             ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<style>\n");
      out.write("     .form-control\n");
      out.write("            {\n");
      out.write("                min-height: 28px;\n");
      out.write("                margin-bottom: 2%;\n");
      out.write("                padding-left: 4%;\n");
      out.write("            }\n");
      out.write("</style>\n");
      out.write(" <div class=\"col-sm-12 ufooter\">\n");
      out.write("                           <div class=\"col-sm-4 u\">\n");
      out.write("                               <div class=\"col-sm-12 uf\">\n");
      out.write("                                   <ul style=\"font-size: 25px;\"><u></u>\n");
      out.write("                                       <li> <a href=\"aboutus.jsp\">About us</a></li>\n");
      out.write("                                       <li><a  href=\"gallery.jsp\"> Gallery</a></li>\n");
      out.write("                                      <li> <a href=\"Privacy.jsp\">Privacy Policies</a></li>\n");
      out.write("                                       <li><a  href=\"disclaimer.jsp\"> Disclaimer</a></li>\n");
      out.write("                                   </ul>\n");
      out.write("                                   \n");
      out.write("                               </div>\n");
      out.write("                         </div>\n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("       <div class=\"col-sm-4 u\">\n");
      out.write("                 <div class=\"col-sm-12 uf\" >\n");
      out.write("                     <p style=\"margin-left:25%;color:white;font-size: 30px;padding-top: 8%;\"><u>Follows us</u></p>\n");
      out.write("                   <p>             \n");
      out.write("                    <a href=\"http://www.facebook.com\" target=\"_blank\"><span class=\"fa fa-facebook abc \"></span></a>\n");
      out.write("                    <a href=\"http://www.twitter.com\" target=\"_blank\"><span class=\"fa fa-twitter abc\"></span></a>\n");
      out.write("                    <a href=\"http://www.youtube.com\" target=\"_blank\"><span class=\"fa fa-youtube abc\"></span></a>\n");
      out.write("                    <a href=\"http://www.google.co.in\" target=\"_blank\"><span class=\"fa fa-google abc\"></span></a>\n");
      out.write("                            </p>      \n");
      out.write("                               </div>\n");
      out.write("                         </div>\n");
      out.write("       <div class=\"col-sm-4 u\">\n");
      out.write("                 <div class=\"col-sm-12\" style=\"border-right:none;\">\n");
      out.write("                     <h2 class=\"modal-title text-center\" style=\"padding-top: 4%;padding-left: 4%;color:white\"><b><u>QUICK ENQUIRY</u></b></h2>\n");
      out.write("                     <br><form action=\"generalcode/enqcode.jsp\" method=\"post\">\n");
      out.write("              <input required type=\"text\" class=\"form-control\" name=\"name\"  placeholder=\"Enter Your Name\"/>\n");
      out.write("              <input required type=\"number\" class=\"form-control\" name=\"contactno\" placeholder=\"Enter Your Contact Number\"/>\n");
      out.write("               <input required type=\"email\" class=\"form-control\" name=\"emailaddress\" placeholder=\"Enter your Email\"/>\n");
      out.write("               <textarea required name=\"message\" class=\"form-control\" rows=\"1\" placeholder=\"Enter Your Message\"></textarea>\n");
      out.write("              <input type=\"submit\" value=\"SAVE\" style=\"background:#ff5a60; color:white\" class=\"form-control\"/>\n");
      out.write("          </form>  \n");
      out.write("                             </div>\n");
      out.write("                         </div>\n");
      out.write("     \n");
      out.write("                         </div>\n");
      out.write("                      \n");
      out.write(" <div class=\"col-sm-12 bfooter\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("                             <div class=\"col-sm-6 text-center\"></div>\n");
      out.write("                           \n");
      out.write("                             <div class=\"col-sm-6 text-center\"> <span>Developed And Design by:<a href=\"ourteam.jsp\"> OUR TEAM.</a></span></div>\n");
      out.write("          </div>\n");
      out.write("                         </div>");
      out.write("\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("               setTimeout(function(){ document.getElementById('loader').style.display=\"none\";\n");
      out.write("                },1500);\n");
      out.write("                </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
