<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String er;
String dd=request.getParameter("fn1");
String mm=request.getParameter("fn2");
String yy=request.getParameter("fn3");
String type=request.getParameter("or");
String u=request.getParameter("username");
try
{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo?autoReconnect=true&useSSL=false","root","pichu2");
String query= "Insert into logs"+"(dd,mm,yy,type,uname) values"+"(?,?,?,?,?)";
PreparedStatement stmt = conn.prepareStatement(query);
stmt.setString(1,dd);
stmt.setString(2,mm);
stmt.setString(3,yy);
stmt.setString(4,type);
stmt.setString(5, request.getParameter("username"));

stmt.executeUpdate();
response.sendRedirect("main.jsp?username="+u);
//if(stmt.executeUpdate()==0)
	
	//<a href="reg.html">Please click here to reenter</a>
%>	
<a href="register.html">Please click here to re enter</a>
DATA SAVED
<% 
conn.close();
}
catch(SQLException e)
{
er=e.getMessage();

%>
<a href="register.html">Please click here to re enter</a><br><br>
<%=er %>

<%
}
%>

</body>
</html>