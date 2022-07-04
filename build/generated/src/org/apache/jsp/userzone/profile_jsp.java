package org.apache.jsp.userzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import mypackage.Dbmanager;
import mypackage.Dbmanager;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/userzone/../MasterPage/header2.jsp");
    _jspx_dependants.add("/userzone/../MasterPage/footer2.jsp");
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
      out.write("\n");

  if(session.getAttribute("userid")==null)
  {
  response.sendRedirect("../index.jsp");
  }
  else
  {

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>MY PROFILE</title>\n");
      out.write("                 <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("          <link href=\"../css/bootstrap-theme.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("          <script src=\"../js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"../css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/hover-min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/hover.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/general.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/logincss.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/userstyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("     \n");
      out.write("        <style>\n");
      out.write("          .box{\n");
      out.write("              height:40px;\n");
      out.write("              color:blue;\n");
      out.write("          }\n");
      out.write("          #value{\n");
      out.write("              height:30px;\n");
      out.write("              width:250px;\n");
      out.write("              border:1px solid black;\n");
      out.write("              background:lightgrey;\n");
      out.write("              padding:5px auto;\n");
      out.write("              display:inline-block;\n");
      out.write("              margin-bottom: 27px;\n");
      out.write("          }\n");
      out.write("      </style>\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("    <body> \n");
      out.write("        <div id=\"loader\"></div>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"col-sm-12 t\">\n");
      out.write("            <div class=\"col-sm-9\"> </div>\n");
      out.write("         \n");
      out.write("                    <div class=\"col-sm-3\">\n");
      out.write("\n");
      out.write(" <a href=\"logout.jsp\">   <button type=\"button\" class=\"btn btn-primary\" style=\"font-family:arial\" > <span class=\" fa fa-times-circle\"> </span>&nbsp;&nbsp;<b>LOG OUT</b></button></a>\n");
      out.write("</div>\n");
      out.write("                      \n");
      out.write("                 </div>\n");
      out.write("<div class=\"col-sm-12 header\" style=\"background:rgb(240,240,240)\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-2 logo\">\n");
      out.write("                <img src=\"../images/vote1.png\" style=\"max-height: 250px;\" class=\"img-responsive\"/>\n");
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
      out.write("            \n");
      out.write("          <li><a class=\"hvr-trim\" href=\"userhome.jsp\" ><span class=\"glyphicon glyphicon-home\"></span> Home</a></li>\n");
      out.write("          <li><a class=\"hvr-trim\" href=\"profile.jsp\"><span class=\"fa fa-user\"></span> My Profile</a></li>\n");
      out.write("         <li><a class=\"hvr-trim\" href=\"letsvote.jsp\"><span class=\"fa fa-tint\"></span> Lets Vote</a></li>\n");
      out.write("         <li><a class=\"hvr-trim\" href=\"complain.jsp\"><span class=\"fa fa-phone-square\"></span> Complain</a></li>\n");
      out.write("         <li><a class=\"hvr-trim\" href=\"changepass.jsp\"><span class=\"fa fa-gears\"></span> Change Password</a></li>\n");
      out.write("       \n");
      out.write("        </ul>\n");
      out.write("    </div><!-- /.navbar-collapse -->\n");
      out.write("  </div><!-- /.container-fluid -->\n");
      out.write("</nav>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    <div class=\"col-sm-12 u_info\">\n");
      out.write("        \n");
      out.write("    <div class=\"col-sm-5 u_date\">\n");
      out.write("        ");
  Dbmanager db=new Dbmanager();
          String date=db.getDate();
        
      out.write("\n");
      out.write("        Current Date=");
      out.print(date);
      out.write("\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("        <div class=\"col-sm-1\"></div>\n");
      out.write("        <div class=\"col-sm-5 u_name\">\n");
      out.write("            Hello!! ");
      out.print(session.getAttribute("name"));
      out.write("\n");
      out.write("        </div>      \n");
      out.write("        \n");
      out.write("</div>\n");
      out.write("     \n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("                </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("      \n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("            <div class=\"col-sm-1\"></div>\n");
      out.write("            <div class=\"col-sm-10\" style=\"background:#f4f4f4;margin-top:1%;margin-bottom:1%; \">\n");
      out.write("                <center><span style=\"font-size:58px;color:blue;\" class=\"fa fa-user\"></span>&nbsp; <span style=\"color:black;font-size:58px;font-family:Comic Sans MS;padding-top: 30px; \">MY <b style=\"color:blue\">Profile</b></span> </center>\n");
      out.write("                <hr>\n");
      out.write("                <div class=\"col-sm-12\">\n");
      out.write("                   \n");
      out.write("                    <div class=\"col-sm-4\" style=\"padding-top: 8%;\">\n");
      out.write("                <img src=\"../images/user.jpg\" class=\"img-responsive\" height=\"300px\" width=\"300px\" />\n");
      out.write("                        \n");
      out.write("                     </div>\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <div class=\"col-sm-12\" style=\"margin-bottom: 3%;\">\n");
      out.write("                        <div class=\"col-sm-6\" style=\"font-family: times new roman;font-size: 20px;\">\n");
      out.write("                              ");

                                String id=(String)session.getAttribute("userid");
                              //  out.print(id);
                            Dbmanager db2=new Dbmanager();
                            ResultSet rs2=db2.selectQuery("select * from registration where email='"+id+"'");
                            while(rs2.next())
                            {
                       
      out.write("  \n");
      out.write("                       \n");
      out.write("                       Name :<br><br>\n");
      out.write("                       Gender : <br><br>\n");
      out.write("                             Father's Name:<br><br>\n");
      out.write("                              Higher Qualification:<br><br>\n");
      out.write("                            \n");
      out.write("                             Nationality :<br><br>\n");
      out.write("                             Address :<br><br>\n");
      out.write("                               DOB :<br><br>\n");
      out.write("                              Contact Number:<br><br>\n");
      out.write("                            Email :<br><br>\n");
      out.write("                              Occupation :<br><br>\n");
      out.write("                             Pincode :<br><br>\n");
      out.write("                             Biography:<br><br>\n");
      out.write("                         </div>\n");
      out.write("                        <div class=\"col-sm-6\" style=\"font-family: times new roman;font-size: 20px;\">\n");
      out.write("                               <span id=\"value\">");
      out.print(rs2.getString("name"));
      out.write("</span><br>\n");
      out.write("                            <span id=\"value\">");
      out.print(rs2.getString("gender"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("fname"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("qualification"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("nation"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("address"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("dob"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("mobile"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("email"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("occupation"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("pincode"));
      out.write("</span><br> \n");
      out.write("                             <span id=\"value\">");
      out.print(rs2.getString("bio"));
      out.write("</span><br> \n");
      out.write("                            \n");
      out.write("                            <a href=\"userhome.jsp\"> <button style=\"background:#ff5a60;border:none;color:white;font-family: times new roman;\">Back To Home</button></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                 \n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("            <div class=\"col-sm-1\"></div>\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("              ");
}
      out.write("\n");
      out.write("      ");
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
      out.write("                                       <li> <a href=\"../aboutus.jsp\">About us</a></li>\n");
      out.write("                                       <li><a  href=\"../gallery.jsp\"> Gallery</a></li>\n");
      out.write("                                      <li> <a href=\"../Privacy.jsp\">Privacy Policies</a></li>\n");
      out.write("                                       <li><a  href=\"../disclaimer.jsp\"> Disclaimer</a></li>\n");
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
      out.write("                         </div>\n");
      out.write("                      \n");
      out.write(" <div class=\"col-sm-12 bfooter\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("                             <div class=\"col-sm-6 text-center\"></div>\n");
      out.write("                           \n");
      out.write("                             <div class=\"col-sm-6 text-center\"> <span>Developed And Design by:<a href=\"../ourteam.jsp\"> OUR TEAM.</a></span></div>\n");
      out.write("          </div>\n");
      out.write("                         </div>\n");
      out.write("\n");
      out.write(" <script type=\"text/javascript\">\n");
      out.write("               setTimeout(function(){ document.getElementById('loader').style.display=\"none\";\n");
      out.write("                },1500);\n");
      out.write("                </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
}
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
