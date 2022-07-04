

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>OUR TEAM</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jquary/jquery.js" type="text/javascript"></script>
        <script>
$(document).ready(function(){
$(".imgS").mouseenter(function(){
var url=$(this).attr("src");
$("#imgMain").attr("src",url);

})
$(".imgS").mouseleave(function(){
$("#imgMain").attr("src","images/team.jpg");
$(this).css("border","5px double black");
$(this).css("border","5px solid black")
})
})
</script>
<style>
    #loader
            { 
                position:fixed;
                width: 100%;
                height:100%;
                background: #fff url("../images/loader.gif")
                    no-repeat center;
                z-index:99999;
                
            }
#imgMain
{
height:380px;
width:440px;
border:10px double black;
box-shadow:10px 10px 50px black;
padding:10px;
}
.imgS
{
height:220px;
width:200px;
padding:5px;
border:5px double black;
margin:10px;
box-shadow:5px 5px 10px black;
}
</style>
    </head>
    <body>
        <div id="loader"></div>
        <center>
<span><img src="images/team.jpg" id="imgMain"/><span><br/>
<img src="images/anika.jpg" class="imgS"/>
<img src="images/ranj.jpg" class="imgS"/>
<img src="images/sur2.jpg" class="imgS"/>
<img src="images/krii1.jpg"class="imgS"/>
<img src="images/rup.jpg" class="imgS"/>

</center>
        
        
         <script type="text/javascript">
               setTimeout(function(){ document.getElementById('loader').style.display="none";
                },1500);
                </script>
        </body>
</html>
