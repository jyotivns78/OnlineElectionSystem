<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.Dbmanager"%>
<%
  if(session.getAttribute("aid")==null)
  {
  response.sendRedirect("../index.jsp");
  }
  else
  {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin-Complain Management</title>
           <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
          <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
          <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover.css" rel="stylesheet" type="text/css"/>
        <link href="../css/general.css" rel="stylesheet" type="text/css"/>
        <link href="../css/logincss.css" rel="stylesheet" type="text/css"/>
         <link href="../css/userstyle.css" rel="stylesheet" type="text/css"/>
       
        <style>
            .a_container
            {
                 background-color:#d4d4d4;
                height:500px;
                width:100%;
                
            }
        </style>
    </head>
    <body>
         <form>
        
        
        <div class="col-sm-12">
            <div class="row">
                <%@include file="../MasterPage/header3.jsp" %>
                <div class="col-sm-10 a_container" style="min-height:200px;">
                    <br><br>
             <table border="4" style="width:100%;background-color: #ede1e1;border-color:blueviolet;">
                    <tr>
                        <td colspan="6" style="text-align:center; font-size: 30px; color: blue; font-family: Cooper Black;">
                            <img src="../images/comp.jpg" alt="" height="100px" width="100px" style="border-radius: 50%"/>
                            Complain Management
                        </td>
                    </tr>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>   
                        <th>Subject</th>
                        <th>Complain</th>
                        <th>Posted Date</th>
                        <th>Delete</th>
                    </tr>
  <%
      Dbmanager db1=new Dbmanager();
      ResultSet rs=db1.selectQuery("select * from complain");
      while(rs.next())
      {
  %>
  <tr>
      <td><%=rs.getInt(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td>
          <a href="admincode/deletecomplain.jsp?id=<%=rs.getInt(1)%>">Delete</a>
      </td>
  </tr>
<%
  }
%>
                </table>
            </div>
       
        </div>
        </form>
           </body>
</html>
<% } %>