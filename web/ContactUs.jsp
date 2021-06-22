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

        <!-- css -->
        <link rel="stylesheet" href="Styles.css">
        <title>ThriftCave</title>
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
                <h1>Contact us</h1>
                <p>If you need help with anything please feel free to let us know how we can help you whether that be through phone or email</p>

                <form>
                    <div class="inputinfo">
                        <label>Name: </label>
                        <input type="text">
                    </div>

                    <div class="inputinfo">
                        <label>Phone Number: </label>
                        <input type="text">
                    </div>

                    <div class="inputinfo">
                        <label>Email: </label>
                        <input type="text">
                    </div>

                    <div class="inputinfo">
                        <label>Message: </label>
                        <input type="text">
                    </div>

                    <input type="submit" value="Submit">
                </form>
            </div>
        </main>

        <footer>
            <a href="index.jsp">Home</a>
            <a href="ContactUs.jsp">Contact</a>
        </footer>
    </body>
</html>