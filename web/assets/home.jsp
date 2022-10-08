<%-- 
    Document   : home
    Created on : Oct 6, 2022, 10:42:07 PM
    Author     : Dewmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Phoenix Airline PVT - Chathura & Members</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--========== BOX ICONS ==========-->
        <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css' rel='stylesheet'>
        <!--========== login ICONS ==========-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!--========== CSS ==========-->
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" type="text/css" href="assets/css/homestyle.css">
        <link rel="stylesheet" href="assets/css/clock.css">
        <link rel="stylesheet" href="assets/css/destination.css">
        <link rel="stylesheet" href="assets/css/ticketbooking.css">

        <title>Responsive web site food</title>
    </head>
    <body>

        <!--========== SCROLL TOP ==========-->
        <a href="#" class="scrolltop" id="scroll-top">
            <i class='bx bx-chevron-up scrolltop__icon'></i>
        </a>

        <!--========== HEADER ==========-->
        <header class="l-header" id="header">
            <nav class="nav bd-container">
                <img src="images/PHOENIX_AIR.jpg" alt="Air way" style="width:70px;height:70px;">
                <a href="" class="nav__logo">Phoenix Air</a>
                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item"><a href="" class="nav__link active-link">Home</a></li>
                        <li class="nav__item"><a href="about/index.html" class="nav__link">About</a></li>
                        <li class="nav__item"><a href="contact/index.html" class="nav__link">Contact us</a></li>
                        <li class="nav__item"><a href="bio/index.html" class="nav__link">Profile</a></li>
                        <li class="nav__item"><a href="" class="nav__link">Profile </a><i class="material-icons">person_add</i>
                        <li><i class='bx bx-moon change-theme' id="theme-button"></i></li>
                    </ul>
                </div>

                <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bx-menu'></i>
                </div>
            </nav>
        </header>

        <main class="l-main">
            <!--========== HOME ==========-->
            <section class="home" id="home">
                <div class="slider">
                    
        <div class="slide active" style="background-image: url('images/slide-1.jpg')">
            <div class="container">
                <div class="caption">
                    <h1>Welcome to Phoenix Air</h1>
                    <a href="admin/Userdash.jpg">Book Now</a>-->
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: url('images/slide-2.jpg')">
            <div class="container">
                <div class="caption">
                    <h1>Let us take care of you all the way</h1>
                    <!--<a href="">Book Now</a>-->
                </div>
            </div>
        </div>
        <div class="slide" style="background-image: url('images/slide-3.jpg')">
            <div class="container">
                <div class="caption">
                    <h1>Travel with us all around the world</h1>
                    <!--<a href="">Book Now</a>-->
                </div>
            </div>
        </div>
     </div>
   
    <!-- controls  -->
    <div class="controls">
        <div class="prev"><</div>
        <div class="next">></div>
    </div>

    <!-- indicators -->
    <div class="indicator">
    </div>
    <script src="assets/js/homescript.js"></script>
            </section>

            <a class="weatherwidget-io" href="https://forecast7.com/en/40d71n74d01/new-york/" data-label_1="NEW YORK" data-label_2="WEATHER" data-theme="original" >NEW YORK WEATHER</a>
<script>
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
</script>
            
            <!--========== ABOUT ==========-->
            <section class="about section bd-container" id="about">
                <div class="about__container  bd-grid">
                    <div class="about__data">
    

                        <div class="ticketbooking">

                            <div class="container">
    <div class="content">
      <form action="bookingnow" method="POST">
        <div class="user-details" id="style-7">

            <div class="input-box2">
                <span class="details">Full Name</span>
                <input type="text" placeholder="Enter your fullname" name="fullname" id="fullname" required>
            </div>

            <div class="input-box2">
                <span class="details">Email</span>
                <input type="text" placeholder="Enter your email" name="email" id="email" required>
            </div>

            <div class="input-box2">
                <span class="details">Address</span>
                <input type="text" placeholder="Enter your address" name="address" id="address" required>
            </div>

            <div class="input-box2">
                <span class="details">Date of Birth</span>
                <input type="date" placeholder="Enter your date of birth" name="dob" id="dob" >
            </div>

            <div class="input-box">
                <span class="details">FLYING FROM</span>
                <input type="text" placeholder="City Or Airport" name="flyingfrom" id="flyingfrom" required>
            </div>

            <div class="input-box">
                <span class="details">FLYING TO</span>
                <input type="text" placeholder="City Or Airport" name="flyingto" id="flyingto" required>
            </div>

            <div class="input-box">
                <span class="details">DEPARTING</span>
                <input type="date" placeholder="Enter your email" name="departing" id="departing" required>
            </div>

            <div class="input-box">
                <span class="details">RETURNING</span>
                <input type="date" placeholder="Enter your number"  name="returning" id="returning" required>
            </div>
        
        </div>
         

        <div class="button01">
          <input type="submit" value="Booking">
        </div>
          
      </form >
       
    </div>
