<%@page import="mypackage.Dbmanager"%>
<%
   String id=request.getParameter("id");
   Dbmanager db=new Dbmanager();
   String query1="delete from regcandidate where email='"+id+"'";
   String query2="delete from log where userid='"+id+"'";
   if(db.executeNonQuery(query1)&& db.executeNonQuery(query2))
   {
   out.print("<script> alert('User Id Deleted');window.location.href='../ecandidatelist.jsp';</script>");
   }
   else
   {
     out.print("<script>alert('User is not Deleted');window.location.href='../ecandidatelist.jsp';</script>");
   }
%>