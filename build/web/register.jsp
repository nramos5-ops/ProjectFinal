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
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="Store.jsp">Store</a></li>
                    <li><a href="ContactUs.jsp">Contact</a></li>
                    <li><a href="AboutUs.jsp">About</a></li>
                    <li><a href="FAQ.jsp">FAQ</a></li>
                </ul>
            </nav>
        </header>
        
        <main>
            <div class="content">
                <form action="membership?action=profile" method="POST">
                    <label>First name:  </label>
                    <input type="text" name="firstName"><br>
                    <label>Last name:  </label>
                    <input type="text" name="LastName"><br>
                    <label>Username:  </label>
                    <input type="text" name="usertName"><br>
                    <label>Password:  </label>
                    <input type="password" name="password"><br>
                    <label>admin:  </label>
                    <input type="checkbox" name="admin"><br>
                    <input type ="submit" name="submit" value="Submit">
                </form>
                
                <a href="login.jsp">Already a user?</a>
             </div> 
        </main>
    </body>
</html>