<%-- 
    Document   : login
    Created on : Jun 22, 2021, 8:33:09 PM
    Author     : super
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="stylesheet" href="Styles.css"/>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>JSP Page</title>
        
    </head>
    <body>
        <header>
            <nav class="StoreLogo">
                <img src="Thrift.png" alt="Logo">

                <ul class="NavigationBar">
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                </ul>
            </nav>
        </header>
        
        <main>
            <div class="content">
                <form method="post" action="/ProjectFinal/uservalidation?action=login">
                    <label>Username:</label>
                    <input type="text" name="username"><br>
                    
                    <label>Password:</label>
                    <input type="password" name="password"><br>
                    
                    <label>Admin</label>
                    <input type="checkbox" name='admin' value="1"/><br><br> 
                    
                    <p>${errorMessage}</p>
                    
                    <input type ="submit" name="submit" value="Submit">
                </form>
                
                <a href="register.jsp">Register now</a>
            </div> 
        </main>
    </body>
</html>