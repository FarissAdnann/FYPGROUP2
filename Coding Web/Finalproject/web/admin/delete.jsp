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
 String idteacher = request.getParameter("idteacher");
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "DELETE FROM teacher WHERE idteacher = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idteacher);
 stmt.executeUpdate();
 response.sendRedirect("teacher.jsp");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>
