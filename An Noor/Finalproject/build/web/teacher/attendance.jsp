<%-- 
    Document   : attendance
    Created on : Oct 5, 2020, 8:17:18 PM
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
 Statement stmt = null;
 ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Students Attendance</title>
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
          table {
  border-collapse: collapse;
  width: 90%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #737CA1;
  color: white;
}
 </style>
 </head>
 <body bgcolor="EE8E22" style="text-align: center;">
  <center><img src="head-logo.png" alt="Nike" width="380" height="100"></center>
     <ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="attendance.jsp">Attendance</a></li>
  <li><a href="student.jsp">Student</a></li>
  <li><a href="register.jsp">Register Student</a></li>
  <li style="float:right"><a href="#about">Log out</a></li>
</ul>
  <h1>Student Attendance</h1>
  <center>
  <button>Export to Excel</button>
  
 <table border="1">
 <tr>
 <th style="width:5%">Bil</th>
 <th style="width:30%">Name</th>
 <th style="width:30%">IC Number</th>
 <th>Class</th>
 <th>Card UID</th>
 <th>Date</th>
 </tr>
 <%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 stmt = conn.createStatement();
 String sql = "SELECT * FROM student_logs ORDER BY nama";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %>
 <tr>
 <td><%=bil++%></td>
 <td><%=rs.getString("nama")%></td>
 <td><%=rs.getString("icnumber")%></td>
 <td><%=rs.getString("class")%></td>
 <td><%=rs.getString("card_uid")%></td>
 <td><%=rs.getString("checkindate")%></td>
 </tr>
 <%
 }
 } catch (Exception e) {
 e.printStackTrace();
 }
 %>
 </table>
 </center>
 </body>
</html>
