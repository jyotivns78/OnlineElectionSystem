
<%@page import="mypackage.CaptchaGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <%@include file="MasterPage/link.jsp" %>
        <style>
             .first{
                min-height: 24px;
             
             }
          .reg{
             
              background: rgb(0, 0, 0); /* Fallback color */
              background: rgba(0, 0, 0, 0.5);
                min-height: 500px;
              font-size: 20px;
                margin-bottom:3%;
                padding:3%;
                color: whitesmoke;
                 margin-top:3%;
                 border-radius:20px 20px 20px 20px;
              
               
            }  
           .tt
           {
               background-image:url('images/Capture.PNG');
               background-attachment: fixed;
               background-size: 100% 100%;
               
               
           }  
            .box{
                height: 42px;
            }
      .regis
      {
          background-image: url('images/logo4.jpg');
        
      }
        </style>
    </head>
    <body>
        <div id="loader"></div>
        <div class="col-sm-12 ">
            <div class="row">
            <%@include file="MasterPage/header1.jsp" %>
            
            <div class="col-sm-12 first"></div>
            <div class="regis text-center"><img src="images/reg2.gif" height=100px ><span class="fa fa-users" style="height:110px"></span></div><br>
            <div class="col-sm-12 tt"> 
            
               <div class="col-sm-6  reg ">
                    <form action="generalcode/registrationcode.jsp" method="post">
                      Name <input required type="text" name="name" class="form-control box" placeholder="Enter your name"/>
                      DOB <input  required type="date" name="dob" class="form-control box" />
                                Gender<br> <input required type="radio" value="MALE" name="gender"/>Male
                     <input required type="radio" value="FEMALE" name="gender"/>Female<br>  
                     <BR>
                      Father's Name  <input required type="text" name="fname" class="form-control box" placeholder="Enter your father's name"/>
                        Highest Qualification<select  required name="qualification" class="form-control box">
                            <option>..</option>
                            <option>Does not matter</option>
                            <option>Post Graduate</option>
                            <option>Graduate</option>
                            <option>P.H.D.</option>
                            <option>Diploma</option>
                          <option>High School</option>
                      </select>
                                                  Occupation <input  required type="text" name="occupation" class="form-control box" placeholder="Enter your  Occupation"/>
                 
                     Nationality<select  required name="nation" class="form-control box">
                            <option>..</option>
                          <option>Indian</option>
                          <option>American</option>
                          <option>Australians</option>
                          <option>British</option>
                          <option>Russian</option>
                          <option>Other</option>
                      </select>
                         Address<textarea required  class="form-control box" name="address" placeholder="Enter your address"></textarea>
                        Pincode<input required type="number" name="pincode" class="form-control box" placeholder="Enter your pincode"/>  
                       
                     
               </div>   
                  
              
                            <div class="col-sm-6 reg ">
                                   Write your Bio
                  <textarea required  class="form-control box" placeholder="Enter your bio" name="bio"></textarea>
                
               
                      Contact No. <input  required type="number" name="mobile" class="form-control box" placeholder="Enter your mobile number"/>
                      Email <input required type="email" name="email" class="form-control box" placeholder="Enter your email"/>
                       Adhaar Number <input  required type="number" name="adhaar" class="form-control box" placeholder="Enter your Adhaar number"/>
                    
                      Password<input  required type="password" name="password" class="form-control box" placeholder="Enter your password"/>
                      Confirm Password<input  required type="password" name="confirmpassword" class="form-control box" placeholder="Enter your Conform Password"/>
                     
                    Captcha Generator
                    
                          <%
                           CaptchaGenerator cg=new CaptchaGenerator();
                           String capcode=cg.getCode();
                         
                          %> 
                          <h2><%=capcode%></h2>
                          
                          <input type="hidden" name="capcode"  value="<%=capcode%>" class="form-control box"/>
         
                    
               
                         Enter Captcha code<input  required type="text" name="captchacode" class="form-control box" placeholder="Enter Captcha Code"/><br>
                       <input type="submit" value="REGISTER NOW" style="background:#f44444;font-size:18px;color:white;" class="form-control box"/>
                    </form>
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

