<%-- 
    Document   : FAQ
    Created on : Jun 22, 2021, 6:46:59 PM
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
        <link rel="stylesheet" href="jquery-ui.min.css">
        <link href="jquery-ui-1.12.1.custom/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
        <title>ThriftCave</title>

        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script src="jquery-ui.min.js"></script>
        <script src="JsScript.js"></script>
    </head>

    <body>
        <header>
            <nav class="StoreLogo">
                <img src="Thrift.png" alt="Logo">

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
                <h1>Frequently Asked Question</h1>
                <p>Here are some of the questions that our customers have asked us in the past to help you the user getting around the website and how it works.</p>
                
                <div id="accordion">
                    <h3>Since this is an online thrift store how does one donate stuff?</h3>
                    
                    <div>
                        <p>That is an excellent question! So there are two ways our donors can go about delivering and item. First way is the simplest way which is 
                            you come by one of our locations and drop it off. The second way is for one of our pick up services to come by and pick up the donation!</p>
                        <p>We are currently in the works of getting donations shipped to us in which we will pay for the shipping! Stay tune for that!</p>
                    </div>
                    
                    <h3>How does one thrift online?</h3>
                    
                    <div>
                        <p>One of the ways we made it possible to thrift online is quite simple. We made the website easy for our customers to browse the online store 
                           from a wide selection of items donated to us. In fact it is no different from walking an aisle at a thrift store and picking it up, it truly
                           is as simple as that! 
                        </p>
                        <p>We also have a featured product for customers to view. This is more or less a special finds but you have to be quick with these because they will go fast!</p>
                    </div>

                    <h3>What are the return policies like?</h3>
                    
                    <div>
                        <p>Since we are an online store we do offer returns for selected items. For example clothes will have a 14 day return policy starting from 
                            the time the package arrives. We give our customers enough time to try out the clothes they receive and make sure they fit and met to expectations.
                            We make sure that all items that are donated are in great condition in order to be sold.
                        </p>
                        <p>As for other items we do not offer a return policy. That being said we make sure that donation we get are in working conditions for example all electronics
                            will be tested thoroughly by our service technicians in order to be sold. This return policy applies to other items such as appliances and furniture.
                            There is one expectations if an item arrives damage then we would gladly refund your money no questions asked!
                        </p>
                    </div>

                    <h3>Does Thrift Cave only operate in the state of North Carolina?</h3>
                    
                    <div>
                        <p>At the moment yes we do only operate in the state of North Carolina but does not mean we plan on for it to be that way. We hope to grow the company
                            to others states and ultimately do international orders!
                        </p>Ways we are improving on this is opening up more Hubs that operate as drop off points as well as points for our drivers to pick up orders and deliver those items.
                        As we get more locations open we can start to open places outside of the state for more people to access our store!
                        <p>
                    </div>
                </div>
            </div>
        </main>

        <footer>
            <a href="index.jsp">Home</a>
            <a href="ContactUs.jsp">Contact</a>
        </footer>
    </body>
</html>