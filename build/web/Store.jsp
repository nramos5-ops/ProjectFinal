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

        <!-- css -->
        <link rel="stylesheet" href="Styles.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="JsScript.js"></script>
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
                <h1>Shop</h1>

                <div class="row"> 
                    <div class="col">
                        <img src="s-l500.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Pokemon Platinum</h3>
                        <p>$35.00</p>
                    </div>
                    <div class="col">
                        <img src="psvita.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>PlayStation Vita</h3>
                        <p>$80.00</p>
                    </div>
                    <div class="col">
                        <img src="NikeAirJordan.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Jordan Shoes</h3>
                        <p>$30.00</p>
                    </div>
                    <div class="col">
                        <img src="couch.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Couch</h3>
                        <p>$50.00</p>
                    </div>
                </div>

                <div class="row"> 
                    <div class="col">
                        <img src="Cap&Thanos.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Pearler Figures</h3>
                        <p>$5.00</p>
                    </div>
                    <div class="col">
                        <img src="UNCCJacket.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>UNCC Jacket</h3>
                        <p>$5.00</p>
                    </div>
                    <div class="col">
                        <img src="tennisRacquet.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Tennis Racquet</h3>
                        <p>$15.00</p>
                    </div>
                    <div class="col">
                        <img src="KitchenAid.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>KitchenAid Mixer</h3>
                        <p>$25.00</p>
                    </div>
                </div>

                <div class="row"> 
                    <div class="col">
                        <img src="heater.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Mr. Heater</h3>
                        <p>$12.00</p>
                    </div>
                    <div class="col">
                        <img src="drone.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>HolyStone Drone</h3>
                        <p>$20.00</p>
                    </div>
                    <div class="col">
                        <img src="blackDress.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Black Dress</h3>
                        <p>$6.00</p>
                    </div>
                    <div class="col">
                        <img src="BrownShoes.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Brown Shoes</h3>
                        <p>$5.00</p>
                    </div>
                </div>

                <div class="row"> 
                    <div class="col">
                        <img src="beats.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Beats Pro</h3>
                        <p>$50.00</p>
                    </div>
                    <div class="col">
                        <img src="ipadPro.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Ipad Pro</h3>
                        <p>$100.00</p>
                    </div>
                    <div class="col">
                        <img src="Superman.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Superman Action Figure</h3>
                        <p>$5.00</p>
                    </div>
                    <div class="col">
                        <img src="Saw.jpg" alt="WorkInProgress" style="width: 100%">
                        <h3>Electric Saw</h3>
                        <p>$25.00</p>
                    </div>
                </div>

                <div id="deals"></div>   

                <button type="button" class="scroll-top">Click to scroll to top</button>
            </div>    
        </main>

        <footer>
            <a href="index.jsp">Home</a>
            <a href="ContactUs.jsp">Contact</a>
        </footer>
    </body>
</html>