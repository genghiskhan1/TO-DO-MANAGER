<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*,java.util.Calendar" %>
<%
Calendar c = Calendar.getInstance();
int yy = c.get(Calendar.YEAR);
int mm = c.get(Calendar.MONTH);
int dd = c.get(Calendar.DAY_OF_MONTH);
mm++;
int p=1;
String[] message = new String [10];
int i=0;
String temp ="";
message[i]="No Remainders To Show";
String u = request.getParameter("username");
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tdm");
	Statement s = conn.createStatement();
	String sql = "select * from users where Name='"+u+"'";
	ResultSet rs = s.executeQuery(sql);
	while(rs.next())
	{
		if(rs.getInt("yy")==yy)
			if(rs.getInt("mm")==mm)
				if(rs.getInt("dd")==dd)
				{
					message[i++]=rs.getString("type");
				}
	}
	for(int j=0;j<i;j++)
		temp=temp+"<p>"+p+++". "+message[j]+"</p>";
	
}catch(Exception e){
	
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>WELCOME</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  } 
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
</style>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage"><%=u %></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#band">MANAGER</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Report</a></li>
            <li><a href="#">The Team</a></li>
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="tour" class="bg-1">
  <div class="container">
    <h3 class="text-center">*ADD REMINDERS*</h3>
   
    
    <div class="row text-center">
      
         <div class="col-sm-4"></div>  
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="pay.jpg" alt="New York" width="400" height="300">
          <p><strong>Reminders</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Proceed</button>
        </div>
      </div>
      
      </div>
    </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> SELECT TYPE</h4>
        </div>
        <div class="modal-body">
          <form role="form" action="register.jsp?username=<%=u %>" method="post">
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-plus"></span> DAY</label>
              <input type="number" min="1" max="31" size="2" name="fn1" class="form-control" id="psw" placeholder="dd">
              
              <label for="psw"><span class="glyphicon glyphicon-plus"></span> MONTH</label>
              <input type="number" min="1" max="12" size="2" name="fn2" class="form-control" id="psw" placeholder="mm">
              
              <label for="psw"><span class="glyphicon glyphicon-plus"></span> YEAR</label>
              <input type="number" min="2016" size="4" name="fn3" class="form-control" id="psw" placeholder="yyyy">
              
              <label for="psw"><span class="glyphicon glyphicon-plus"></span> Task</label>
              <input type="text" name="or" class="form-control" placeholder="Tell Us What You Want To Be reminded about!">
              
              
            </div>
            <div class="row">
            <div class="col-sm-5"></div>
              <button type="submit" class="btn btn-block">SAVE 
                <span class="glyphicon glyphicon-ok"></span>
              </button>
              </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          
        </div>
      </div>
    </div>
  </div>
  
  <div>
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1" hidden>Reminders</button>

<!-- Modal -->
<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">REMINDERS</h4>
      </div>
      <div class="modal-body">
        <p><%=temp %></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
  
  </div>
</div>


</body>
</html>