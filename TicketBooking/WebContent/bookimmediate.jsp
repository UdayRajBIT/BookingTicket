<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String gender=request.getParameter("radios");
		String source=request.getParameter("source");
		String destination=request.getParameter("destination");
		int noOfTickets=Integer.parseInt(request.getParameter("noOfTickets"));
%>
<%
HttpSession session1=request.getSession(true);
session1.setAttribute("gender", gender);
session1.setAttribute("source", source);
session1.setAttribute("destination", destination);
session1.setAttribute("noOfTickets", noOfTickets);

response.sendRedirect("book.jsp");
%>
</body>
</html>