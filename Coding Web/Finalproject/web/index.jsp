<%-- 
    Document   : index
    Created on : Sep 30, 2020, 10:32:33 AM
    Author     : USER
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
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
    <center><img src="head-logo.png" alt="Nike" width="380" height="100"></center>
    <hr>
    <style>
        body{
    margin: 0;
    padding: 0;
    background: #BCC6CC;
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}

.loginbox{
    width: 320px;
    height: 420px;
    background: #000;
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}

.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}

.loginbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input{
    width: 100%;
    margin-bottom: 20px;
}

.loginbox input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: white;
    outline: none;
    height: 40px;
    color: black;
    font-size: 16px;
}
.loginbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #676363;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background: #ffc107;
    color: #000;
}
.loginbox a{
    text-decoration: none;
    font-size: 12px;
    line-height: 20px;
    color: darkgrey;
}

.loginbox a:hover
{
    color: #ffc107;
}



    </style>
<title>Log in</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script type="text/javascript">
            function validate(){
            var uname=document.myForm.username.value;
            if(uname==""){
                    alert("Please enter username");
                    document.myForm.username.focus();
                    return false;
                }
                var password=document.myForm.password.value;
                var illegalChar=/[\w_]/;
                if(password==""){
                    alert("Please enter password");
                    document.myForm.password.focus();
                    return false;
                }
            }
    </script>
<body>
    <form name="myForm" method="post" action="process.jsp">
    <div class="loginbox">
        <h1>Login Here</h1>
        <form>
            <p>Username</p>
            <input type="text" name="username" class="form-control" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="password" class="form-control" placeholder="Enter Password">
            <input type="submit" name="action" onClick="return validate();" value="Log in">
        </form>
        
    </div>

</body>
</head>
</html>
