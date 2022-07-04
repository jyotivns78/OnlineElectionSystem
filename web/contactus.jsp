

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Features</title>
        <%@include file="MasterPage/link.jsp" %>
        <style>
            .contact{
                min-height: 500px;
                
            }
            .side
            {
                min-height: 500px;
                color:white;
                background-image:url('images/');
             border:13px double black;
            margin-top: 2%;
             font-size:20px;
             font-family:Comic Sans MS;
             background-size: 100% 100%;
                margin-bottom:4%;
            }
         .sidest
         {
              padding-top:80%;
             min-height: 500px;
             background: rgba(0,0,0,.1);
         }
        </style>
    </head>
    <body>
        <div id="loader"></div>
        <div class="col-lg-12">
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
                <div class="col-sm-12 contact">
                   <div class="row">
                     
                     <img src="images/4.PNG" class="img-responsive"/>
                     <img src="images/5.PNG" class="img-responsive"/>
                     <img src="images/6.PNG" class="img-responsive"/>
                     <img src="images/7.PNG" class="img-responsive"/>
                     <img src="images/8.PNG" class="img-responsive"/>
                     <img src="images/9.PNG" class="img-responsive"/>
                       </div>
                </div>
                </div>
                <%@include file="MasterPage/footer1.jsp" %> 
            </div>
        </div>
 <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
</body>
</html>
