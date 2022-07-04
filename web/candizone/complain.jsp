<%-- 
    Document   : dashboard1
    Created on : 31 Mar, 2019, 9:41:40 PM
    Author     : Yogesh
--%>
<%
if(session.getAttribute("cid")==null)
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
        <title>Complain here</title>
           <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
          <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
          <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover.css" rel="stylesheet" type="text/css"/>
        <link href="../css/general.css" rel="stylesheet" type="text/css"/>
        <link href="../css/userstyle.css" rel="stylesheet" type="text/css"/>
        
        <link href="../css/logincss.css" rel="stylesheet" type="text/css"/>
           
               <style>
 .outer
{
min-height:300px;


background-color:whitesmoke;
}
.left
{
min-height:300px;
min-width: 500px;
}
.right
{
min-height:310px;
min-width: 500px;
background-color:lightgrey;
font-size:20px;
text-align: center;
font-family: Algerian;
}
        </style>
    </head>
    <body>
        <div id="loader"></div>
        <div class="col-sm-12 ">
            <div class="row">
             <%@include file="../MasterPage/header4.jsp" %>
             <div class="col-sm-12 outer">
<div class="col-sm-6 left">
<img src="../images/cccc.jpg" style="height:404px;width:710px;border:5px solid white;"/>
</div>
                 <div class="col-sm-6 right" style="border:10px solid white;">
<form action="candicode/complaincode.jsp" method="post">
<br>
<center>
<br> 
                        <font color="blue" size="20px" family="Algerian"> Complain Here..!</font></center>
                        <br>
                            Enter Subject
                            <textarea name="subject" required class="form-control" placeholder="Enter your Subject"></textarea>
							
                            Enter Complain Text
                            <textarea name="complaintext" required class="form-control"placeholder="Enter your Complain Text"></textarea>
							
                            
                            <input type="submit" value="Log Complain"style="background:#9ec5e4;padding-bottom: 1%; "/>
                        </form>
</div>
                
</div>
     <%@include  file="../MasterPage/footer2.jsp" %>
   </div>
   </div>
    <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
    </body>
</html>
<% } %>