<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>



<% String profname = request.getParameter("profname"); %>
<% String deptname = request.getParameter("deptService"); %>
<% String statename = request.getParameter("stateService"); %>
<% String countryname = request.getParameter("countryService"); %>



<html>

<head>
<title>Hello World</title>

</head>

<link href="http://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Cabin:500'
	rel='stylesheet' type='text/css'>
<link type="text/css" rel="stylesheet" href="simplePagination.css" />

<script src='jquery.rating.js' type="text/javascript"></script>
<link href='jquery.rating.css' type="text/css" rel="stylesheet" />

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.simplePagination.js"></script>
<script>
var $score;
paginator = $(function() { 
	
    $('.light-theme').pagination({ 
    
	   pages : $('#abcd').find('span').html(),
       itemsOnPage: 10, 
       cssStyle: 'light-theme',
      displayedPages: 5,
      hrefTextPrefix : 'hello?profname=<%=profname%>&pageNumberRequest=',
      onPageClick: function(pageNumber, event) {
    	  score = pageNumber;
      }
    });
    }); 
    
    $(document).ready(function(){
    	paginator();
    	alert(score);
    });

</script>

<style type="text/css">
body {
	width: 80%;
	height: auto;
	margin: auto;
	border: solid 1px #f1f1f1;
	-moz-box-shadow: 7px 7px 7px #f1f1f1;
	-webkit-box-shadow: 7px 7px 7px #f1f1f1;
	box-shadow: 7px 7px 7px #f1f1f1;
}

#header {
	height: 70px;
	background: #f1f1f1;
	margin: auto;
}

#footer {
	height: 70px;
	margin: auto;
	padding-bottom: 5px;
}

#header h1 {
	font-family: 'Lobster', Georgia, Times, serif;
	color: #c00;
	font: bold;
	font-size: 40px;
	margin-left: 450px;
}

table {
	margin-left: 320px;
	border: solid 1.5px #f1f1f1;
	border-collapse: collapse;
	width: 75%;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
}

tr {
	text-align: center;
	height: 160px;
	border-bottom: solid 1.5px #f1f1f1;
}

table tr:hover {
	background: #d0dafd;
	z-index: 2 !important;
	border: 2px solid #bcbcbc;
	-moz-opacity: .80;
	filter: alpha(opacity = 80);
	opacity: .80;
}

#container {
	float: left;
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
	max-height: 60px;
}

#professordetailscontainer {
	padding: 5px;
	float: right;
	width: 710px;
	height: 150px;
}

#professorNameContainer {
	padding-top: 15px;
	display: block;
	width: 450px;
	height: 45px;
	text-align: left;
}

#professorNameContainer .name {
	font-family: 'Cabin', serif;
	font-size: 15px;
}

#professorNameContainer .name:hover {
	text-decoration: none;
	color: blue;
}

#professordepartmentContainer {
	display: block;
	padding-top: 15px;
	text-align: left;
	width: 400px;
	height: 25px;
}

#professordepartmentContainer .pair {
	font-family: 'Cabin', serif;
	font-size: 16px;
	color: #FB4545;
	text-transform: capitalize;
	padding: 10px;
}

#professorUniversityContainer {
	display: block;
	padding-top: 13px;
	width: 478px;
	height: 35px;
	text-align: left;
	padding-left: 10px;
	padding-top: 15px;
}

#professorUniversityContainer .font-style {
	font-family: 'Cabin', serif;
	font-size: 17px;
	text-transform: capitalize;
}

#professorRatingContainer {
	display: block;
	width: 320px;
	height: 30px;
	float: right;
	text-align: left;
}

#professorRatingContainer .fontrating {
	font-family: 'Cabin', serif;
	font-size: 16px;
	float: left;
	padding-top: 3px;
}

.ratings_stars {
	position: relative;
	background: url('images/star_full.jpg') no-repeat;
	float: right;
	height: 23px;
	padding: 5px;
	width: 23px;
	z-index: 999;
}

.ratings_vote {
	background: url('images/star_full.jpg') no-repeat;
}

.ratings_over {
	background: url('images/star_highlight.jpg') no-repeat;
}

