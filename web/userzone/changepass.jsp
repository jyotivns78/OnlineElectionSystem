
<%
if(session.getAttribute("userid")==null)
{
   response.sendRedirect("../index.jsp");
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
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
              .us
              {
                  min-height:500px; 
               background:#cccccc;
               margin-top:2%;
               margin-bottom:1.5%;
              }
              
           .chanleft
           {
             min-height: 310px;
             background:#e9e8e2;
               margin-top:3%;
               border:2px solid white;
               padding-top: 2%;
           }
           .chanright{
               min-height:280px;
             background:#e9e8e2;
              margin-left:6%;
              margin-top:3%;
               border:2px solid white;
               font-size: 18px;
           }
           
        </style>
    </head>
    <body>
        <div id="loader"></div>
        <form action="usecode/changepasscode.jsp" method="post">
        <div class="col-sm-12">
            <div class="row">
                <%@include file="../MasterPage/header2.jsp" %>
                
                  <div class="col-sm-12 us">
                      <div class="col-sm-12"><br><center><b style="font-size: 35px;color:red;font-family:times new roman;"><b style="color:black">CHANGE</b><b> PASSWORD</b> <span style="color:black" class="fa fa-cog"></span></b></center>
                     
                     </div> 
                      
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5 chanleft">
                        
                        <center>
                       <span style="font-size:125px;" class="fa fa-edit"></span><br>
                                <span style="font-size:22px;"> it's a good idea to use  a strong password. <br>
                                    It is very important for keeping your private information protected. </span></center>
                            
                    </div>
                    <div class="col-sm-5 chanright">
                   
                   
                      <br>
                        <span style="padding-bottom:3%;"><b>Enter Old Password:</b>
                            
                                <input type="password" name="oldpassword" required=""/>
                           </span>
                       
                               <b> New Password:</b>
                            
                                <input type="password" name="newpassword" required=""/>
                            
                                <b>Confirm Password:</b>
                                 <input type="password" name="confirmpassword" required=""/><br>
                                <b><input type="submit" value="Change Password"class="form-control" style="color:white;font-size: 15px; background:#119fd9;"/>
                            
                                </b>
                   
                </div>
                  <div class="col-sm-1"></div>   
               
            </div>            
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
