

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
          <%@include file="MasterPage/link.jsp" %>
   
      <style>
           .first
            {
                min-height:25px;
                background:#efefef;
                
            }
            .about
            {
                min-height:500px;
                background:#efefef;
                  padding-bottom: 20px;
                  text-align: center;
            }
            .questions
            {
                color:blue;
                font-size:29px;
                line-height: 50px;
                padding-bottom: 20px;
            }
              .size
            {
              
                font-size:18px;
               
            }
            </style>
    </head>
    <body>
        <div id="loader"></div>
        <div class="col-sm-12">
            <div class="row">
                  <%@include  file="MasterPage/header1.jsp" %>
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
         <h1 style="font-family:times new roman;text-shadow: 5px 5px 5px black;">VOTE-ANY TIME, ANY WHERE</h1>
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
                               <div class="col-sm-12 first"></div>
                  <div class="col-sm-12 about">
                      <div class="col-sm-12"><span style="color:black;font-size:44px;font-family:algerian;padding-top: 30px; ">ABOUT</sapn> <b style="color:red">US</b></div>
                      <div class="col-sm-12 first"></div>
                      <div class="col-sm-1"></div>
                      <div class="col-sm-10 size"  style="text-align:justify">
           <span class="questions">
             Online Election System
             </span>
         <div style="text-align:justify">
             <span style="font-size:18px"><b>1.</b></span> Online Election System would have candidate registration,document varification, auto-generated User ID
and password for candidate and voters.<br>
<span style="font-size:18px"><b>2.</b></span> Admin Login which will be handled by Election Commission.
<br>
<span style="font-size:18px"><b>3.</b></span> candidate Login which will be handled by candidate,voters will get Unqiue ID and password,Using
which they can vote for a candidate only once  per Election.<br>
<span style="font-size:18px"><b>4.</b></span> The project is benificial for Election
commission,voters as the can get to know the candidate background and choose wisely,and even
for candidate.<br>
<span style="font-size:18px"><b>5.</b></span> The software system allows the candidate to login in to their profiles and upload all their
previous milestone onto the system.<br>
<span style="font-size:18px"><b>6.</b></span> The admin can check each candidate details and verify the documents,
only after verifying candidate's ID and password will be generated,and can remove faulty accounts.<br>
<span style="font-size:18px"><b>7.</b></span> The software system allows voters to view a list of candidates in their area.
<br>
<span style="font-size:18px"<b>8.</b></span> The admin has overall rights over the system and can moderate and delete an details not pertaining to Election Rules.
<br>
         </div><br>
         <img src="images/election6.jpg" class="img-responsive"/><br>
             <span class="questions">
             Who Can Use It?
             </span>
         <div style="text-align:justify">
             Any apex body or organization who has details of their members validated
and does elections to elect members for running their association can
utilize this state of the art e-lection process.<br>
         </div>
         <span class="questions">
             Online Election Process
             </span>
         <div style="text-align:justify">
             <span style="font-size:18px"><b>1.</b></span> The election process is a mixture of online application. First and
foremost are the mandatory/ vital details of all the voters in terms of their
registration number/ email address/ company name along with details of the
Authorized Signatory/ ies.<br>
<span style="font-size:18px"><b>2.</b></span> The link to the vote/ ballot will be sacrosanct for each company, it is SQL
encrypted code for the Name of the Company | Unique Reference No. |
Election Reference Code.<br>
<span style="font-size:18px"><b>3.</b></span> Once the vote is casted, the casted ballot which will have the Digital Signature
embedded will be sent again as conformation to the Voter and
 acknowledgement without the Ballot Casted will come to the admin ID of
ORGANIZATION/ CLIENT for records.<br>
<span style="font-size:18px"><b>4.</b></span> The link will become non functional in case of a vote is exercised or after the
 date with pertinent message.<br>
              </div>

                         
                          
         
         
         <div class="col-sm-1"></div>
                      </div>
                  </div>
                     <%@include  file="MasterPage/footer1.jsp" %>
            </div>
        </div>
             <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
    </body>
</html>
