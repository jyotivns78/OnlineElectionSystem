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
        <title>Admin-Organise</title>
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
                background-color:cornsilk;
                height:500px;
                width:100%;
            }
        </style>
    </head>
    <body>
        <form action="admincode/organisecode.jsp" method="post">
        
        
        <div class="col-sm-12">
            <div class="row">
                <%@include file="../MasterPage/header3.jsp" %>
                <div class="col-sm-10 a_container" style="min-height:200px;">
                    <br><br>
                    
                    
                    <table border="3" style="width:50%; margin: 0px auto; background-color: whitesmoke;">
                    <tr>
                        <td colspan="8" style="color:blue; text-align:center; font-size: 30px;font-family:Elephant;">
                            <img src="../images/download.png" alt="" height="100px" width="100px" style="border-radius:30%;"/>
                           Organize Election
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Enter Election Title</td>
                        <td><textarea name="title" required=""></textarea></td>
                    </tr>
                    
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Save Election title"></td>
                    </tr>
                </table>
                    <br>    
         
                
  
    
         </form>
                    <table border="2"  style="width:50%; margin: 0px auto;background-color: #f2f9fc;">
                        <tr><td>Election  Title</td>
                            <td>Posted Date</td>
                            <td>Status</td></tr>
                         <%
                            Dbmanager db2=new Dbmanager();
                            ResultSet rs2=db2.selectQuery("select * from organise");
                            while(rs2.next())
                            {
                       %>  
                       
                       <tr>
                            <td><%=rs2.getString("title")%></td>
                            <td><%=rs2.getString("posteddate")%></td>
                                               
                           <td>
                                   <%if(rs2.getInt("status")==1)
                           {
                               %>
                            Completed
                               <%
                           }
                               else{%>
                          Not Completed..
                               <%}
                           %>
                        
                    
                           </td></tr>
                       <tr><td>
                               <%if(rs2.getInt("status")==0)
                           {
                               %>
                           <a href="selectcandidate.jsp?orgid=<%=rs2.getInt("id")%>"  >  click to select candidate</a>
                         
                          <%}
                           %>
                           </td>
                       </tr>
                    
                    <%}%>
                    
                        
                        </table>
                    </div>
                    </div>
    </body>
</html>
  <%}%>