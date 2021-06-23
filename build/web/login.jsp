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
        <title>JSP Page</title>
        
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
                    <label>Username:  </label>
                    <input type="text" name="name"><br>
                    <label>Password:  </label>
                    <input type="password" name="password"><br>
                    <input type ="submit" name="submit" value="Submit">
                </form>
                
                <a href="register.jsp">register now</a>
            </div> 
        </main>
    </body>
</html>