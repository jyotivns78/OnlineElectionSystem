<%@page import="mypackage.Dbmanager"%>
<%
    String name=session.getAttribute("name").toString();
    String subject=request.getParameter("subject");
    String complaintext=request.getParameter("complaintext");
    Dbmanager db=new Dbmanager();
    String complaindate=db.getDate();
    String query="insert into complain(name,subject,complaintext,complaindate) values('"+name+"','"+subject+"','"+complaintext+"','"+complaindate+"')";
    boolean res=db.executeNonQuery(query);
    if(res==true)
    {
        out.print("<script>alert('Complain is logged');window.location.href='../complain.jsp';</script>");
        
    }
    else
    {
       out.print("<script>alert('Complain is not logged');window.location.href='../complain.jsp';</script>"); 
    }
   
    %>