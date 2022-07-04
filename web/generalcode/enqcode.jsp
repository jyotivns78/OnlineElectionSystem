<%@page import="mypackage.Dbmanager"%>
<%
  String name=request.getParameter("name");
  String contactno=request.getParameter("contactno");
  String emailaddress=request.getParameter("emailaddress");
  String message=request.getParameter("message");
  Dbmanager db=new Dbmanager();
  String enquirydate=db.getDate();
  String query="insert into enquiry(name,contactno,emailaddress,message,enquirydate) values('"+name+"','"+contactno+"','"+emailaddress+"','"+message+"','"+enquirydate+"')";
  boolean res =db.executeNonQuery(query);
  if(res==true)
  {
  out.print("<script>alert('your enquiry is saved');window.location.href='../index.jsp';</script>");
  }
  else
  {
  
      out.print("<script>alert('your enquiry is not saved');window.location.href='../index.jsp';</script>");

  }
  
  %>