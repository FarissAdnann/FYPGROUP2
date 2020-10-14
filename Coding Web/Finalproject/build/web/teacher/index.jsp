<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Attendance</title>
    <style type = "text/css">
        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #25383C;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #000;
}
      body{
    margin: 0;
    padding: 0;
    background: #BCC6CC;
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
    
          }
        table, td, th {
          border: 1px solid black;
          padding: 5px;
      }
      a:link, a:visited {
  background-color: #25383C;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: #25383C;
}
    </style>
  </head>
  <body bgcolor="#EE8E22" style="text-align: center;">
  <center><img src="head-logo.png" alt="Nike" width="380" height="100"></center>
  <center>
      <ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="attendance.jsp">Attendance</a></li>
  <li><a href="student.jsp">Student</a></li>
  <li><a href="register.jsp">Register Student</a></li>
  <li style="float:right"><a href="#about">Log out</a></li>
</ul>
      <h1>SK Kuala Perlis Attendance System</h1>
    <h2> Welcome ,</h2>
    <center><img src="logo.jpg" alt="Nike" width="200" height="200"></center>
  </center>
</body>
</html>
