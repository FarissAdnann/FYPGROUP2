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
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "DELETE FROM student WHERE idstudent = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idstudent);
 stmt.executeUpdate();
 response.sendRedirect("index.jsp");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>