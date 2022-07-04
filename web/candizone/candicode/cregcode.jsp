<%@page import="mypackage.Dbmanager"%>
<% 
    String capcode=request.getParameter("capcode");
    String captchacode=request.getParameter("captchacode");
    if(capcode.equals(captchacode))
    {
    String password=request.getParameter("password");
    String confirmpassword=request.getParameter("confirmpassword");
       if(password.equals(confirmpassword))
       {
         String name=request.getParameter("name");
         String dob=request.getParameter("dob"); 
         String fname=request.getParameter("fname");
         String qualification=request.getParameter("qualification");
         String occupation=request.getParameter("occupation");
         String gender=request.getParameter("gender");
         String nation=request.getParameter("nation");
         String address=request.getParameter("address");
         String pincode=request.getParameter("pincode");
         String bio=request.getParameter("bio");
         String mobile=request.getParameter("mobile");
         String email=request.getParameter("email");
         String adhar=request.getParameter("adhar");
         String query1="insert into regcandidate(name,dob,fname,qualification,occupation,gender,nation,address,pincode,bio,mobile,email,adhar,rstatus) values('"+name+"','"+dob+"','"+fname+"','"+qualification+"','"+occupation+"','"+gender+"','"+nation+"','"+address+"','"+pincode+"','"+bio+"','"+mobile+"','"+email+"','"+adhar+"',0)";
         String query2="insert into log values('"+email+"','"+password+"','candi')";
         Dbmanager db=new Dbmanager();
         if(db.executeNonQuery(query1)==true)
         {    
             if(db.executeNonQuery(query2)==true)
             {
                 
                 out.print("<script>alert('registration is  successful!!  please log in to continue...');window.location.href='../../index.jsp';</script>");
             } 
         }
         else
         {
             out.print(query1);
             
         //out.print("<script>alert('regstration is not successful!!');window.location.href='../registration.jsp';</script>");
       
         }
       }
       else
       {
       out.print("<script>alert('password not matched');window.location.href='../candireg.jsp';</script>");
       }
    }
    else
    {
    out.print("<script>alert('Invalid Captcha code');window.location.href='../candireg.jsp';</script>");
    }
%>