<%-- 
    Document   : ContactUs
    Created on : Jun 22, 2021, 6:40:07 PM
    Author     : carlosdelcarpio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="Description" content="Website for ThriftCave.">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- css -->
        <link rel="stylesheet" href="Styles.css">
        <title>Contact Us</title>
    </head>

    <body>
        <header>
            <!--Navigation Bar-->
            <nav class="StoreLogo">
                <img src="Images/Thrift.png" alt="Logo">

                <ul class="NavigationBar">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="/ProjectFinal/products">Store</a></li>
                    <c:choose>
                        <c:when test="${admin == 'admin'}">
                            <li><a href="/ProjectFinal/contactList">Contact</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="ContactUs.jsp">Contact</a></li>
                        </c:otherwise>
                    </c:choose>
                    <li><a href="AboutUs.jsp">About</a></li>
                    <li><a href="FAQ.jsp">FAQ</a></li>
                    <li><a href="/ProjectFinal/logout">Logout</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <div class="content">
                <h1>Thank you for contacting us</h1><br>
                
                <h2>One of our administrators will reach out to you in 24-48hrs</h2>
            </div>
        </main>

        <footer>
            <a href="index.jsp">Home</a>
            <c:choose>
                <c:when test="${admin == 'admin'}">
                    <a href="/ProjectFinal/contactList">Contact</a>
                </c:when>
                <c:otherwise>
                    <a href="ContactUs.jsp">Contact</a>
                </c:otherwise>
            </c:choose>
        </footer>
    </body>
</html>