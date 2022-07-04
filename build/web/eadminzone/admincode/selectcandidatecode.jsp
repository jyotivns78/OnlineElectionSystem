<%@page import="mypackage.Dbmanager"%>
<%
    String name=request.getParameter("name");
    String fname=request.getParameter("fname");
    String dob=request.getParameter("dob");
    String occupation=request.getParameter("occupation");
    String qualification=request.getParameter("qualification");
    String nation=request.getParameter("nation");
    String gender=request.getParameter("gender");
    String adhar=request.getParameter("adhar");
    String bio=request.getParameter("bio");
    
int orgid =Integer.parseInt(request.getParameter("orgid"));
Dbmanager db=new Dbmanager();
   String query="insert into selectcandidate(name,fname,dob,qualification,occupation,nation,gender,status,adhar,orgid,count,bio) values('"+name+"','"+fname+"','"+dob+"','"+qualification+"','"+occupation+"','"+nation+"','"+gender+"',1"+",'"+adhar+"',"+orgid+",0"+",'"+bio+"')";
    String query2="update regcandidate set rstatus=1 where adhar='"+adhar+"'";
 String query3="update organise set status=1"; 

     if(db.executeNonQuery(query)==true && db.executeNonQuery(query2)==true && db.executeNonQuery(query3)==true)
     {
     out.print("<script>alert('candidate is saved!!');window.location.href='../selectcandidate.jsp?orgid="+orgid+"';</script>");
     }
     else
     {
       
         out.print("<script>alert('candidate is not saved!!');window.location.href='../selectcandidate.jsp';</script>");
     
     }
    
%>
    