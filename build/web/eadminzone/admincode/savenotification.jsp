<%@page import="mypackage.Dbmanager"%>
<%
    String notificationtext=request.getParameter("notificationtext");
    Dbmanager db1=new Dbmanager();
    String posteddate=db1.getDate();
    String query="insert into notification(notificationtext,posteddate)values('"+notificationtext+"','"+posteddate+"')";
     if(db1.executeNonQuery(query)==true)
     {
     out.print("<script>alert('Notification is saved!!');window.location.href='../enotificationmgmt.jsp';</script>");
     }
     else
     {
     out.print("<script>alert('Notification is not saved!!');window.location.href='../enotificationmgmt.jsp';</script>");
     
     }
    
%>
    