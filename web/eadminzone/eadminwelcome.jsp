
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
        <title>Admin-Home</title>
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
            .dashboard
            {
                min-height: 500px;
            }
              .dash
            {
             min-height:300px;
             border:10px double black;
             box-shadow: 10px 10px 100px black inset;
             margin-top: 3%;
             margin-bottom: 6%;
            text-align:center;
            color:black;
            font-size:35px;
            padding-top: 17%;
            }
            .dash:hover
            {
                background: gray;
             border:10px double black;
             color:white;
             box-shadow: 5px 5px 25px black;
             cursor: pointer;
            }
        </style>
    </head>
    <body>
        <div class="col-sm-12">
            <div class="row">
                <%@include file="../MasterPage/header3.jsp" %>
                <div class="col-sm-12 dashboard">
                    <div class="text-center h1"><b style="font-family:times new roman;">DASHBOARD <span class="fa fa-dashboard"></span></b></div>
                    
   <div class="col-sm-12">
   <div class="col-sm-4">
    <a href="evoterlist.jsp"> <div class="col-sm-12 hvr-grow dash"><span style="font-size: 85px;"
    class="fa fa-th"></span><br>Voter List</div></a>
   </div>
    <div class="col-sm-4">
    <a href="ecandidatelist.jsp"><div class="col-sm-12 hvr-grow dash"><span style="font-size: 85px;" class="fa fa-th-list"></span><br>
       Candidate List</div></a>
     </div>
     <div class="col-sm-4">
    <a href="eorganise.jsp"><div class="col-sm-12 hvr-grow dash"><span style="font-size: 85px;" class="fa fa-check"></span><br>
       Organize Election</div></a>
      </div>
      </div>   
                    
    <div class="col-sm-12">
    <div class="col-sm-4">
    <a href="eresult.jsp"> <div class="col-sm-12 hvr-grow dash"><span style="font-size: 85px;" class="fa fa-signal"></span><br>
       Result</div></a>
     </div>
    <div class="col-sm-4">
    <a href="enotificationmgmt.jsp">  <div class="col-sm-12 hvr-grow dash"><span style="font-size: 85px;" class="fa fa-folder-open"></span><br>
      Notification</div></a>
      </div>
      <div class="col-sm-4">
      <a href="ecomplainmgmt.jsp"><div class="col-sm-12 hvr-grow dash"><span style="font-size: 85px;" class="fa fa-phone-square"></span><br>
     Complain List</div></a>
     </div>
     </div> 
                  
     </div>
     <%@include  file="../MasterPage/footer1.jsp" %>
    </div>
    </div>
    </body>
</html>
<% } %>
