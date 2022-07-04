<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.Dbmanager"%>
<%
int orgid;
  if(session.getAttribute("aid")==null)
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
        <title>Admin-Election System</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover.css" rel="stylesheet" type="text/css"/>
        <link href="../css/general.css" rel="stylesheet" type="text/css"/>
        <link href="../css/logincss.css" rel="stylesheet" type="text/css"/>
         <link href="../css/userstyle.css" rel="stylesheet" type="text/css"/>
       
    </head>
    <body>
        <div class="col-sm-12">
            <div class="row">
                <%@include file="../MasterPage/header3.jsp" %>
                 <div class="col-sm-10 a_container" style="min-height:200px;">
                    
                   <div style="width:100%;overflow-x:scroll;">
                    <table border="1" style="width:100%">
                        <tr>
                            <td colspan="13" style="color:blue; text-align:center; font-size:60px;">
                                Candidate List
                            </td><br>
                        <tr>
                            <th>Name</th>
                            <th>F_Name</th>
                            <th>DOB</th>
                            <th> Gender</th>
                             <th>Nation</th>
                           <th>Qualification</th>
                            <th>Occupation</th>
                            <th>Selection</th>
                        </tr>
                        <%
                           Dbmanager db1=new Dbmanager();
                           ResultSet rs=db1.selectQuery("select * from regcandidate where rstatus=0");
                           while(rs.next())
                           {
                        %>
                        
                        <tr>
                            <td>
                                <%=rs.getString("name")%>
                            </td>
                            <td><%=rs.getString("fname")%></td>
                            <td><%=rs.getString("dob")%></td>
                           <td><%=rs.getString("gender")%></td>
                            <td><%=rs.getString("nation")%></td>
                            <td><%=rs.getString("qualification")%></td>
                               <td><%=rs.getString("occupation")%></td>
                               <td><%=rs.getString("adhar")%></td>
                              <td><%=rs.getString("bio")%></td>
                              
                               <td>
                                   <%if(rs.getInt("rstatus")==0)
                                   {
                                   %>
                              
                                   
 <a href="admincode/selectcandidatecode.jsp?name=<%=rs.getString("name")%>&dob=<%=rs.getString("dob")%>&nation=<%=rs.getString("nation")%>
    &gender=<%=rs.getString("gender")%>&fname=<%=rs.getString("fname")%>&qualification=<%=rs.getString("qualification")%>
    &occupation=<%=rs.getString("occupation")%>&adhar=<%=rs.getString("adhar")%>&bio=<%=rs.getString("bio")%>&orgid=<%= request.getParameter("orgid") %>">Select</a>
    <%
                                   }
                                   
                                   %>
                               </td>
                        </tr>
                        
                        
                        <%}%>
                    </table><br><br>
                    <br>
                        <table border="1" style="width:100%; margin: 0px auto;">
                    <tr>
                        <td colspan="9" style="color:blue; text-align:center; font-size: 30px;">
                            Selected Candidate List
                        </td>
                    </tr>
                    <tr>
                        <th>Name</th>
                            <th>F_Name</th>
                           <th>DOB</th>
                            <th> Gender</th>
                             <th>Nation</th>
                           <th>Qualification</th>
                            <th>Occupation</th>
                            <th>Adhar</th>
                        <th> Delete</th>
                    </tr>
                    <%
                            Dbmanager db2=new Dbmanager();
                            ResultSet rs1=db2.selectQuery("select * from selectcandidate where orgid="+request.getParameter("orgid"));
                            while(rs1.next())
                            {
                       %>  
                       
                       <tr>
                            <td><%=rs1.getString("name")%></td>
                            <td><%=rs1.getString("fname")%></td>
                            <td><%=rs1.getString("dob")%></td>
                            <td><%=rs1.getString("gender")%></td>
                             <td><%=rs1.getString("nation")%></td>
                            <td><%=rs1.getString("qualification")%></td>
                           <td><%=rs1.getString("occupation")%></td>
                           <td><%=rs1.getString("adhar")%></td>
                            
                            
                            
                           <td>
                               <a href="admincode/removeselect.jsp?adhar=<%=rs1.getString("adhar")%>&orgid=<%= request.getParameter("orgid") %>">Delete</a>
                           </td>
                       </tr>
      
      <%}%>
                </table>
                <a href="eorganise.jsp"> <button>Done</button></a>           </div>

        </div>
         </form>
         
    </body>
</html>
  <%}%>