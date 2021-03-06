<%-- 
    Document   : Store
    Created on : Jun 22, 2021, 6:41:42 PM
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
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

        <!-- css -->
        <link rel="stylesheet" href="Styles.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="JsScript.js"></script>
        <title>Store</title>
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
                <h1>Shop</h1>
                
                <c:choose>
                    <c:when test="${products.size() > 0}">
                        <c:forEach var="product" items="${products}" varStatus="loop">
                            <c:if test="${loop.index % 4 == 0}">
                                <div class="row">
                            </c:if>

                                <div class ="col">
                                    <img src="${product.imagePath}" alt="WorkInProgress">
                                    <h3>${product.name}</h3>
                                    <p><fmt:formatNumber value = "${product.price}" type = "currency"/></p>

                                    <c:if test="${admin == 'admin'}">   
                                        <form action="removeProduct?id=${product.ID}" method="post">
                                            <input type ="submit" name="submit" value="Remove">
                                        </form>
                                    </c:if>
                                </div>

                            <c:if test="${((loop.index + 1) % 4 == 0) || ((loop.index + 1) == products.size())}">
                                </div>
                            </c:if>
                        </c:forEach>  

                        <button type="button" class="scroll-top">Click to scroll to top</button>
                    </c:when>
                    
                    <c:otherwise>
                        <br><h2>Come back soon to see new items</h2>
                    </c:otherwise>
                </c:choose> 
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