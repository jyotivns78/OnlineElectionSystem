
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
                <%@include file="MasterPage/header1.jsp" %>
                
                  <div class="col-sm-12 us">
                      <div class="col-sm-12"><br><center><b style="font-size: 35px;color:red;font-family:times new roman;">
                                  <b style="color:black">ELECTION</b><b>&nbsp;&nbsp;RESULT</b> <span style="color:black" class="fa fa-cog"></span></b></center>
                     
                     </div> 
                      
                    <div class="col-sm-4 chanleft">
                        
                        <center>
                            <img src="images/electionresults2.gif">
                        </center>
                            
                    </div>
                    <div class="col-sm-7 chanright">
                   
                   
                      <br>
                         <table border="1" style="width:50%; margin: 0px auto;">
                   
                    <tr>
                        <th>Election id</th>
                        <th>Election Title</th>
                        <th> Posted Date</th>
                    <th> Winner Candidate Name</th>
                    <th> Winner Candidate DOB</th>
                    <th> Winner Candidate Gender</th>
                    <th> Winner Candidate Adhar Number</th>
                    <th> Winner Candidate Nation</th>
                    <th>Number of Vote</th>   
                      
                    
                    </tr>
                    <%
                            Dbmanager db1=new Dbmanager();
                            ResultSet rs2=db1.selectQuery("select * from result where id=(select max(id) from result)");
                            while(rs2.next())
                            {
                 %>  
                       
                       <tr>
                           <td><%=rs2.getInt("id")%></td>
                           <td><%=rs2.getString("title")%></td>
                           <td><%=rs2.getString("posteddate")%></td>
                       <td><%=rs2.getString("name")%></td>
                           <td><%=rs2.getString("dob")%></td>
                           <td><%=rs2.getString("gender")%></td>
                         <td><%=rs2.getString("adhar")%></td>
                         <td><%=rs2.getString("nation")%></td>
                         <td><%=rs2.getString("count")%></td>
                       </tr>
      
                         
                         
                         
      <%}%> 
                </table>
                </div>
                  <div class="col-sm-1"></div>   
               
            </div>            
        </form>   
                </div>
                
                </div>
     
                    
          
            <%@include file="MasterPage/footer1.jsp" %>   
                    
                    
          
            <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
    </body>
</html>
