<%-- 
    Document   : updatestd
    Created on : Oct 9, 2020, 10:43:32 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%
 String driver = "com.mysql.jdbc.Driver";
 String connUrl = "jdbc:mysql://localhost:3306/";
 String database = "attendance";
 String username = "root";
 String password = "";
 try {
 Class.forName(driver);
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs = null;
 String idstudent = request.getParameter("idstudent");
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "SELECT * FROM student WHERE idstudent = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idstudent);
 rs = stmt.executeQuery();
 rs.next();
 } catch (Exception e) {
 e.printStackTrace();
 }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
         <style> 
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
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #676363;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #ffc107;
}
div {
  width:800px;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
.center{
    margin: auto;
}
 </style>
 </head>
 <body bgcolor="EE8E22">
  <center><img src="head-logo.png" alt="Nike" width="380" height="100"></center>
     <ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="student.jsp">Student</a></li>
  <li><a href="registerstd.jsp">Register Student</a></li>
  <li><a href="teacher.jsp">Teacher</a></li>
  <li><a href="register.jsp">Register Teacher</a></li>
  <li style="float:right"><a href="#about">Log out</a></li>
</ul>
    </head>
    <center>
     <h1>Update Students</h1>
    </center>
 <div class="center">
  <form action="update-processstd.jsp" method="post">
  <input type="hidden" name="idstudent" value="<%=idstudent%>">
    
    <label for="fname">Name</label>
    <input type="text" id="nama" name="nama" 
    required value="<%=rs.getString("nama")%>">

    <label for="lname">IC Number</label>
    <input type="text" id="icnumber" name="icnumber" 
    required value="<%=rs.getString("icnumber")%>">
    
    <label for="lname">Class</label>
    <input type="text" id="class" name="class" 
    required value="<%=rs.getString("class")%>">
    
    <label for="lname">Card UID</label>
    <input type="text" id="card_uid" name="card_uid" 
    required value="<%=rs.getString("card_uid")%>">
    
    <input type="submit" value="Update">
 </form>
 </div>
</html>
