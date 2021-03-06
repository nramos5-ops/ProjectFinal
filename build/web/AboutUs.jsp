<%-- 
    Document   : AboutUs
    Created on : Jun 22, 2021, 6:36:48 PM
    Author     : carlosdelcarpio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="Description" content="ThriftCave">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- css -->
        <link rel="stylesheet" href="Styles.css">
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script src="Ramos-Script.js"></script>
        <title>About Us</title>
    </head>

    <body>
        <header>
            <nav class="StoreLogo">
                <!--Navigation Bar-->
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
                <h1>About us</h1>
                <div class="aboutus-row">
                    <div class="aboutus-column">
                        <img src="Images/aboutus.jpg" alt="WorkInProgress" class="aboutus-image">
                    </div>
                </div>
                

                <div class="aboutus-row"> 
                    <p class="aboutus-text">
                        We are a small company based off of Swannanoa, North Carolina. 
                        We love our community very much and are actively involved in making our community a better place.

                        The company was established to make thrifting different then what it is originally and we hope that 
                        everyone can find the joy of thrifting from the comfort of their homes!

                        We accept donation of any kind and take what you don't want and repurpose them for others. 
                        The company is ever expanding and the goal is to have a hubs for you to donate in every major city in North Carolina. 
                        The idea is we have an online thrift store where you can shop and we ship them directly to you.
                    </p>
                </div>
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