#leftiffiltercontainer {
	position: absolute;
	top: 190px;
	left: 195px;
	margin-left: 5px;
	padding-top: 10px;
	width: 15%;
	height: auto;
	min-height: 30px;
	max-height: 150px;
	display: block;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	overflow: hidden;
	text-decoration: none;
	cursor: auto;
}

#leftfiltercontainer {
	position: absolute;
	top: 190px;
	left: 195px;
	margin-left: 5px;
	width: 15%;
	height: auto;
	max-height: 150px;
	display: block;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	overflow: auto;
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

#statecontaienr {
	position: absolute;
	top: 440px;
	padding-top: 5px;
	left: 195px;
	margin-left: 5px;
	overflow: scroll;
	width: 15%;
	height: auto;
	max-height: 150px;
	display: block;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	overflow: auto;
}

#stateIfcontainer {
	position: absolute;
	top: 440px;
	left: 195px;
	margin-left: 5px;
	padding-top: 15px;
	width: 15%;
	height: auto;
	min-height: 30px;
	max-height: 150px;
	display: block;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	overflow: hidden;
	text-decoration: none;
	cursor: auto;
}

#countrycontainer {
	position: absolute;
	top: 690px;
	padding-top: 5px;
	left: 195px;
	margin-left: 5px;
	overflow: scroll;
	width: 15%;
	height: auto;
	max-height: 150px;
	display: inline-block;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	overflow: auto;
}

#countryifcontainer {
	position: absolute;
	top: 690px;
	padding-top: 10px;
	left: 195px;
	margin-left: 5px;
	overflow: scroll;
	width: 15%;
	height: auto;
	min-height: 33px;
	max-height: 150px;
	display: inline-block;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	overflow: auto;
}

#filtercontainer {
	position: absolute;
	top: 10px;
	left: 195px;
	margin-left: 5px;
	width: 15%;
	height: 30px;
	display: table;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	text-align: center;
	padding-top: 7px;
	font-family: 'Cabin', serif;
	font-size: 15px;
}

#departmentleftfiltercontainer {
	position: absolute;
	top: 130px;
	left: 195px;
	margin-left: 5px;
	width: 15%;
	height: 30px;
	display: table;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	text-align: center;
	padding-top: 7px;
	font-family: 'Cabin', serif;
	font-size: 15px;
}

#Stateleftfiltercontainer {
	position: absolute;
	top: 380px;
	padding-top: 10px;
	left: 195px;
	margin-left: 5px;
	width: 15%;
	height: 30px;
	display: table;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	text-align: center;
	padding-top: 7px;
	font-family: 'Cabin', serif;
	font-size: 15px;
}

#CountryFilterContainer {
	position: absolute;
	top: 630px;
	padding-top: 10px;
	left: 195px;
	margin-left: 5px;
	width: 15%;
	height: 30px;
	display: table;
	border: solid 1.5px #f1f1f1;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	text-align: center;
	padding-top: 7px;
	font-family: 'Cabin', serif;
	font-size: 15px;
}

#results{
	margin-left: 320px;
	border: solid 1.5px #f1f1f1;
	border-collapse: collapse;
	width: 500px;
	height: 22px;
	
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-shadow: 3px 3px 3px #f1f1f1;
	background-color:#618EAE;
	overflow: hidden;
}


maincontainer {
	margin-left: 290px;
	border: solid 1.5px #f1f1f1;
	border-collapse: collapse;
	width: 1140px;
	-moz-box-shadow: 3px 3px 3px #f1f1f1;
	-webkit-box-shadow: 3px 3px 3px #f1f1f1;
	box-shadow: 3px 3px 3px #f1f1f1;
	overflow: scroll;
}

#departmentleftfiltercontainer,#leftfiltercontainer,#Stateleftfiltercontainer,#CountryFilterContainer,#CountryIfFilterContainer
	{
	float: left;
}

#table {
	float: right;
}
</style>


<script type="text/javascript">
$(document).ready(function() {
		$('.ratings_stars').hover(  
			    // Handles the mouseover  
			    function() {  
			        $(this).prevAll().andSelf().addClass('ratings_over');  
			        $(this).nextAll().removeClass('ratings_vote');   
			    },  
			    // Handles the mouseout  
			    function() {  
			        $(this).prevAll().andSelf().removeClass('ratings_over');  
			        set_votes($(this).parent());  
			    }  
			)});
 </script>


