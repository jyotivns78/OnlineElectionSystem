<%-- 
    Document   : index
    Created on : 1 Feb, 2019, 10:33:09 AM
    Author     : Yogesh
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.Dbmanager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Election System</title>
       <%@include file="MasterPage/link.jsp" %>
       <style>
 
       </style>
    </head>
   
    <body>
        <div id="loader"></div>
         <div class="col-sm-12 outer">
           <div class="row">
               <%@include file="MasterPage/header1.jsp" %>
              
                    <div class="col-sm-12 slider" style="min-height: 120px;">
           <div class="row">
                   <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
   <li data-target="#carousel-example-generic" data-slide-to="4"></li>

  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/E-Voting.jpg" alt="...">
      <div class="carousel-caption">
      <h1 style="font-family:times new roman;text-shadow: 5px 5px 5px black;">ONLINE ELECTION SYSTEM-100% SECURE VOTING</h1>    
      </div>
    </div>
    <div class="item">
      <img src="images/E-Voting3.png" alt="...">
      <div class="carousel-caption">
         <h1 style="font-family:times new roman;text-shadow: 5px 5px 5px black;">VOTE- ANY TIME, ANY WHERE</h1>
      </div>
    </div>
       <div class="item">
           <img src="images/Capture5.PNG" alt="...">
      <div class="carousel-caption">
          <h1 style="font-family:times new roman;text-shadow: 5px 5px 5px black;"></h1>
      </div>
    </div>
       <div class="item">
      <img src="images/E-Voting2.jpg" alt="...">
      <div class="carousel-caption">
    <h1 style="font-family:times new roman;text-shadow: 5px 5px 5px black;"></h1>

      </div>
    </div>
    
      
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

                   </div>
           </div>
           <div class="col-sm-12 gallery">
           <div class="row">
               <div class="col-sm-3 Notification"   style= "background-color: #e7e6e7;">
                   
                   <center><span style="color:#769ebd;font-size:35px;font-family:rockwell;">NOTIFICATIONS</span><br></center>
                  
                   <marquee direction="up" height="300px" onmouseover="stop()" onmouseout="start()" >
                  
                 <%
                    Dbmanager db1=new Dbmanager();
                    ResultSet rs1=db1.selectQuery("select * from notification");
                    while (rs1.next())
                    {
                %>
                <img src="images/new.gif " style="height: 50px;width:75px"/>
  <p style="margin-left:40px; font-size:25px;font-family: rockwell"><%=rs1.getString(2)%></p>
   <p style="margin-left:40px; font-size:17px;font-family: rockwell"><%=rs1.getString(3)%></p>
                        <hr/>
               
                        <%}%>
                    </marquee>
               </div>
          <div class="col-sm-7 gallery1"><br>
            
 <div class="text-center"><span style="font-size:35px; font-family:rockwell;color:#769ebd;">
                                    DESCRIPTION</span></div>
<span>Online Election System would have candidate registration,document verification, auto-generated User ID
and password for candidate and voters. Admin Login which will be handled by Election Commission
,candidate Login which will be handled by candidate, Voters can vote for a candidate only once per Election.The project is benificial for Election
commission,voters as they can get to know the candidate background and choose wisely,and even
for candidate, the software system allows the candidate to login in to their profiles and add all their
previous milestone onto the system.The Admin can check each candidate details and verify the documents,
and can remove faulty accounts.<br>
The software system allows voters to view a list of candidates in their area. The admin has overall rights over the 
system and can moderate and delete a details not pertaining to election rules. 
</span></center>
</div>
<div class="col-sm-2 gallery2">
<img src="images/ballot.gif" style="height:320px;width:200px;border:15px solid white"/>
<a href="viewresult.jsp">   <button type="button" class="btn btn-primary" style="font-family:arial" > <span class=" fa fa-signal"> </span>&nbsp;&nbsp;<b>ELECTION &nbsp;RESULT</b></button></a>

</div>
    </div>  </div> 
                    
      <div class="col-sm-12  us" style="background: #e2e8eb;">
<div class="col-sm-1"></div>
<div class="col-sm-10">
    <div class="col-sm-3 ram"><a href="electregistration.jsp"> 
        <center> <span class="fa fa-users" style="font-size:150px;margin-top:20%;"></span></center>  
        <div class="col-sm-12">
           
            <center><span style="font-size:25px;color:#769ebd;padding-left:7%; "><b>User<br>Sign Up</b></span>  </a>
                        </center>
        </div>
    </div>
    <div class="col-sm-3 ram">
        <center><a href="candireg.jsp"> <span class="fa fa-user" style="font-size:150px;margin-top:13%;"></span></center>  
        <div class="col-sm-12">
           <center>  <span style="font-size:25px;color:#769ebd;padding-left:8%; "><b>Candidate</b></span><br>
               <span style="font-size:25px;color:#769ebd;"><b>Sign Up</b></span></a></center>
    </div>
   
</div>
<div class="col-sm-1"></div>

</div>

      </div>              
        
                    <div  class="col-sm-12 upper" style="background:#e2e8eb;">
                        
                    </div> 
                    <div class="col-sm-12 team">
    <section class="slideshow">
    <center><b><span style="color:#769ebd;font-family: rockwell;font-size:50px;" >OUR<span  style="color:#769ebd;"> TEAM</span></span></b></center>
<div class="content">
<div class="content-carrousel">
<figure class="shadow"><img src="images/kirti1.jpg"></figure>
<figure class="shadow"><img src="images/rinky.jpg"></figure>
<figure class="shadow"><img src="images/rupali.jpg"></figure>
<figure class="shadow"><img src="images/ranju.jpg"></figure>
<figure class="shadow"><img src="images/sur2.jpg"></figure>
</div>
</div>
</section>     
                    </div>
                   
       <%@include file="MasterPage/footer1.jsp" %>   
                    
                    
     </div></div>
       <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
    </body>
</html>
