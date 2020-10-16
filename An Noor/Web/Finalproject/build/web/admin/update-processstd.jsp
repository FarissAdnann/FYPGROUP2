<%-- 
    Document   : update-processstd
    Created on : Oct 9, 2020, 10:42:43 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
 String driver = "com.mysql.jdbc.Driver";
 String connUrl = "jdbc:mysql://localhost:3306/";
 String database = "attendance";
 String username = "root";
 String password = "";
 Connection conn = null;
 PreparedStatement stmt = null;
 String idstudent = request.getParameter("idstudent");
 String nama = request.getParameter("nama");
 String icnum = request.getParameter("icnumber");
 String class1 = request.getParameter("class");
 String carduid = request.getParameter("card_uid");
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "UPDATE student SET nama = ?, icnumber = ?, class = ?, card_uid = ? WHERE idstudent = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, nama);
 stmt.setString(2, icnum);
 stmt.setString(3, class1);
 stmt.setString(4, carduid);
 stmt.setString(5, idstudent);
 stmt.executeUpdate();
 response.sendRedirect("index.jsp");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>