<body>
	<div id="header">
		<h1>Rate Your Professors</h1>
	</div>
	
	<div id="results">
	<span style="font-family: 'Cabin', serif; font-size: 15px; padding-left: 40px; color:white;"> Displaying </span> <span style="font-family: 'Cabin', serif; font-size: 13px; padding-left: 20px; color:white; margin:3px;"> <s:property value="resultsize" /> </span>
	<span style="font-family: 'Cabin', serif; font-size: 15px; padding-left: 5px; color:white;"> results </span>
	 	<span style="font-family: 'Cabin', serif; font-size: 15px; padding-left: 45px; color:white;"> You  searched  for : </span> <span style="font-family: 'Cabin', serif; font-size: 13px; padding-left: 20px; color:white; margin:3px;"> <%= profname %></span>
	
	</div>

	<div id="maincontainer">
		<table>

			<s:iterator value="professorProfile">
				<tr>
					<td>
						<div id="container">
							<div class="image-container">
								<img src="images/nus01.jpg" alt="Image not found"
									onError="this.onerror=null;this.src='images/noprofimageicon.jpg';" />
							</div>
						</div>
						<div id="professordetailscontainer">
							<div id="professorNameContainer">
								<a href="professorRating?pid=<s:property value="pid"/>" style="text-decoration: none; font-size: 21px;"> <s:property value="proffirstName" /></a>

								<div id="professordepartmentContainer">

									<span class="pair">Department Of <s:property
											value="department" /></span>
								</div>
								<div id="professorUniversityContainer">
									<span class="font-style"> <s:property value="univName" />
										, <s:property value="univLoc" /> , <s:property value="country" /> </span>
								</div>

							</div>

							<div id="professorRatingContainer">
								<span class="fontrating"> Average Rating</span>

								<div class="ratings_stars"></div>
								<div class="ratings_stars"></div>
								<div class="ratings_stars"></div>
								<div class="ratings_stars"></div>
								<div class="ratings_stars"></div>

							</div>

						</div>


					</td>
				</tr>
			</s:iterator>

		</table>


		<% if( deptname != null ){ %>
		<div id="departmentleftfiltercontainer">
			<span>FILTER BY DEPARTMENT</span>
		</div>
		<div id="leftiffiltercontainer">
			<s:set name="list1" value="%{distinctByDepartmentProfessors}" />
			<s:set name="list2" value="%{countByDept}" />

			<s:iterator value="#list1" status="stat" id="item">
				<% if( statename != null && countryname != null){ %>
				<a
					style="padding-left: 30px; padding-top: 15px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>&amp;countryService=<%=countryname%>&amp;deptService=<s:property />">
					<s:property /> <s:push value="#list2[#stat.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>&amp;countryService=<%=countryname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else if(statename != null){ %>
				<a
					style="padding-left: 30px; padding-top: 15px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>&amp;deptService=<s:property />">
					<s:property /> <s:push value="#list2[#stat.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else if(countryname != null){ %>
				<a
					style="padding-left: 30px; padding-top: 15px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;countryService=<%=countryname%>&amp;deptService=<s:property />">
					<s:property /> <s:push value="#list2[#stat.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;countryService=<%=countryname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else{ %>
				<a
					style="padding-left: 30px; padding-top: 15px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<s:property />">
					<s:property /> <s:push value="#list2[#stat.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>

				<%} %>
			</s:iterator>


		</div>
		<%}else{ %>
		<div id="departmentleftfiltercontainer">
			<span>DEPARTMENT</span>
		</div>
		<div id="leftfiltercontainer">
			<s:set name="list1" value="%{distinctByDepartmentProfessors}" />
			<s:set name="list2" value="%{countByDept}" />

			<s:iterator value="#list1" status="stat" id="item">
				<% if( statename != null && countryname != null){ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>&amp;countryService=<%=countryname%>&amp;deptService=<s:property />">
					<s:property /> <s:push value="#list2[#stat.index]">   [<s:property />] </s:push><br />
				</a>
				<%}else if(statename != null){ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>&amp;deptService=<s:property />">
					<s:property /> <s:push value="#list2[#stat.index]">   [<s:property />] </s:push><br />
				</a>
				<%}else if(countryname != null){ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;countryService=<%=countryname%>&amp;deptService=<s:property />">
					<s:property /> <s:push value="#list2[#stat.index]">   [<s:property />] </s:push><br />
				</a>
				<%}else{ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<s:property />">
					<s:property /> <s:push value="#list2[#stat.index]">   [<s:property />] </s:push><br/>
				</a>
				<%} %>
			</s:iterator>


		</div>
		<%} %>
		<% if( statename != null ){ %>
		<div id="Stateleftfiltercontainer">
			<span>FILTER BY STATE</span>
		</div>
		<div id="stateIfcontainer">
			<s:set name="statelist" value="%{distinctByState}" />
			<s:set name="countlist" value="%{countState}" />

			<s:iterator value="#statelist" status="gitstat" id="stateitem">
				<% if( deptname != null && countryname != null){ %>
				<a
					style="padding-left: 30px; padding-top: 15px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;stateService=<s:property />&countryService=<%=countryname%>">
					<s:property />
					<s:push value="#countlist[#gitstat.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;countryService=<%=countryname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else if( deptname != null){ %>
				<a
					style="padding-left: 30px; padding-top: 15px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;stateService=<s:property />">
					<s:property />
					<s:push value="#countlist[#gitstat.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else if( countryname != null){ %>
				<a
					style="padding-left: 30px; padding-top: 15px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;countryService=<%=countryname%>&amp;stateService=<s:property />">
					<s:property />
					<s:push value="#countlist[#gitstat.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;countryService=<%=countryname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else{ %>
				<a
					style="padding-left: 30px; padding-top: 15px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<s:property />"><s:property />
					<s:push value="#countlist[#gitstat.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%} %>
			</s:iterator>
		</div>


		<%}else{ %>
		<div id="Stateleftfiltercontainer">
			<span>STATE</span>
		</div>
		<div id="statecontaienr">
			<s:set name="statelist" value="%{distinctByState}" />
			<s:set name="countlist" value="%{countState}" />

			<s:iterator value="#statelist" status="gitstat" id="stateitem">
				<% if( deptname != null && countryname != null){ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;stateService=<s:property />&countryService=<%=countryname%>">
					<s:property />
					<s:push value="#countlist[#gitstat.index]">   [<s:property />] </s:push>
					<br />
				</a>
				<%}else if( deptname != null){ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;stateService=<s:property />">
					<s:property />
					<s:push value="#countlist[#gitstat.index]">   [<s:property />] </s:push>
					<br />
				</a>
				<%}else if( countryname != null){ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;countryService=<%=countryname%>&amp;stateService=<s:property />">
					<s:property />
					<s:push value="#countlist[#gitstat.index]">   [<s:property />] </s:push>
					<br />
				</a>
				<%}else{ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<s:property />"><s:property />
					<s:push value="#countlist[#gitstat.index]">   [<s:property />] </s:push>
					<br /></a>
				<%} %>
			</s:iterator>
		</div>
		<%} %>

		<% if( countryname != null ){ %>
		<div id="CountryFilterContainer">
			<span>FILTER BY COUNTRY</span>
		</div>
		<div id="countryifcontainer">
			<s:set name="countrylist" value="%{distinctCountry}" />
			<s:set name="counter" value="%{countCountry}" />

			<s:iterator value="#countrylist" status="gitsta" id="countryitem">

				<% if( deptname != null && statename != null ){ %>

				<a
					style="padding-left: 30px; padding-top: 10px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;stateService=<%=statename%>&amp;countryService=<s:property />">
					<s:property />
					<s:push value="#counter[#gitsta.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;stateService=<%=statename%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else if(deptname != null){ %>
				<a
					style="padding-left: 30px; padding-top: 10px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;countryService=<s:property />">
					<s:property />
					<s:push value="#counter[#gitsta.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else if(statename != null){ %>
				<a
					style="padding-left: 30px; padding-top: 10px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>&amp;countryService=<s:property />">
					<s:property />
					<s:push value="#counter[#gitsta.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}else{ %>
				<a
					style="padding-left: 30px; padding-top: 10px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;countryService=<s:property />">
					<s:property />
					<s:push value="#counter[#gitsta.index]">   [<s:property />] </s:push>
				</a>
				<a
					style="font-family: 'Cabin', serif; color: black; font-size: 12px; text-decoration: none;"
					href="hello?profname=<%=profname%>"><span
					style="padding-left: 9px;"> ( Clear ) </span></a>
				<%}%>
			</s:iterator>
		</div>

		<%}else{ %>
		<div id="CountryFilterContainer">
			<span>COUNTRY</span>
		</div>
		<div id="countrycontainer">
			<s:set name="countrylist" value="%{distinctCountry}" />
			<s:set name="counter" value="%{countCountry}" />

			<s:iterator value="#countrylist" status="gitsta" id="countryitem">

				<% if( deptname != null && statename != null ){ %>

				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;stateService=<%=statename%>&amp;countryService=<s:property />">
					<s:property />
					<s:push value="#counter[#gitsta.index]">   [<s:property />] </s:push>
					<br />
				</a>
				<%}else if(deptname != null){ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;deptService=<%=deptname%>&amp;countryService=<s:property />">
					<s:property />
					<s:push value="#counter[#gitsta.index]">   [<s:property />] </s:push>
					<br />
				</a>
				<%}else if(statename != null){ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;stateService=<%=statename%>&amp;countryService=<s:property />">
					<s:property />
					<s:push value="#counter[#gitsta.index]">   [<s:property />] </s:push>
					<br />
				</a>
				<%}else{ %>
				<a style="padding-left: 23px; text-decoration: none;"
					href="hello?profname=<%=profname%>&amp;countryService=<s:property />">
					<s:property />
					<s:push value="#counter[#gitsta.index]">   [<s:property />] </s:push>
					<br />
				</a>
				<%}%>
			</s:iterator>
		</div>
		<%} %>

	</div>


	<div id="abcd">
		<span style="display:none;"><s:property value="pages" /></span>
	</div>

	<div class="light-theme"
		style="float: center; padding-left: 550px; padding-top: 70px; padding-bottom: 50px;">
		
		<div class="pager"></div>
<%-- 		<s:set var="counter" value="pages" /> --%>



		<%-- <s:iterator var="#counter" status="increment"  begin="1" end="#counter"> --%>

		<%-- <% if( deptname != null && statename != null && countryname != null){ %> --%>
		<%-- <a href="hello?profname=<%=profname%>&deptService=<%=deptname%>&stateService=<%=statename%>&countryService=<%=countryname%>&pageNumberRequest=<s:property value="top"/>"><s:property value="top"/></a> --%>
		<%-- <%}else if(deptname != null && statename != null){ %> --%>
		<%-- <a href="hello?profname=<%=profname%>&deptService=<%=deptname%>&stateService=<%=statename%>&pageNumberRequest=<s:property value="top"/>"><s:property value="top"/></a> --%>
		<%-- <%}else if(statename != null && countryname != null){ %> --%>
		<%-- <a href="hello?profname=<%=profname%>&stateService=<%=statename%>&countryService=<%=countryname%>&pageNumberRequest=<s:property value="top"/>"><s:property value="top"/></a> --%>
		<%-- <%}else if(deptname != null && countryname != null){ %> --%>
		<%-- <a href="hello?profname=<%=profname%>&deptService=<%=deptname%>&countryService=<%=countryname%>&pageNumberRequest=<s:property value="top"/>"><s:property value="top"/></a> --%>
		<%-- <%}else if(deptname != null ){ %> --%>
		<%-- <a href="hello?profname=<%=profname%>&deptService=<%=deptname%>&pageNumberRequest=<s:property value="top"/>"><s:property value="top"/></a> --%>
		<%-- <%}else if(countryname != null ){ %> --%>
		<%-- <a href="hello?profname=<%=profname%>&countryService=<%=countryname%>&pageNumberRequest=<s:property value="top"/>"><s:property value="top"/></a> --%>
		<%-- <%}else if(statename != null ){ %> --%>
		<%-- <a href="hello?profname=<%=profname%>&stateService=<%=statename%>&pageNumberRequest=<s:property value="top"/>"><s:property value="top"/></a> --%>
		<%-- <%}else{ %> --%>
		<%-- <a href="hello?profname=<%=profname%>&pageNumberRequest=<s:property value="top"/>" ><s:property value="top"/></a> --%>
		<%-- <%} %> --%>
		<%-- </s:iterator> --%>
		<%-- <a href="hello?profname=<%=profname%>&pageNumberRequest=<s:property value="#counter"/>">Next »</a> --%>
	</div>


</body>


</html>