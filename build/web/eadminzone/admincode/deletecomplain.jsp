<%@page import="mypackage.Dbmanager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    Dbmanager db=new Dbmanager();
    String query="delete from complain where id='"+id+"'";
    if(db.executeNonQuery(query)==true)
    {
     out.print("<script>alert('Complain is deleted');window.location.href='../ecomplainmgmt.jsp';</script>");
    }
    else
    {
     out.print("<script>alert('Complain is not deleted');window.location.href='../ecomplainmgmt.jsp';</script>");
    
    }
    %>