<%@page import="mypackage.Dbmanager"%>
<%
    String name=request.getParameter("name");
    String dob=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String nation=request.getParameter("nation");
    String adhar=request.getParameter("adhar");
    String count=request.getParameter("count");
    int id = Integer.parseInt(request.getParameter("id"));
    String title=request.getParameter("title");
    String posteddate=request.getParameter("posteddate");
    Dbmanager db=new Dbmanager();
   String query="insert into result(id,title,posteddate,name,dob,gender,nation,adhar,count) values("+id+",'"+title+"','"+posteddate+"','"+name+"','"+dob+"','"+gender+"','"+nation+"','"+adhar+"','"+count+"')";
   String query3="update organise set dstatus=1"; 

     if(db.executeNonQuery(query)==true) 
     {
        if( db.executeNonQuery(query3)==true)
        {
     out.print("<script>alert('Result Declared!!');window.location.href='../eresult.jsp';</script>");
     }
     }
     else
     {
       out.print("<script>alert('Result is not Declared!!');window.location.href='../eresult.jsp';</script>");
     
     }
    
%>
    