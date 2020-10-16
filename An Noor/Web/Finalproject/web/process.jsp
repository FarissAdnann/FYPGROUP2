<%-- 
    Document   : process
    Created on : Sep 30, 2020, 11:49:37 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<% String driver = "com.mysql.jdbc.Driver";
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
    String idteacher = request.getParameter("idteacher");
    conn = DriverManager.getConnection(connUrl + database, username, password);
    String sql = "SELECT * FROM admin";
    stmt = conn.prepareStatement(sql);
    rs = stmt.executeQuery();
    rs.next();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
    </head>
    <body>
        <%
            String idpengguna = request.getParameter("username");
            String katalaluan = request.getParameter("password");
            
            String strkatalaluan = rs.getString("admin");

            if (!idpengguna.equals("admin")) {
                
                sql = "SELECT * FROM teacher WHERE username = ? AND password = ?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, idpengguna);
                stmt.setString(2, katalaluan);
                rs = stmt.executeQuery();
                rs.next();
                if (rs.getRow() == 1) {
                    response.sendRedirect("teacher/index.jsp?idteacher=" + rs.getString("idteacher"));
                } else {
                    sql = "SELECT * FROM customer WHERE username = ? AND password = ?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setString(1, idpengguna);
                    stmt.setString(2, katalaluan);
                    rs = stmt.executeQuery();
                    rs.next();
                    
                    if (rs.getRow() == 1) {
                        response.sendRedirect("customer/index.jsp?idcustomer=" + rs.getString("idcustomer"));
                    } else {
                        %>
                        <script>
                            alert("invalid Username & Password");
                            window.location = 'index.jsp';
                        </script>
                        <% 
                    }
                    
                }
                
            } else if (!katalaluan.equals(strkatalaluan)) {
                %>
                <script>
                    alert("invalid Username & Password");
                    window.location = 'index.jsp';
                </script>
                <%
            } else {
                response.sendRedirect("admin/index.jsp");
            }
        %>
    </body>
</html>
