<%@page import="mypackage.Dbmanager"%>
<html>
    <head>
        <style>
            #voteloader
            { 
                position:fixed;
                width: 100%;
                height:100%;
                background: #fff url("../../images/voteloader.gif")
                    no-repeat center;
                z-index:99999;
                
        </style>
   <script type="text/javascript">
               setTimeout(function(){ document.getElementById('voteloader').style.display="none";
                window.location.href='../letsvote.jsp'},3000);
                </script>
    </head>
    <body>
        <div id="voteloader"></div>
     
    </body>
</html>
<%
int vstatus =Integer.parseInt(request.getParameter("vstatus"));
int count =Integer.parseInt(request.getParameter("count"));
String adhar =request.getParameter("adhar");
String adhaar =request.getParameter("adhaar");


Dbmanager db=new Dbmanager();
String query2="update registration set vstatus=1 where adhaar='"+adhaar+"'";
 String query3="update selectcandidate set count=count+1 where adhar='"+adhar+"'"; 

     if(db.executeNonQuery(query2)==true && db.executeNonQuery(query3)==true)
     {
     out.print("<script>alert('Thanks For Vote!!');</script>");
     }
     else
     {
       
         out.print("<script>alert('vote is not saved!!');window.location.href='../letsvote.jsp';</script>");
     
     }
    
%>
    