<%@page import="mypackage.Dbmanager"%>
<%
    String adhar=request.getParameter("adhar");
    Dbmanager db=new Dbmanager();
    String query="delete from selectcandidate where adhar='"+adhar+"'";
    String query2="update regcandidate set rstatus=0 where adhar='"+adhar+"'";
    int orgid =Integer.parseInt(request.getParameter("orgid"));
    if(db.executeNonQuery(query)==true && db.executeNonQuery(query2)==true)
    {
     out.print("<script>alert('Candidate is deleted');window.location.href='../selectcandidate.jsp?orgid="+orgid+"';</script>");
    }
    else
    {
     out.print("<script>alert('Candidate is not deleted');window.location.href='../selectcandidate.jsp';</script>");
    
    }
    %>