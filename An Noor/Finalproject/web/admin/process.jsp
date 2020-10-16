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
 String usernama = request.getParameter("username");
 String password1 = request.getParameter("password");
 String nama = request.getParameter("nama");
 String telefon = request.getParameter("telefon");
 String email = request.getParameter("email");
 String class1 = request.getParameter("class");
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "INSERT INTO teacher VALUES (null, ?, ?, ?, ?)";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, usernama);
 stmt.setString(2, password1);
 stmt.setString(3, nama);
 stmt.setString(4, telefon);
 stmt.setString(5, email);
 stmt.setString(6, class1);
 stmt.executeUpdate();
 response.sendRedirect("teacher.jsp");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>
