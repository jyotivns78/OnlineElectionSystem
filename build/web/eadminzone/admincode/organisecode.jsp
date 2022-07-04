<%@page import="mypackage.Dbmanager"%>
<%
    String title=request.getParameter("title");
    Dbmanager db=new Dbmanager();
    String posteddate=db.getDate();
   String query="insert into organise(title,posteddate,status,dstatus) values('"+title+"','"+posteddate+"',0"+",0)";

 
     if(db.executeNonQuery(query)==true)
     {
     out.print("<script>alert('election  is saved!!');window.location.href='../eorganise.jsp';</script>");
     }
     else
     {
       out.print(query);
        // out.print("<script>alert('election is not saved!!');window.location.href='../eorganise.jsp';</script>");
     
     }
    
%>
    