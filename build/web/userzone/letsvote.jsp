<%-- 
    Document   : dashboard1
    Created on : 31 Mar, 2019, 9:41:40 PM
    Author     : Yogesh
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.Dbmanager"%>
<%
  if(session.getAttribute("userid")==null)
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
        <title>VOTE HERE</title>
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
             min-height: 400px;
             background:#e9e8e2;
               margin-top:3%;
               border:2px solid white;
               padding-top: 2%;
           }
           .chanright{
               min-height:280px;
             background:#e9e8e2;
              margin-left:1%;
              margin-top:3%;
               border:2px solid white;
               font-size: 15px;
           }
           
        </style>
    </head>
    <body>
        <div id="loader"></div>
<div class="col-sm-12">
            <div class="row">
                <%@include file="../MasterPage/header2.jsp" %>
                
                  <div class="col-sm-12 us">
                      <div class="col-sm-12"><br><center><b style="font-size: 35px;color:red;font-family:times new roman;">
                                  <b style="color:black">LETS</b><b>&nbsp;&nbsp;VOTE</b> <span style="color:black" class="fa fa-cog"></span></b></center>
                     
                     </div> 
                      
                    <div class="col-sm-3 chanleft">
                        
                        <center>
                            <img src="../images/voteman.gif" style="height:500px; width:400px;">
                        </center>
                            
                    </div>
                    <div class="col-sm-8 chanright">
                   
                   
                      <br>
                           <table style="margin:20px auto;">
                        
                             <%
                            Dbmanager db1=new Dbmanager();
                            ResultSet rs=db1.selectQuery("select * from organise where id=(select max(id) from organise)");
                            while(rs.next())
                            {
                       %>  
                       
                       <tr>
                           <td style="font-size:50px;color:red;"><%=rs.getString("title")%></td>
                         
                       </tr>
                       <tr>
                           <td style="color:black;; font-size:30px;">
                               Posted Date : &nbsp; &nbsp;&nbsp;
                           </td>
                           <td style="color:black; font-size:30px;">
                               <%=rs.getString("posteddate")%>
                           </td>
                       </tr>
                       
      
                         <%}%>
                        
                    </table>
                    
                    <table border="2" style="width:50%; margin: 0px auto; color:black;">
                    <tr>
                        <td colspan="8" style="color:blue; text-align:center; font-size: 30px;">
                          Candidate List
                        </td>
                    </tr>
                    <tr style="font-size:15px">
                        <th>&nbsp;&nbsp;Name&nbsp;&nbsp;</th>
                        <th>&nbsp;&nbsp;Nation&nbsp;&nbsp;</th>
                        <th>&nbsp;&nbsp;Qualification&nbsp;&nbsp;</th>
                        <th>&nbsp;&nbsp;Occupation&nbsp;&nbsp;</th>
                        <th>&nbsp;&nbsp;Gender&nbsp;&nbsp;</th>
                        <th>&nbsp;&nbsp;Election <br> &nbsp;&nbsp;Promise&nbsp;&nbsp;</th>
                        <th>&nbsp;&nbsp;Adhaar&nbsp;&nbsp;</th>
                        
                        <th>Tap to Vote
                               <img src="../images/press.gif" height="80px" width="100px">
                           
                           </th>
                             </tr>
                             <tr>
                    <%
                            Dbmanager db3=new Dbmanager();
                            ResultSet rs1=db3.selectQuery("select * from selectcandidate where orgid=(select max(orgid) from selectcandidate)");
                            while(rs1.next())
                            {
                       %>  
                       
                      
                            <td><%=rs1.getString("name")%></td>
                             <td><%=rs1.getString("nation")%></td>
                             <td><%=rs1.getString("qualification")%></td>
                            <td><%=rs1.getString("Occupation")%></td>
                            <td><%=rs1.getString("Gender")%></td>
                            <td><%=rs1.getString("bio")%></td>
                            <td><%=rs1.getString("adhar")%></td>
                            
                            <td>
                                <%
                                String id=(String)session.getAttribute("userid");
                                //out.print(id);
                            Dbmanager db2=new Dbmanager();
                            ResultSet rs2=db2.selectQuery("select * from registration where email='"+id+"'");
                            while(rs2.next())
                            {
                       %>  
                    
                                
                                  <%if(rs2.getInt("vstatus")==0)
                                   {
                                   %>
                              
                                   <a href="usecode/votecode.jsp?vstatus=<%=rs2.getInt("vstatus")%>&adhar=<%=rs1.getString("adhar")%>
                                      &adhaar=<%=rs2.getString("adhaar")%>&count=<%=rs1.getInt("count")%>"><button>VOTE</button></a>   
                                <%}%>
                                
                                
                            </td>                    
                            
                       </tr>
           
      
      <%}%>
      <%}%>
      
     </table> 
                </div>
                  <div class="col-sm-1"></div>   
               
            </div>            
        </form>   
                </div>
                
                </div>
     
                    
          
            <%@include file="../MasterPage/footer2.jsp" %>   
                    
                    
          
            <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
    </body>
</html>

<%}%>