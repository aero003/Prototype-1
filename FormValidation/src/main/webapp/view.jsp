<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	    out.println("<div id='form-wrapper' style='max-width:800px;margin:50px;'>");
		String fname = request.getParameter("fname");
	    String lname = request.getParameter("lname");
		String mname = request.getParameter("mname");
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String gmail = request.getParameter("gmail");
		String code = request.getParameter("code");
		String number = request.getParameter("number");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		
		out.println("<font face = 'Times New Roman' size = 5><div>First Name : "+fname+"</div><br>");
		out.println("<div>Last Name : "+lname+"</div><br>");
		out.println("<div>Middle Name : "+mname+"</div><br>");
		out.println("<div>Address : &nbsp;"+country+",&nbsp;&nbsp;"+state+",&nbsp;&nbsp;"+zip+"</div><br>");
		out.println("<div>Gmail : &nbsp;"+gmail+".&nbsp;&nbsp;&nbsp;&nbsp;"+"Phone Number : &nbsp;"+code+"-"+number+".</div><br>");
		out.println("<div>Height : &nbsp;"+height+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"weight : &nbsp;"+weight+"</div></font></div>");
	
	%>
</body>
</html>