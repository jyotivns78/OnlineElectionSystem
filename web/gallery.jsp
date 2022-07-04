

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gallery</title>
        <%@include file="MasterPage/link.jsp" %>
        <script>
            $(document).ready(function(){
               $(".imgS").click(function(){
                   $("#lightbox").css("display","block");
                 var url=$(this).attr("src");
                 $(".imgM").attr("src",url);
               })
            })
        </script>
        <style>
            
            .gal
            {
              min-height: 400px;
              background:gray;
             padding-bottom:2%;
            margin-bottom:3%;
            }
            .g
            {
           
              background: white;
              margin-top:6%;
              padding-top: 6%;
               padding-left: 7%;
              padding-bottom: 6%;
            }
           .g img{
              
              transition:all ease 2s;
            }
            .g img:hover{
                
                 transition:all ease 2s;
                 transform: scale(1.02);
            }
            #lightbox
            {
                height:100%;
                width:100%;
                background: rgba(0,0,0,.5);
                position:fixed;
                z-index:10;
              padding-top: 4%;
              display:none;
            }
            .lightbox1
            {
                height:95%;
                width:45%;
                background: white;
                margin:0px auto;
                box-shadow: 10px 10px 20px black;
                border:10px double red;
                padding-left: 3%;
                 padding-right: 3%;
                 padding-top:2%;
            }
            .lightbox1 img{
                height:80%;
                width: 100%;
                border:10px double black;
            }
            .abcd{
                background: #f0f0f0;
            }
            .bbb{
                min-height: 20px;
                background: white;
            }
        </style>
        
    </head>
    <body>
        <div id="loader"></div>
        <div class="col-sm-12">
            <div class="row"> 
                <%@include file="MasterPage/header1.jsp" %>
                <div class="col-sm-12 bbb"></div>
                <div class="col-sm-12 abcd">
     <div class="h2 text-center"> <b style="color:blue;font-size:40px"> GALLERY  <span style="color:black" class="fa fa-image" ></span></b></div>
 
                    <div class="col-sm-12">
         <div class="col-sm-1"></div>
         <div class="col-sm-10 gal">
    <div class="col-sm-12">
              <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal2.jpg" class="img-responsive imgS"/>
                     </div>
                 </div>
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal4.jpg"  class="img-responsive imgS"/>
                     </div>
                 </div>
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal5.jpg" class="img-responsive imgS"/>
                     </div>
                 </div>
    </div>
    <div class="col-sm-12">
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal3.jpg" class="img-responsive imgS"/>
                     </div>
                 </div>
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal6.jpg" class="img-responsive imgS"/>
                     </div>
                 </div>
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal7.jpg"  class="img-responsive imgS"/>
                     </div>
                 </div>
    </div>
    <div class="col-sm-12">
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal8.jpg"  class="img-responsive imgS"/>
                     </div>
                 </div>
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal9.jpg"  class="img-responsive imgS"/>
                     </div>
                 </div>
            <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal10.jpeg"  class="img-responsive imgS"/>
                     </div>
            </div>
    </div>
             
   <div class="col-sm-12">
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal11.jpg"  class="img-responsive imgS"/>
                     </div>
                 </div>
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal12.jpg" class="img-responsive imgS"/>
                     </div>
                 </div>
                 <div class="col-sm-4">
                     <div class="col-sm-12 g">
                         <img src="images/gal13.jpg"  class="img-responsive imgS"/>
                     </div>
                 </div>
    </div>
         </div>
         <div class="col-sm-1"></div>
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
