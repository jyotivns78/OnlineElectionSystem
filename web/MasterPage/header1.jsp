<%-- 
    Document   : header1
    Created on : 1 Feb, 2019, 10:51:10 AM
    Author     : Yogesh
--%>

<div class="col-sm-12 t">
            <div class="col-sm-9"> </div>
         
            <div class="col-sm-3">
             
            <button onclick="document.getElementById('id01').style.display='block'"  class="btn btn-primary" style="font-family:arial"><span class=" fa fa-key"></span>&nbsp;&nbsp;<b>LOG IN</b></button>

<div id="id01" class=" modal">
  
    <form class="modal-content animate" action="generalcode/logcode.jsp">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/user.png" alt="Avatar" class="avatar">
    </div>
      <br>
    <div class="container">
        <label for="uname" style="color:black;margin-left:20px;font-size:35px; float: left;"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="userid" required class="u1">
      <br>
      <label for="psw" style="color:black; margin-left:20px;font-size:35px;float:left;"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required class="p1">
      <br><center>
          <button type="submit" class="logbutton" style="color:white;float:left;  background-color:#122b40;">LOGIN</button></center>
    </div>
</form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
};
</script>
 <a href="electregistration.jsp">   <button type="button" class="btn btn-primary" style="font-family:arial" > <span class=" fa fa-user-plus"> </span>&nbsp;&nbsp;<b>SIGN UP</b></button></a>
</div>
                      
                 </div>
<div class="col-sm-12 header" style="background:rgb(240,240,240)">
    <div class="row">
    <div class="col-sm-2 logo">
                <img src="images/vote1.png" style="max-height: 250px;" class="img-responsive"/>
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
          <li><a class="hvr-trim" href="index.jsp" style="color:white;"><span class="glyphicon glyphicon-home"></span> Home</a></li>
         <li><a class="hvr-trim" href="aboutus.jsp" style="color:white;"><span class="fa fa-user" ></span> About Us</a></li>
         <li><a class="hvr-trim" href="contactus.jsp" style="color:white;"><span class="fa fa-gift"></span> Features</a></li>
         <li><a class="hvr-trim" href="gallery.jsp" style="color:white;"><span class="fa fa-camera-retro"></span> Gallery</a></li>
                </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
        <span style="font-family: algerian;font-size: 35px;text-shadow: 2px 2px 3px black;padding-left: 17%">
                     voting is the first duty of democracy
        </span>
    </div>
                </div>
</div>


