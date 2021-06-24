<%-- 
    Document   : register
    Created on : Jun 22, 2021, 9:18:16 PM
    Author     : super
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="stylesheet" href="Styles.css"/>
        <title>Register</title>
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
                <form action="/ProjectFinal/uservalidation?action=register" method="post">
                    <label>First name:  </label>
                    <input type="text" name="firstName"><br>
                    
                    <label>Last name:  </label>
                    <input type="text" name="lastName"><br>
                    
                    <label>Username:  </label>
                    <input type="text" name="username"><br>
                    
                    <label>Password:  </label>
                    <input type="password" name="password"><br>
                    
                    <p>${errorMessage}</p>
                    
                    <input type ="submit" name="submit" value="Submit">
                </form>
                
                <a href="login.jsp">Already a user?</a>
             </div> 
        </main>
    </body>
</html>