</div>

                    </div>
                    </div>

                    <div class="about__img">

                        <div class="calendaretc">
                        <div class="light">

    <div class="calendar">
        <div class="calendar-header">
            <span class="month-picker" id="month-picker">February</span>
            <div class="year-picker">
                <span class="year-change" id="prev-year">
                    <pre><</pre>
                </span>
                <span id="year">2021</span>
                <span class="year-change" id="next-year">
                    <pre>></pre>
                </span>
            </div>
        </div>
        <div class="calendar-body">
            <div class="calendar-week-day">
                <div>Sun</div>
                <div>Mon</div>
                <div>Tue</div>
                <div>Wed</div>
                <div>Thu</div>
                <div>Fri</div>
                <div>Sat</div>
            </div>
            <div class="calendar-days"></div>
        </div>
        <!--<div class="calendar-footer">
            <div class="toggle">
                <span>Dark Mode</span>
                <div class="dark-mode-switch">
                    <div class="dark-mode-switch-ident"></div>
                </div>
            </div>
        </div>-->
        <div class="month-list"></div>
    </div>
</div>
                    </div>
                </div>
                <script src="assets/js/clock.js"></script>
            </section>

            <!--========== SERVICES ==========-->
            <section class="services section bd-container" id="services">
                <span class="section-subtitle">Offering|Special</span>
                <h2 class="section-title">Most Popular Destination</h2>

                <div class="services__container  bd-grid">
                    <div class="services__content">
                       
                    </div>
                </div>
            </section>

            <!--========== travel ==========-->
             <section class="product"> 
        <button class="pre-btn"><img src="images/arrow.png" alt=""></button>
        <button class="nxt-btn"><img src="images/arrow.png" alt=""></button>
        <div class="product-container">
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/9arch.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Thailand</h2>
                    <p class="product-short-description">Celebrate the Vesak in Thailand</p>
                    <span class="price">$250</span><span class="actual-price">$500</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">25% off</span>
                    <img src="images/9arch1.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Sri Lanka</h2>
                    <p class="product-short-description">2021 Best destination</p>
                    <span class="price">$375</span><span class="actual-price">$500</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/japan.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Japan</h2>
                    <p class="product-short-description">a short line about the cloth..</p>
                    <span class="price">$220</span><span class="actual-price">$440</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/paris.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Paris</h2>
                    <p class="product-short-description">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/bali.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Bali</h2>
                    <p class="product-short-description">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/india.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">India</h2>
                    <p class="product-short-description">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/london.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">London</h2>
                    <p class="product-short-description">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/dubai.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Dubai</h2>
                    <p class="product-short-description">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/africa.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Africa</h2>
                    <p class="product-short-description">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="images/rome.jpg" class="product-thumb" alt="">
                    <button class="card-btn">add to wishlist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Rome</h2>
                    <p class="product-short-description">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
        </div>
        <script src="assets/js/destination.js"></script>
    </section>
            <!--<section class="country section bd-container" id="menu">
                
            </section>-->

            <!--========== CONTACT US ==========-->
            <section class="contact section bd-container" id="contact">
                <div class="contact__container bd-grid">
                    <div class="contact__data">
                        <span class="section-subtitle contact__initial">Let's talk</span>
                        <h2 class="section-title contact__initial">Contact us</h2>
                        <p class="contact__description">Upgrade or save up to 20% when you purchase extra baggage, lounge access or meet and assist services online to make your journey even more memorable.</p>
                    </div>

                    <div class="contact__button">
                        <a href="contact/index.html" class="button">Contact us now</a>
                    </div>
                </div>
            </section>
        </main>

        <!--========== FOOTER ==========-->
        <footer class="footer section bd-container">
            <div class="footer__container bd-grid">
                <div class="footer__content">
                    <a href="#" class="footer__logo">Phoenix Air</a>
                    <div class="footerlogo">
                    <img src="images/flight_air.png" alt="Air way">
                    </div>
                    <div>
                        <a href="#" class="footer__social"><i class='bx bxl-facebook'></i></a>
                        <a href="#" class="footer__social"><i class='bx bxl-instagram'></i></a>
                        <a href="#" class="footer__social"><i class='bx bxl-twitter'></i></a>
                        <a href="#" class="footer__social"><i class='bx bxl-skype'></i></a>

                    </div>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">Services</h3>
                    <ul>
                        <li><a href="#" class="footer__link">Cargo</a></li>
                        <li><a href="#" class="footer__link">Sponsership</a></li>
                        <li><a href="#" class="footer__link">Discover Corporate Clubs</a></li>
                        <li><a href="#" class="footer__link">Mobile application</a></li>
                    </ul>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">Information</h3>
                    <ul>
                       
                        <li><a href="contact/index.html" class="footer__link">Contact us</a></li>
                        <li><a href="privacy/policy.html" class="footer__link">Privacy policy</a></li>
                        <li><a href="term/terms and conditions template 01.pdf" class="footer__link">Terms of services</a></li>
                    </ul>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">About</h3>
                    <ul>
                        <li><a href="about/index.html" class="footer__link">About us</a></li>
                    </ul>
                    
                </div>
            </div>

            <p class="footer__copy">&#169; Chathura & Group Members All right reserved</p>
        </footer>

        <!--========== SCROLL REVEAL ==========-->
        <script src="https://unpkg.com/scrollreveal"></script>

        <!--========== MAIN JS ==========-->
        <script src="assets/js/main.js"></script>
        <script src="assets/js/ticketbooking.js"></script>
    </body>
</html>
