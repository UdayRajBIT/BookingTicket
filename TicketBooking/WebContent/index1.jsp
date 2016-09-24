<%@page import="java.sql.*"%>
<html>
<head>
	<title>Ticket Booking </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="style.css" rel="stylesheet" type="text/css" />
	<LINK REL="ICON" HREF="images/logopg.png">

</head>

<body style= "margin: 1px; padding:0px;"> 

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
		
			<form style = " height: 395px; width: 100%; " action="bookimmediate.jsp" method="POST" > 
				<br> <br>
				<h2>Gender </h2>
				<table style="width:100%" >
				<tr>
				<table style="width:100%"  >
					<tr>
					<td> <font color="#1A50BC">&nbsp&nbsp&nbsp </font> </td>
					<td> <input type="radio" name="radios" value="Male" checked > <label for="radios" style="color:white; font-family: Calibri"> <b>Male </b> </label> </td>
					<td> <input type="radio" name="radios" value="Female"> <label for="radios" style="color:white; font-family: Calibri"> <b>Female</b> </label> </td>	
					
					<td> <font color="#1A50BC">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </font> </td>
					<!--<td><a href="#"><embed src="Flash/AgentLogin.swf" height ="80" width="150" alt="AgntLogin" title="AgentLogin" border="0" /></a>  </td>-->
					</tr>
				</table>
				
				<table style="width:100%"  >
										
					<tr>
					<td> <font color="#1A50BC">&nbsp&nbsp&nbsp&nbsp </font> </td>
					<td> <br> <label  style="color:white; font-family: Calibri"> <b>Source </b> </label> <br>
							<select name="source" style= "width:250px; height: 32px;">
							<option selected> Choose Departure City </option>
							
							<% 
							
							Connection conn=null;
							Statement st=null;
							ResultSet rs=null;
	
							/* //get Access to ServletConfig object
							ServletConfig cg=getServletConfig();
			
							//Read init param values
							String driver=null,url=null,dbuser=null,dbpwd=null;
							driver=cg.getInitParameter("driver");
							url=cg.getInitParameter("url");
							dbuser=cg.getInitParameter("dbuser");
							dbpwd=cg.getInitParameter("dbpwd"); */
			
							//Register JDBC Driver
							Class.forName("oracle.jdbc.driver.OracleDriver");
			
							//Establish the Connection
							conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			
							//Prepare the SQL Query
							st = conn.createStatement( );
							String sql="select * from station";
							rs = st.executeQuery(sql );
			
							while(rs.next()){
								%>
								<option><%=rs.getString(2) %> </option>
								<%
								
								
							}
							


	
							%>

							</select>
					</td>
					
					<td > <br> <label  style="color:white; font-family: Calibri"> <b>Destination </b></label> <br>
							<select name="destination" style= "width:250px; height: 32px; ">
							<option selected> Choose Destination City  </option>
							<% 
							ResultSet rs1 = st.executeQuery(sql );
							while(rs1.next()){
								%>
								<option><%=rs1.getString(2) %> </option>
								<%}
							%>
								
							</select>
					</td>
					<td> </td>
					</tr>
				</table>
					
				<table style="width:100%" >
					<tr> 
						<td> <font color="#1A50BC">&nbsp&nbsp </font> </td>
						<td> <br> <label  style="color:white; font-family: Calibri"> <b>Number of Tickets </b></label> <br> 
						<%
						
						%>
							  <input type="text" name="noOfTickets" style= "width:250px; height: 32px;">
						</td>
						<td> </td>
						<td> </td>
					
					</tr>
				</table>
				
				<table style="width:100%" >
					<tr> 
						<td> <font color="#1A50BC"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</font> </td>
						<td> <br> <button class="btnExample1" type="submit" value="Submit"/> Book Ticket </button>  </td>
						<td> <font color="#1A50BC">.. </font> </td>
					
					
					</tr>
				
				</table>
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

</body>

</html>

