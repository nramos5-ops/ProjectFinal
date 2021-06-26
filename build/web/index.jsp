<%-- 
    Document   : index
    Created on : Jun 22, 2021, 6:33:26 PM
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
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>
        <script src="JsScript.js"></script>
        <title>ThriftCave</title>
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
            <div class="Welcome-text">
                <h1>Welcome to Thrift Cave!</h1>
                <p>This is a place where you can shop to your hearts content! We offer a wide variety of items
                    such as clothes, furniture, sporting equipment and much more! If you stop by the right day you
                    might even find something rare at an unbeatable price! So come on and feel free to browse around!
                </p>
            </div>

            <div class="featured">
                <h1>Featured products</h1>
                <div class="slider">
                    <ul id="slider">
                        <li><img src="Images/pokemonPlatinum.jpg" alt="" title="Pokemon Platinum"></li>
                        <li><img src="Images/Cap&Thanos.jpg" alt="" title="Captian America and Thanos"></li>
                        <li><img src="Images/KitchenAid.jpg" alt="" title="KitchenAid Mixer"></li>
                        <li><img src="Images/psvita.jpg" alt="" title="PlayStation Vita"></li>
                    </ul>
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