<%@page import="java.sql.*"%>

<%!
	Connection conn=null;
	PreparedStatement ps=null;
	
	public void jspInit()
	{
		try
		{
			//get Access to ServletConfig object
			ServletConfig cg=getServletConfig();
			
			//Read init param values
			String driver=null,url=null,dbuser=null,dbpwd=null;
			driver=cg.getInitParameter("driver");
			url=cg.getInitParameter("url");
			dbuser=cg.getInitParameter("dbuser");
			dbpwd=cg.getInitParameter("dbpwd");
			
			//Register JDBC Driver
			Class.forName(driver);
			
			//Establish the Connection
			conn=DriverManager.getConnection(url,dbuser,dbpwd);
			
			//Prepare the SQL Query
			if(conn!=null)
			{
				ps=conn.prepareStatement("insert into ticket values(?,?,?,?)");

//ticketIdSeq			
			}
		} //try
		catch(Exception e)
		{
			e.printStackTrace();
		}
	} //jspInit()
	
%>
<%
HttpSession ses=request.getSession(false);
String gender=(String)ses.getAttribute("gender");
String source=(String)ses.getAttribute("source");
String destination=(String)ses.getAttribute("destination");
int noOfTickets=(int)ses.getAttribute("noOfTickets");
%>

<% 
		
		//Set the DATA to the params of insert query
		int result=0;
		if(ps!=null)
		{
			ps.setString(1, gender);
			ps.setString(2, source);
			ps.setString(3, destination);
			ps.setInt(4, noOfTickets);
			
			//Execute the Query
			result=ps.executeUpdate();
		} //if
		
		//Process the Result
		if(result==0)
		{
			%>
				<h2><center><b><font color="red">Ticket Booking Failed</font></b></center></h2>		
			<%
			
		} //if
		else
		{
			%>
				<h2><center><b><font color="green">Ticket Booked Successfully</font></b></center></h2>		
			<%	
		} //else
		%>


<%!	
	public void jspDestroy()
	{
		//Close JDBC Objects
		try
		{
			if(ps!=null)
			{
				ps.close();
			}
		} //try
		catch(SQLException se)
		{
			se.printStackTrace();
		} //catch
		
		try
		{
			if(conn!=null)
			{
				conn.close();
			}
		} //try
		catch(SQLException se)
		{
			se.printStackTrace();
		} //catch
		
	} //jspDestroy()
%>