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
        <title>Declare Result</title>
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
       
       
    </head>
    <body>
      
        
        <div class="col-sm-12">
            <div class="row">
                <%@include file="../MasterPage/header3.jsp" %>
                <br><br><br>
                <div class="col-sm-1"></div>
                <div class="col-sm-10 a_container" style="min-height:200px; ">
                    
                    
                   <table border="1" style="width:100%; margin: 0px auto; margin-top:60px; background: lightgrey;">
                    <tr>
                        <td colspan="10" style="color:blue; text-align:center; font-size: 30px;">
                        Election Result 
                        </td>
                    </tr>
                    <tr>
                        <th>Election id</th>
                        <th>Election Title</th>
                        <th> Posted Date</th>
                    <th> Winner Candidate Name</th>
                    <th> Winner Candidate DOB</th>
                    <th> Winner Candidate Gender</th>
                    <th> Winner Candidate Adhar Number</th>
                    <th> Winner Candidate Nation</th>
                    <th>Number of Vote</th>   
                    <th>DECLARE Result</th>   
                    
                    </tr>
                    <%
                            Dbmanager db1=new Dbmanager();
                            ResultSet rs2=db1.selectQuery("select * from organise where id=(select max(id) from organise)");
                            while(rs2.next())
                            {
                 %>  
                       
                       <tr>
                           <td><%=rs2.getInt("id")%></td>
                           <td><%=rs2.getString("title")%></td>
                           <td><%=rs2.getString("posteddate")%></td>
                    <%
                            Dbmanager db2=new Dbmanager();
                            ResultSet rs1=db2.selectQuery("select * from selectcandidate where orgid=(select max(orgid) from selectcandidate) and count=(select max(count) from selectcandidate)  ");
                            while(rs1.next())
                            {
                 %>  
                       <td><%=rs1.getString("name")%></td>
                           <td><%=rs1.getString("dob")%></td>
                           <td><%=rs1.getString("gender")%></td>
                         <td><%=rs1.getString("adhar")%></td>
                         <td><%=rs1.getString("nation")%></td>
                         <td><%=rs1.getString("count")%></td>
                        <td>
                                   <%if(rs2.getInt("dstatus")==0)
                                   {
                                   %>
                              
                                   
 <a href="admincode/resultcode.jsp?name=<%=rs1.getString("name")%>&dob=<%=rs1.getString("dob")%>&nation=<%=rs1.getString("nation")%>
    &gender=<%=rs1.getString("gender")%>&adhar=<%=rs1.getString("adhar")%>&count=<%=rs1.getString("count")%>
    &id=<%=rs2.getInt("id")%>&title=<%=rs2.getString("title")%>&posteddate=<%=rs2.getString("posteddate")%>">Declare</a>
    <%
                                   }
                                   
                                   %>
                               </td>
      
                         
                         
                         
      <%}%> <%}%> 
                </table>

                    
              
         </div>
    <div class="col-sm-1"></div>
                
  </div>
    </div>
    
    </body>
</html>
  <%}%>