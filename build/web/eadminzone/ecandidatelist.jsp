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
        <title>Admin-Candidate List</title>
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
                background-color:buttonhighlight;
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
                    
                   <div style="width:100%;">
                       <table border="3" style="width:100%;border-color: violet;background-color: #e9eff8;">
                        <tr>
                            <td colspan="13" style="color:blue; text-align:center; font-size:60px; font-family: Times in Roman;">
                                
                             <img src="../images/14_checklist_voting_voter_candidate_list_approve_election-512.png" alt="" height="80px" width="100px"/>
                             Candidate List
                            </td><br>
                        <tr>
                            <th>Name</th>
                            <th>DOB</th>
                            <th>F_Name</th>
                            <th>Qualification</th>
                            <th>Occupation</th>
                            <th> Gender</th>
                            <th>Nation</th>
                            <th> Address</th>
                           <th>Pin Code</th> 
                           <th> Mobile</th>
                            <th> Adhar</th>
                            <th> Email</th>
                            
                            <th>Delete</th>
                        </tr>
                        <%
                           Dbmanager db1=new Dbmanager();
                           ResultSet rs=db1.selectQuery("select * from regcandidate");
                           while(rs.next())
                           {
                        %>
                        
                        <tr>
                            <td>
                                <%=rs.getString(1)%>
                            </td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                               <td><%=rs.getString(6)%>
                               <td><%=rs.getString(7)%></td>
                                  <td><%=rs.getString(8)%></td>
                                  <td><%=rs.getString(9)%></td>
                                  <td><%=rs.getString(10)%></td>
                                  <td><%=rs.getString(11)%></td>
                                  <td><%=rs.getString(12)%></td>
                               
                               <td>
                                   <a href="admincode/deletecandidate.jsp?id=<%=rs.getString(12)%>">Delete</a>
                               </td>
                        </tr>
                        
                        
                        <%}%>
                           </table></center>
                        
            </div>
                    <br>  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  
           
        
        </div>
         </form>
    </body>
</html>
  <%}%>