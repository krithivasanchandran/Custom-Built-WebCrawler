<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<title>Rate your Professor</title>
</head>
<link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
<style type="text/css">

#searchbox
{
	background: #eaf8fc;
	background-image: -moz-linear-gradient(#fff, #d4e8ec);
	background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #d4e8ec),color-stop(1, #fff));
	
	-moz-border-radius: 35px;
	border-radius: 35px;
	
	border-width: 1px;
	border-style: solid;
	border-color: #c4d9df #a4c3ca #83afb7;            
	width: 500px;
	height: 35px;
	padding: 10px;
	margin: 100px auto 50px;
	overflow: hidden; /* Clear floats */
}
#suggestions{ position: relative; left:235px; width:320px; display:none; }
#search, #submit
{
	float: left;
}

#search
{
	padding: 5px 9px;
	height: 23px;
	width: 380px;
	border: 1px solid #a4c3ca;
	font: normal 13px 'trebuchet MS', arial, helvetica;
	background: #f1f1f1;
	
	-moz-border-radius: 50px 3px 3px 50px;
	 border-radius: 50px 3px 3px 50px;
	 -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25) inset, 0 1px 0 rgba(255, 255, 255, 1);
	 -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25) inset, 0 1px 0 rgba(255, 255, 255, 1);
	 box-shadow: 0 1px 3px rgba(0, 0, 0, 0.25) inset, 0 1px 0 rgba(255, 255, 255, 1);            
}

#submit
{		
	background: #6cbb6b;
	background-image: -moz-linear-gradient(#95d788, #6cbb6b);
	background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #6cbb6b),color-stop(1, #95d788));
	
	-moz-border-radius: 3px 50px 50px 3px;
	border-radius: 3px 50px 50px 3px;
	
	border-width: 1px;
	border-style: solid;
	border-color: #7eba7c #578e57 #447d43;
	
	 -moz-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
	 -webkit-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
	 box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;   		

	height: 35px;
	margin: 0 0 0 10px;
        padding: 0;
	width: 90px;
	cursor: pointer;
	font: bold 14px Arial, Helvetica;
	color: #23441e;
	
	text-shadow: 0 1px 0 rgba(255,255,255,0.5);
}

#submit:hover
{		
	background: #95d788;
	background-image: -moz-linear-gradient(#6cbb6b, #95d788);
	background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #95d788),color-stop(1, #6cbb6b));
}	

#submit:active
{		
	background: #95d788;
	outline: none;
   
	 -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
	 -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
	 box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;		
}

#submit::-moz-focus-inner
{
       border: 0;  /* Small centering fix for Firefox */
}

#header{
position:relative;
top:-1px;
left:-1px;
width:auto;
border-width:1px;
border:1px solid #d9d9d9;
padding-left:460px;
}
h1 {
    font-family: 'Lobster', Georgia, Times, serif;
    color:Black;
    font:bold;
    font-size: 80px;
    font-size-adjust:none;
    line-height: 5px;
}
 
	.spotlightWrapper ul {
    list-style-type: none; /* remove the default style for list items (the circles) */  
    margin:0px; /* remove default margin */  
    padding:0px; /* remove default padding */  
}  
.spotlightWrapper ul li {  
    float:left; /* important: left float */  
}  
.spotlightWrapper ul li a img {  
    width:398px; /* you don't need this, i just rescaled the images they are bigger then i want them to be ' */  
    position:absolute; /* so we can use top and left positioning */  
    top : 100px;
    left:580px;
    border:none; /* remove the default blue border */  
}  

.clear { clear:both; } /* to clear the float after the last item */  
#footer {
font-family: Verdana, Arial, Helvetica, sans-serif;
text-align:center;
font-size: 15px;
color: #EFBB50;
font-weight: normal;
margin-top:50px;
margin-left:auto;
margin-right:auto;
width:500px;
border-top:1.5px solid #d9d9d9;
padding-top:50px;
}
</style>
<!-- <div id="header"> -->
<!-- <h1> Waadhi</h1> -->
<!-- </div> -->

