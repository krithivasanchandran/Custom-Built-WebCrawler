<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
body{
width:80%;
height:auto;
}
#maincontainer{
    margin-left: 280px;
	border: solid 1.5px #f1f1f1;
	border-collapse: collapse;
	background-color:white;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	margin-top:35px;
	-moz-border-radius: 2px;
	border-radius: 2px;
	height: auto;
	min-height: 600px;
	max-height: 1000px;
}

#professorDetailsContainer{
width:35%;
}


 #container {
 border: solid 1px #f1f1f1;
 moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	margin-left: 100px;
	margin-top: 100px;
	padding: 10px;
	width: 148px;
	height: 150px;
	display: table;
}

#container .image-container {
	text-align: center;
	vertical-align: middle;
	display: table-cell;
}

#container .image-container img {
	max-width: 160px;
	max-height: 160px;

}

#ratingContainer{
border: solid 2.5px #f1f1f1;
position:absolute;
top:50px;
left:500px;
width:35%;
margin-left: 170px;
margin-top: 30px;
overflow:auto;
height: auto;
min-height: 400px;
max-height:500px;
}

div::-webkit-scrollbar {
	width: 10px;
}

div::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	border-radius: 5px;
}

div::-webkit-scrollbar-thumb {
	border-radius: 25px;
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.5);
}

div::-webkit-scrollbar-thumb:hover {
	background: #AAA;
}


professorDetailsContainer,container{float:left; }

ratingContainer{float:right; }

.profname{
position:absolute;
top:330px;
left: 300px;
width: 130px;
}

.dept{
position:absolute;
top:390px;
left: 300px;
width: 500px;
}

.univ{
position:absolute;
top:430px;
left: 300px;
width: 500px;
}

.loc{
position:absolute;
top:470px;
left: 300px;
width: 500px;
}

.country{
position:absolute;
top:513px;
left: 300px;
width: 500px;
}

table {
    padding: 10px;
	border: solid 1.5px #f1f1f1;
	border-collapse: collapse;
	width: 100%;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
}

tr {
	height: 200px;
	border-bottom: solid 1.5px #f1f1f1;
}

td {
padding:15px;
text-align: left;
}

table tr:hover {
	background: #d0dafd;
	z-index: 2 !important;
	border: 2px solid #bcbcbc;
	-moz-opacity: .80;
	filter: alpha(opacity = 80);
	opacity: .80;
	 
}
  .myButton {
        
        -moz-box-shadow: 0px 1px 0px 0px #f0f7fa;
        -webkit-box-shadow: 0px 1px 0px 0px #f0f7fa;
        box-shadow: 0px 1px 0px 0px #f0f7fa;
        
        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #33bdef), color-stop(1, #019ad2));
        background:-moz-linear-gradient(top, #33bdef 5%, #019ad2 100%);
        background:-webkit-linear-gradient(top, #33bdef 5%, #019ad2 100%);
        background:-o-linear-gradient(top, #33bdef 5%, #019ad2 100%);
        background:-ms-linear-gradient(top, #33bdef 5%, #019ad2 100%);
        background:linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#33bdef', endColorstr='#019ad2',GradientType=0);
        
        background-color:#33bdef;
        
        -moz-border-radius:6px;
        -webkit-border-radius:6px;
        border-radius:6px;
        
        border:1px solid #057fd0;
        
        display:inline-block;
        color:#ffffff;
        font-family:arial;
        font-size:15px;
        font-weight:bold;
        padding:6px 24px;
        text-decoration:none;
        
        text-shadow:0px -1px 0px #5b6178;
        position : absolute;
        top:570px;
        left:370px;
        
    }
    .myButton:hover {
        
        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #019ad2), color-stop(1, #33bdef));
        background:-moz-linear-gradient(top, #019ad2 5%, #33bdef 100%);
        background:-webkit-linear-gradient(top, #019ad2 5%, #33bdef 100%);
        background:-o-linear-gradient(top, #019ad2 5%, #33bdef 100%);
        background:-ms-linear-gradient(top, #019ad2 5%, #33bdef 100%);
        background:linear-gradient(to bottom, #019ad2 5%, #33bdef 100%);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#019ad2', endColorstr='#33bdef',GradientType=0);
        
        background-color:#019ad2;
    }
    .myButton:active {
        position:relative;
        top:1px;
    }


</style>
</head>

<body>
<div id="maincontainer">

<div id="container">
	<div class="image-container">
			<img src="images/nus01.jpg" alt="Image not found" onError="this.onerror=null;this.src='images/noprofimageicon.jpg';" />
	</div>
</div>

<div id="professorDetailsContainer">
<s:iterator value="profDetails">

<span class="profname" style=" padding-left: 110px; font-family: 'Droid Serif', serif; font-weight: 700;  "> <s:property value="proffirstName" /> </span><br/>

 <span class="dept" style=" padding-left: 70px; font-family: 'Droid Serif', serif; font-weight: 700; color: #E47911; "> Department Of <s:property value="department" /> </span><br/>
 
  <span class="univ" style=" padding-left: 70px; font-family: 'Droid Serif', serif; font-weight: 700; color: #E47911; "> <s:property value="univName" />  </span><br/>
  
   <span class="loc" style=" padding-left: 70px; font-family: 'Droid Serif', serif; font-weight: 700; color: #E47911; ">  <s:property value="univLoc" />,  <s:property value="state"/> </span><br/>
   
    <span class="country" style=" padding-left: 70px; font-family: 'Droid Serif', serif; font-weight: 700;  color: #E47911; ">  <s:property value="country" /> </span><br/>
    
</s:iterator>

<a href="#" class="myButton">Rate Professor</a>
</div>

<div id="ratingContainer">
<s:iterator value="ratingsBean">
<table>
<tr>
<td><span class="commentContainer" style="font-family: 'Droid Serif', serif; font-size: 16px;"><s:property value="comment" /></span> <br/> </td>
</tr>
</table>

</s:iterator>		
</div>

						



</div>
</body>
</html>