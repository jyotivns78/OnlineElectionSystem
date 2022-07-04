<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.Dbmanager"%>
<%
String userid= request.getParameter("userid");
String password=request.getParameter("password");
String query="select usertype from log where userid='"+userid+"'and password='"+password+"'";
Dbmanager db=new Dbmanager();
ResultSet rs=db.selectQuery(query);
if(rs.next()==true)
{
    String usertype=rs.getString(1);
    if(usertype.equals("user"))
    {
        query="select name from registration where email='"+userid+"'";
        rs=db.selectQuery(query);
        rs.next();
        String name=rs.getString(1);
        session.setAttribute("name",name);
        session.setAttribute("userid",userid);
        response.sendRedirect("../userzone/userhome.jsp");
    }
    else if(usertype.equals("admin"))
    {
        query="select name from registration where email='"+userid+"'";
        rs=db.selectQuery(query);
        rs.next();
        String name=rs.getString(1);
        session.setAttribute("name",name);
       session.setAttribute("aid", userid);
       response.sendRedirect("../eadminzone/eadminwelcome.jsp");
    }
    else if(usertype.equals("candi"))
    {
        query="select name from regcandidate where email='"+userid+"'";
        rs=db.selectQuery(query);
        rs.next();
        String name=rs.getString(1);
        session.setAttribute("name",name);
       session.setAttribute("cid", userid);
       response.sendRedirect("../candizone/candiwelcome.jsp");
    }
         else
{
out.print("<script>alert('Invalid admin');window.location.href='../index.jsp;</script>");
}
}
     else
{
out.print("<script>alert('Invalid user');window.location.href='../index.jsp';</script>");
}
%>