<div class='spotlightWrapper'>
    <!-- start unordered list -->  
    <ul>  
    <li><a href='#'><img src='images/Waadhi.jpg' /></a></li>
<!--  		<li><a href='#'><img src='images/16.jpg' /></a></li> -->
<!--         <li><a href='#'><img src='images/2.jpg' /></a></li>   -->
<!--         <li><a href='#'><img src='images/3.jpg' /></a></li>   -->
<!--         <li><a href='#'><img src='images/4.jpg' /></a></li>   -->
<!--         <li><a href='#'><img src='images/19.jpg' /></a></li>   -->
<!--         <li><a href='#'><img src='images/6.jpg' /></a></li>   -->
<!--         <li><a href='#'><img src='images/21.jpg' /></a></li> -->
<!--             <li><a href='#'><img src='images/8.jpg' /></a></li>   -->
<!--                 <li><a href='#'><img src='images/17.jpg' /></a></li>   -->
<!--                     <li><a href='#'><img src='images/10.jpg' /></a></li>   -->
<!--                         <li><a href='#'><img src='images/11.jpg' /></a></li>   -->
<!--                             <li><a href='#'><img src='images/12.jpg' /></a></li>   -->
<!--                                 <li><a href='#'><img src='images/13.jpg' /></a></li>   -->
<!--                                     <li><a href='#'><img src='images/14.jpg' /></a></li>   -->
<!--                                         <li><a href='#'><img src='images/15.jpg' /></a></li>  -->
<!--                                             <li><a href='#'><img src='images/18.jpg' /></a></li>   -->
        <div class='clear'></div>
    </ul>  
    <!-- end unordered list -->  
</div>
<script type="text/javascript">
    <jsp:include page="jquery.js" />
    $(window).ready(function(){
 
    	 $("#searchbox").keyup(function(){
    		 var $messageDiv = $('#suggestions'); // get the reference of the div
    		 $messageDiv.show();
    	       
    	 })
    });
    
$(window).load(function(){  
	
	var spotlight = {  
         // the opacity of the "transparent" images - change it if you like  
        opacity : 0.3,  
  
        /*the vars bellow are for width and height of the images so we can make 
        the <li> same size */  
        imgWidth : $('.spotlightWrapper ul li').find('img').width(),  
        imgHeight : $('.spotlightWrapper ul li').find('img').height()  
  
    };  
  
    //set the width and height of the list items same as the images  
    $('.spotlightWrapper ul li').css({ 'width' : spotlight.imgWidth, 'height' : spotlight.imgHeight });  
  
    //when mouse over the list item...  
    $('.spotlightWrapper ul li').hover(function(){  
  
        //...find the image inside of it and add active class to it and change opacity to 1 (no transparency)  
        $(this).find('img').addClass('active').css({ 'opacity' : 1});  
  
        //get the other list items and change the opacity of the images inside it to the one we have set in the spotlight array  
        $(this).siblings('li').find('img').css({'opacity' : spotlight.opacity}) ;  
  
        //when mouse leave...  
    }, function(){  
  
        //... find the image inside of the list item we just left and remove the active class  
        $(this).find('img').removeClass('active');  
  
    });
    //when mouse leaves the unordered list...  
    $('.spotlightWrapper ul').bind('mouseleave',function(){  
        //find the images and change the opacity to 1 (fully visible)
        $(this).find('img').css('opacity', 1);  
    });  
  
});</script>

<body>
<form id="searchbox" action="hello?pageNumberRequest=1">
    <s:textfield id="search" name="profname"/>
    <input id="submit" type="submit" value="Search">
    <input type="hidden" name="pageNumberRequest" value="1"/>
      <div id="suggestions"></div>
</form>
<div id="footer">
"Like to know About us"
</div>
</body>
</html>