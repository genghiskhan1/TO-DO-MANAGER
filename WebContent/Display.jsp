<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>    <style> body{
    background-image: url("todo.jpg");
        
    }</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="minutes.css">
<title>Minutes</title>
</head>
	<body>
                              
   <div id="div1">                  
  <center>     
 <form action="order" method="post">
  <label>Name:<input type="text" name="Name" id="usr"><br><br></label>
  <label>Task:<input type="text" name="Task" id="usr1"><br><br></label>
  <label>Date:<input type="date" name="Date" id="usr2"><br><br></label>
  <label>Time:<input type="time" name="Time" id="usr3"><br><br></label>
      <input type="submit"><br/> 
     </form>
     </center>
    <div id="div2">
 
        </div>
    </div>
        <br>
        <hr>
        <br>
    	<table>
		<tr>
			<th>S.No: </th>
			<th>Name: </th>
			<th>Task:  </th>
			<th>Time: </th>
			<th>Date: </th>
		</tr>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tdm", "root", "");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("Select * from minutesmaker");
		while (rs.next()) {
			out.println("<tr>");
			out.println("<td>" + rs.getString(1) + "</td>");
			out.println("<td>" + rs.getString(2) + "</td>");
			out.println("<td>" + rs.getString(3) + "</td>");
			out.println("<td>" + rs.getString(4) + "</td>");
			out.println("<td>" + rs.getString(5) + "</td>");
			out.println("</tr>");
		}
	%>
	</table>

</body>
</html>