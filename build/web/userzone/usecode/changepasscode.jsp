<%@page import="mypackage.Dbmanager"%>
<%
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String confirmpassword=request.getParameter("confirmpassword");
    String userid=session.getAttribute("userid").toString();
    if(newpassword.equals(confirmpassword))
    {
     String query="update log set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
     Dbmanager db=new Dbmanager();
     boolean res=db.executeNonQuery(query);
     if(res=true)
     {
      out.print("<script>alert('Password change!!!');window.location.href='../changepass.jsp';</script>");
     }
     else
     {
      out.print("<script>alert('Password not change!!!');window.location.href='../changepass.jsp';</script>");
     }
    }
    else
    {
    out.print("<script>alert('New Password and Confirm Password are not matched');window.location.href='../changepass.jsp';</script>");
    }
    %>