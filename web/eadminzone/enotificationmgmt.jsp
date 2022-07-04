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
        <title>Admin-Notification</title>
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
            
            } 
        </style>
    </head>
    <body>
         <form action="admincode/savenotification.jsp" method="post">
        
        
        <div class="col-sm-12">
            <div class="row">
                <%@include file="../MasterPage/header3.jsp" %>
                <div class="col-sm-10 a_container1" style="min-height:200px;background-color:#d1def0;width:100%;">
                    <br><br><br>
                    <table border="3" style="width:50%; margin: 0px auto;font-family:Copperplate Gothic Bold; background-color: #ededed;border-color:brown;">
                    <tr>
                        <td colspan="2" style="color:blue; text-align:center; font-size: 30px;">
                            <img src="../images/notification.jpg" alt="" height="100px" width="100px" style="border-radius:30%;"/>
                            Notification Management
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Notification</td>
                        <td><textarea name="notificationtext" required=""></textarea></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Save Notification"></td>
                    </tr>
                </table>
                <br><br>
                <table border="2" style="width:50%; margin: 0px auto;font-family:Copperplate Gothic Bold; background-color: #ededed;border-color: brown;">
                    <tr>
                        <td colspan="4" style="color:blue; text-align:center; font-size: 30px;">
                            <img src="../images/images (1).jpg" alt="" height="100px" width="100px" style="border-radius:80%;"/>
                            Notification Deletion
                        </td>
                    </tr>
                    <tr>
                        <th>Notification</th>
                        <th> Posted Date</th>
                        <th> Delete</th>
                    </tr>
                    <%
                            Dbmanager db1=new Dbmanager();
                            ResultSet rs=db1.selectQuery("select * from notification");
                            while(rs.next())
                            {
                       %>  
                       
                       <tr>
                           <td><%=rs.getInt(1)%></td>
                           <td><%=rs.getString(2)%></td>
                           <td><%=rs.getString(3)%></td>
                           <td>
                               <a href="admincode/deletenotification.jsp?id=<%=rs.getInt(1)%>">Delete</a>
                           </td>
                       </tr>
      
      <%}%>
                </table>
         </div>
    
  </div>
    </div>
         </form>
    </body>
</html>
  <%}%>