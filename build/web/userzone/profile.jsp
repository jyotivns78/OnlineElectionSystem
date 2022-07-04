<%-- 
    Document   : profile
    Created on : 31 Mar, 2019, 9:48:51 PM
    Author     : Yogesh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.Dbmanager"%>
<%
  if(session.getAttribute("userid")==null)
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
        <title>MY PROFILE</title>
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
          .box{
              height:40px;
              color:blue;
          }
          #value{
              height:30px;
              width:250px;
              border:1px solid black;
              background:lightgrey;
              padding:5px auto;
              display:inline-block;
              margin-bottom: 27px;
          }
      </style>
    </head>
   
    <body> 
        <div id="loader"></div>
        <%@include file="../MasterPage/header2.jsp" %>
      
        <div class="col-sm-12">
            <div class="col-sm-1"></div>
            <div class="col-sm-10" style="background:#f4f4f4;margin-top:1%;margin-bottom:1%; ">
                <center><span style="font-size:58px;color:blue;" class="fa fa-user"></span>&nbsp; <span style="color:black;font-size:58px;font-family:Comic Sans MS;padding-top: 30px; ">MY <b style="color:blue">Profile</b></span> </center>
                <hr>
                <div class="col-sm-12">
                   
                    <div class="col-sm-4" style="padding-top: 8%;">
                <img src="../images/user.jpg" class="img-responsive" height="300px" width="300px" />
                        
                     </div>
                    <div class="col-sm-8">
                        <div class="col-sm-12" style="margin-bottom: 3%;">
                        <div class="col-sm-6" style="font-family: times new roman;font-size: 20px;">
                              <%
                                String id=(String)session.getAttribute("userid");
                              //  out.print(id);
                            Dbmanager db2=new Dbmanager();
                            ResultSet rs2=db2.selectQuery("select * from registration where email='"+id+"'");
                            while(rs2.next())
                            {
                       %>  
                       
                       Name :<br><br>
                       Gender : <br><br>
                             Father's Name:<br><br>
                              Higher Qualification:<br><br>
                            
                             Nationality :<br><br>
                             Address :<br><br>
                               DOB :<br><br>
                              Contact Number:<br><br>
                            Email :<br><br>
                              Occupation :<br><br>
                             Pincode :<br><br>
                             Biography:<br><br>
                         </div>
                        <div class="col-sm-6" style="font-family: times new roman;font-size: 20px;">
                               <span id="value"><%=rs2.getString("name")%></span><br>
                            <span id="value"><%=rs2.getString("gender")%></span><br> 
                             <span id="value"><%=rs2.getString("fname")%></span><br> 
                             <span id="value"><%=rs2.getString("qualification")%></span><br> 
                             <span id="value"><%=rs2.getString("nation")%></span><br> 
                             <span id="value"><%=rs2.getString("address")%></span><br> 
                             <span id="value"><%=rs2.getString("dob")%></span><br> 
                             <span id="value"><%=rs2.getString("mobile")%></span><br> 
                             <span id="value"><%=rs2.getString("email")%></span><br> 
                             <span id="value"><%=rs2.getString("occupation")%></span><br> 
                             <span id="value"><%=rs2.getString("pincode")%></span><br> 
                             <span id="value"><%=rs2.getString("bio")%></span><br> 
                            
                            <a href="userhome.jsp"> <button style="background:#ff5a60;border:none;color:white;font-family: times new roman;">Back To Home</button></a>
                            </div>
                        </div>
                    </div>
                 
                </div> 
            </div>
                            
                            
            <div class="col-sm-1"></div>
           
        </div>
              <%}%>
      <%@include file="../MasterPage/footer2.jsp" %>
 <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
    </body>
</html>

<%}%>