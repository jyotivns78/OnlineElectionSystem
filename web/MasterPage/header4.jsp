<%-- 
    Document   : header2
    Created on : 1 Apr, 2019, 5:13:15 PM
    Author     : Yogesh
--%>

<%@page import="mypackage.Dbmanager"%>

<div class="col-sm-12 t">
            <div class="col-sm-9"> </div>
         
                    <div class="col-sm-3">

 <a href="logout.jsp">   <button type="button" class="btn btn-primary" style="font-family:arial" > <span class=" fa fa-times-circle"> </span>&nbsp;&nbsp;<b>LOG OUT</b></button></a>
</div>
                      
                 </div>
<div class="col-sm-12 header" style="background:rgb(240,240,240)">
    <div class="row">
    <div class="col-sm-2 logo">
                <img src="../images/vote1.png" style="max-height: 250px;" class="img-responsive"/>
                </div>
    <div class="col-sm-10">
        <div class="row">
                    <nav class="navbar navbar-default" id="menu">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right" >
            
          <li><a class="hvr-trim" href="candiwelcome.jsp" ><span class="glyphicon glyphicon-home"></span> Home</a></li>
          <li><a class="hvr-trim" href="profile.jsp"><span class="fa fa-user"></span> My Profile</a></li>
       <li><a class="hvr-trim" href="complain.jsp"><span class="fa fa-phone-square"></span> Complain</a></li>
         <li><a class="hvr-trim" href="changepass.jsp"><span class="fa fa-gears"></span> Change Password</a></li>
       
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
    
    <div class="col-sm-12 u_info">
        
    <div class="col-sm-5 u_date">
        <%  Dbmanager db=new Dbmanager();
          String date=db.getDate();
        %>
        Current Date=<%=date%>
        
    </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-5 u_name">
            Hello!! <%=session.getAttribute("name")%>
            
        </div>
</div>
     
    
    </div>
                </div>
</div>
