<%@page import="java.sql.*"%>




<html>
<head>
	<title>Buy Ticket </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="style.css" rel="stylesheet" type="text/css" />
	<LINK REL="ICON" HREF="images/logopg.png">

</head>



<body style= "margin: 1px; padding:0px;"> 

<%
HttpSession ses=request.getSession(false);
String gender=(String)ses.getAttribute("gender");
String source=(String)ses.getAttribute("source");
String destination=(String)ses.getAttribute("destination");
int noOfTickets=(int)ses.getAttribute("noOfTickets");
%>
<%=gender %>
<%=source %>
<%=destination %>
<%=noOfTickets %>

	<div id="header">
		<table style="width:100%">
			<tr>
				<td> <font color="#000000" size="6"><p>Booking Ticket </p> </font> </td>
				
				
				
			</tr>
					
		</table>
	</div>
	
	<div id="menu">
		<div id="menu_left">
		<ul>
			<li><a href="#home"> <label  style="color:white; font-family: Calibri"> Home &nbsp&nbsp</label> </a></li>

			
			
		</ul>
		</div>
		
		<div id="menu_right"> 
			
		</div>
	</div>
		
	<div id="body">
		<div id="body_left"> 
		
			<form style = " height: 395px; width: 100%; " action="booking.jsp" method="POST" > 
				<br> <br>
				
				  
				<table style="width:100%" >
					<tr>
						<td rowspan="2"><img src="images/banglore.jpg" alt="logo" style="width:304px;height:290px"> </td>
					
						<td> <br> <label  style="color:white; font-family: Calibri"> <b>Ticket Info </b></label> <br> 
<!-- 							 <input type="textarea" name="depart" style= "width:270px; height: 200px;" readonly value= -->
<%-- 							 "Male="<%=gender %>> --%>

<div color="#FFF">
<br><br>
Source:<%=source %><br><br>
Destination:<%=destination %><br><br>
Number of Teckets:<%=noOfTickets %><br><br>
Gender:<%=gender %><br><br>
Total Price:25<br><br>
</div>
						</td>
					  </tr>
					  <tr>
						
						<td> <br><button class="btnExample1" type="submit" style= "width:270px;value="Submit"/> Buy Ticket </button>  </td>
						
					  </tr>
				</table>
				
				
			</form>
			
		</div>
		
		<div id="body_right"> 
			<div id="social"> 
				<table style="width:100% "> 
					<tr> <a href="#"> <img src="images/social/facebook.png" alt="logo" style="width:45px;height:45px"> </a> </tr>
					<tr> <a href="#"> <img src="images/social/googleplus.png" alt="logo" style="width:45px;height:45px"> </a> </tr>
					<tr> <a href="#"> <img src="images/social/twitter.png" alt="logo" style="width:45px;height:45px"> </a> </tr>
					<tr> <a href="#"> <img src="images/social/linkedin.png" alt="logo" style="width:45px;height:45px"> </a> </tr>
				</table>
			</div>
			
			<div id="developer"> 
			
			</div>
			
		</div>
	</div>
	
	<div id="news"> 
	

	
	<!--<form class="bordr2" style = " height: 180px; width: 580px; border-color:#0066FF "> -->
	<center>
		<img src="images/wish1.jpg" width="100%" height="100"/>
	</center>
	<!--</form> -->
	</div>
	
	<div id="foot">
	
		<div id="foot_center">
			<div id="foot_left"> 
	
				 <br>
				 <label  style="color:white; font-family: Calibri; font-size: 13px;"><b> Powered By: XYZ Company </b></label> <br>
				 <label  style="color:white; font-family: Calibri; font-size: 13px;"><b> Maintained By: XYZ Company </b></label>
			</div>
		
		<div id="foot_right"> 
			
				<br> 
				<label  style="color:white; font-family: Calibri; font-size: 13px;"><b> Designed By: XYZ Company </b> </label> <br>
				<label  style="color:white; font-family: Calibri; font-size: 13px;"> <b> Copyrights: XYZ Company </b></label>
							
			</table>
			
		</div>
		</div>

	</div>
	<div>
	</div>

</body>

</html>

