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
 String nama = request.getParameter("nama");
 String icnum = request.getParameter("icnumber");
 String class1 = request.getParameter("class");
 String carduid = request.getParameter("card_uid");
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "INSERT INTO student VALUES (null, ?, ?, ?, ?)";
 stmt = conn.prepareStatement(sql);
 stmt.setString(3, nama);
 stmt.setString(4, icnum);
 stmt.setString(5, class1);
 stmt.setString(6, carduid);
 stmt.executeUpdate();
 response.sendRedirect("index.jsp");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>
