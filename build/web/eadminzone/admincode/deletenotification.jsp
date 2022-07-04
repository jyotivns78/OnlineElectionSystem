<%@page import="mypackage.Dbmanager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    Dbmanager db=new Dbmanager();
    String query="delete from notification where id='"+id+"'";
    if(db.executeNonQuery(query)==true)
    {
     out.print("<script>alert('Notification is deleted');window.location.href='../enotificationmgmt.jsp';</script>");
    }
    else
    {
     out.print("<script>alert('Notification is not deleted');window.location.href='../enotificationmgmt.jsp';</script>");
    
    }
    %>