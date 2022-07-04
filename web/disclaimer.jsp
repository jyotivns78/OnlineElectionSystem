
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disclaimer</title>
         <%@include file="MasterPage/link.jsp" %>
         <style>
                 .privacy
            {
                min-height:500px;
                background:#efefef;
                  padding-bottom: 20px;
                 
                   padding-top: 2%;
                   line-height:16%;
            }
            .disc{
                line-height: 20px;
                font-size: 18px;
            }
         </style>
    </head>
    <body>
        <div id="loader"></div>
        <div class="col-lg-12">
          <div class="row">
           <%@include  file="MasterPage/header1.jsp" %>
           <div class="col-sm-12 privacy">
               <div class="col-sm-1"></div>
               <div class="col-sm-10">
 
                <div class="col-sm-12">
                    <img src="images/disc.PNG" class="img-responsive"/>
                    <div class="disc" style="text-align:justify;padding-top:3%;">
                    
1.&nbsp; Every effort has been made by the website administrator to provide accurate, up-to-date information.<br><br>
2.&nbsp; The information contained on www.OnlineElectionSystem.com website the "Service" is for Online Election Purpose only.<br><br>
3.&nbsp; online election system assumes no responsibility for errors or omissions in the contents on the Service.<br><br>
4.&nbsp; In no event shall online election system be liable for any special, direct, indirect, consequential, or incidental damages or any damages whatsoever.<br><br>
5.&nbsp; whether in an action of contract, negligence or other tort, arising out of or in connection with the use of the Service or the contents of the Service. <br><br>
6.&nbsp; online election system reserves the right to make additions, deletions, or modification to the contents on the Service at any time without prior notice.<br><br>
7.&nbsp; This Website for online election system has been created with the help of My Team Support.<br><br>
8.&nbsp;online election system does not warrant that the website is free of viruses or other harmful components.<br><br>
9.&nbsp;online election system reserves the right to make additions, deletions, or modification to the 
contents on the Service at any time without prior notice.<br><br>
10.&nbsp; The Election System does not control, monitor or guarantee the information contained in the sites or information.<br><br>
11.&nbsp;contained in links to other external web sites, and does not endorse any views expressed or products or services offered therein.<br><br>
12.&nbsp; In no event shall the Online Election System be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods,or services available on or through any such site or resource.

                    </div>
 </div>       
                    </div>
                </div>
               </div>
               <div class="col-sm-1"></div>
           </div>
             <%@include  file="MasterPage/footer1.jsp" %>
          </div>
        </div>
        <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
    </body>
</html>
