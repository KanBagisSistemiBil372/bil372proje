<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com -->
    <title>Bootstrap Theme Company Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
        }
        h2 {
            font-size: 24px;
            text-transform: uppercase;
            color: #303030;
            font-weight: 600;
            margin-bottom: 30px;
        }
        h4 {
            font-size: 19px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
        }
        .jumbotron {
            background-color: #f4511e;
            color: #fff;
            padding: 100px 25px;
            font-family: Montserrat, sans-serif;
        }
        .container-fluid {
            padding: 60px 50px;
        }
        .bg-grey {
            background-color: #f6f6f6;
        }
        .logo-small {
            color: #f4511e;
            font-size: 50px;
        }
        .logo {
            color: #f4511e;
            font-size: 200px;
        }
        .thumbnail {
            padding: 0 0 15px 0;
            border: none;
            border-radius: 0;
        }
        .thumbnail img {
            width: 100%;
            height: 100%;
            margin-bottom: 10px;
        }
        .carousel-control.right, .carousel-control.left {
            background-image: none;
            color: #f4511e;
        }
        .carousel-indicators li {
            border-color: #f4511e;
        }
        .carousel-indicators li.active {
            background-color: #f4511e;
        }
        .item h4 {
            font-size: 19px;
            line-height: 1.375em;
            font-weight: 400;
            font-style: italic;
            margin: 70px 0;
        }
        .item span {
            font-style: normal;
        }
        .panel {
            border: 1px solid #f4511e;
            border-radius:0 !important;
            transition: box-shadow 0.5s;
        }
        .panel:hover {
            box-shadow: 5px 0px 40px rgba(0,0,0, .2);
        }
        .panel-footer .btn:hover {
            border: 1px solid #f4511e;
            background-color: #fff !important;
            color: #f4511e;
        }
        .panel-heading {
            color: #fff !important;
            background-color: #f4511e !important;
            padding: 25px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 0px;
            border-top-right-radius: 0px;
            border-bottom-left-radius: 0px;
            border-bottom-right-radius: 0px;
        }
        .panel-footer {
            background-color: white !important;
        }
        .panel-footer h3 {
            font-size: 32px;
        }
        .panel-footer h4 {
            color: #aaa;
            font-size: 14px;
        }
        .panel-footer .btn {
            margin: 15px 0;
            background-color: #f4511e;
            color: #fff;
        }
        .navbar {
            margin-bottom: 0;
            background-color: #f4511e;
            z-index: 9999;
            border: 0;
            font-size: 12px !important;
            line-height: 1.42857143 !important;
            letter-spacing: 4px;
            border-radius: 0;
            font-family: Montserrat, sans-serif;
        }
        .navbar li a, .navbar .navbar-brand {
            color: #fff !important;
        }
        .navbar-nav li a:hover, .navbar-nav li.active a {
            color: #f4511e !important;
            background-color: #fff !important;
        }
        .navbar-default .navbar-toggle {
            border-color: transparent;
            color: #fff !important;
        }
        footer .glyphicon {
            font-size: 20px;
            margin-bottom: 20px;
            color: #f4511e;
        }
        .slideanim {visibility:hidden;}
        .slide {
            animation-name: slide;
            -webkit-animation-name: slide;
            animation-duration: 1s;
            -webkit-animation-duration: 1s;
            visibility: visible;
        }
        @keyframes slide {
            0% {
                opacity: 0;
                transform: translateY(70%);
            }
            100% {
                opacity: 1;
                transform: translateY(0%);
            }
        }
        @-webkit-keyframes slide {
            0% {
                opacity: 0;
                -webkit-transform: translateY(70%);
            }
            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
            }
        }
        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }
            .btn-lg {
                width: 100%;
                margin-bottom: 35px;
            }
        }
        @media screen and (max-width: 480px) {
            .logo {
                font-size: 150px;
            }
        }
    </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#myPage">Logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#kan_iste">KAN ISTE</a></li>
                <li><a href="#services">SERVICES</a></li>
                <li><a href="#portfolio">PORTFOLIO</a></li>
                <li><a href="#pricing">PRICING</a></li>
                <li><a href="#contact">CONTACT</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="jumbotron text-center">
    <h1>Company</h1>
    <form>
        <div class="input-group">
        </div>
    </form>
</div>

<!-- Container (Kan Iste Section) -->
<div id="kaniste" class="container-fluid">
    <div class="row">
        <div class="col-sm-8">
            <h2>Kan Iste</h2><br>
            <h4></h4><br>
            <p>Kan talebi icin hastane ismi, hastane lokasyonu ve miktar(unite cinsinden) seciniz.</p>
            <div class="custom-select" style="width:2000px;">
                <select>
                    <option value="0">Hastane</option>
                    <option value="1">Ankara Ataturk Egitim ve Arastirma Hastanesi</option>
                    <option value="2">Ankara Diskapi Cocuk Hastaliklari Egitim ve Arastirma Hastanesi</option>
                    <option value="3">Ankara Diskapi Yildirim Beyazit Egitim ve Arastirma Hastanesi</option>
                    <option value="4">Ankara Egitim ve Arastirma Hastanesi</option>
                    <option value="5">Ankara Etlik Ihtisas Hastanesi</option>
                    <option value="6">Ankara Fizik Tedavi ve Rehabilitasyon Egitim ve Arastirma Hastanesi	</option>
                    <option value="7">Ankara Gazi Mustafa Kemal Devlet Hastanesi</option>
                    <option value="8">Ataturk Gogus Hastaliklari ve Gogus Cerrahisi Egitim ve Arastirma Hastanesi</option>
                    <option value="9">Ankara Meslek Hastaliklari Hastanesi</option>
                    <option value="10">Ankara Numune Egitim ve Arastirma Hastanesi</option>
                    <option value="11">Ankara Universitesi Tip Fakultesi Hastanesi</option>
                    <option value="12">Ankara Universitesi Tip Fakultesi Cebeci Arastirma ve Uygulama Hastanesi</option>
                    <option value="13">Ankara Universitesi Tip Fakultesi Ibni Sina Arastirma ve Uygulama Hastanesi</option>
                    <option value="14">Ankara Ulucanlar Goz Egitim ve Arastirma Hastanesi</option>
                    <option value="15">Ankara Ulus Devlet Hastanesi</option>
                    <option value="16">Ankara Verem Savas Dernegi Hastanesi</option>
                    <option value="17">Ankara Yenimahalle Yildirim Beyazit Egitim ve Arastirma Hastanesi</option>
                    <option value="18">Ankara 29 Mayis Devlet Hastanesi</option>
                    <option value="19">Akyurt Devlet Hastanesi</option>
                    <option value="20">Ayas Devlet Hastanesi</option>
                    <option value="21">Baskent Universitesi Ankara Hastanesi</option>
                    <option value="22">Beypazari Devlet Hastanesi</option>
                    <option value="23">Büyüksehir Belediye Hastanesi</option>
                    <option value="24">Deri ve Zuhrevi Hastaliklari Hastanesi</option>
                    <option value="25">Dr. Abdurrahman Yurtaslan Ankara Onkoloji Egitim ve Araştirma Hastanesi</option>
                    <option value="26">Dr. Hulusi Alatas Elmadag Devlet Hastanesi</option>
                    <option value="27">Etimesgut Devlet Hastanesi</option>
                    <option value="28">Gazi Universitesi Tip Fakultesi Hastanesi</option>
                    <option value="29">Gazi Universitesi Tip Fakultesi Golbasi Hastanesi</option>
                    <option value="30">Hacettepe Universitesi Tip Fakultesi Hastanesi</option>
                    <option value="31">Hacettepe Universitesi Ihsan Dogramaci Cocuk Hastanesi</option>
                    <option value="32">Kecioren Egitim ve Arastirma Hastanesi</option>
                    <option value="33">Ufuk Universitesi Dr. Ridvan Ege Hastanesi</option>
                </select>
            </div>
            <div class="custom-select" style="width:2000px;">
                <select>
                    <option value="0">Ilce</option>
                    <option value="1">Akyurt</option>
                    <option value="2">Altindag</option>
                    <option value="3">Ayas</option>
                    <option value="4">Bala</option>
                    <option value="5">Beypazari</option>
                    <option value="6">Camlidere</option>
                    <option value="7">Cankaya</option>
                    <option value="8">Cubuk</option>
                    <option value="9">Elmadag</option>
                    <option value="10">Etimesgut</option>
                    <option value="11">Evren</option>
                    <option value="12">Golbasi</option>
                    <option value="13">Gudul</option>
                    <option value="14">Haymana</option>
                    <option value="15">Kalecik</option>
                    <option value="16">Kazan</option>
                    <option value="17">Kecioren</option>
                    <option value="18">Kizilcahamam</option>
                    <option value="19">Gudul</option>
                    <option value="20">Mamak</option>
                    <option value="21">Nallihan</option>
                    <option value="22">Polatli</option>
                    <option value="23">Pursaklar</option>
                    <option value="24">Sincan</option>
                    <option value="25">Sereflikochisar</option>
                    <option value="26">Yenimahalle</option>

                </select>
            </div>
            <div class="custom-select" style="width:2000px;">
                <select>
                    <option value="0 Unite">Miktar</option>
                    <option value="1 Unite">1</option>
                    <option value="2 Unite">2</option>
                    <option value="3 Unite">3</option>
                    <option value="4 Unite">4</option>
                    <option value="5 Unite">5</option>
                    <option value="6 Unite">6</option>
                    <option value="7 Unite">7</option>
                </select>
            </div>
            <br><button class="btn btn-default btn-lg">Istek Gonder</button>
        </div>
        <div class="col-sm-4">

        </div>
    </div>
</div>

<div class="container-fluid bg-grey">
    <div class="row">
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-globe logo slideanim"></span>
        </div>
        <div class="col-sm-8">
            <h2>Our Values</h2><br>
            <h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
            <p><strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>
</div>

<!-- Container (Services Section) -->
<div id="kantakibi" class="container-fluid text-center">
    <h2>SERVICES</h2>
    <h4>What we offer</h4>
    <br>
    <div class="row slideanim">
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-off logo-small"></span>
            <h4>POWER</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-heart logo-small"></span>
            <h4>LOVE</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-lock logo-small"></span>
            <h4>JOB DONE</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
    </div>
    <br><br>
    <div class="row slideanim">
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-leaf logo-small"></span>
            <h4>GREEN</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-certificate logo-small"></span>
            <h4>CERTIFIED</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-wrench logo-small"></span>
            <h4 style="color:#303030;">HARD WORK</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
    </div>
</div>

<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">
    <h2>Portfolio</h2><br>
    <h4>What we have created</h4>
    <div class="row text-center slideanim">
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="paris.jpg" alt="Paris" width="400" height="300">
                <p><strong>Paris</strong></p>
                <p>Yes, we built Paris</p>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="newyork.jpg" alt="New York" width="400" height="300">
                <p><strong>New York</strong></p>
                <p>We built New York</p>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="sanfran.jpg" alt="San Francisco" width="400" height="300">
                <p><strong>San Francisco</strong></p>
                <p>Yes, San Fran is ours</p>
            </div>
        </div>
    </div><br>

    <h2>What our customers say</h2>
    <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <h4>"This company is the best. I am so happy with the result!"<br><span>Michael Roe, Vice President, Comment Box</span></h4>
            </div>
            <div class="item">
                <h4>"One word... WOW!!"<br><span>John Doe, Salesman, Rep Inc</span></h4>
            </div>
            <div class="item">
                <h4>"Could I... BE any more happy with this company?"<br><span>Chandler Bing, Actor, FriendsAlot</span></h4>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
    <div class="text-center">
        <h2>Pricing</h2>
        <h4>Choose a payment plan that works for you</h4>
    </div>
    <div class="row slideanim">
        <div class="col-sm-4 col-xs-12">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                    <h1>Basic</h1>
                </div>
                <div class="panel-body">
                    <p><strong>20</strong> Lorem</p>
                    <p><strong>15</strong> Ipsum</p>
                    <p><strong>5</strong> Dolor</p>
                    <p><strong>2</strong> Sit</p>
                    <p><strong>Endless</strong> Amet</p>
                </div>
                <div class="panel-footer">
                    <h3>$19</h3>
                    <h4>per month</h4>
                    <button class="btn btn-lg">Sign Up</button>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xs-12">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                    <h1>Pro</h1>
                </div>
                <div class="panel-body">
                    <p><strong>50</strong> Lorem</p>
                    <p><strong>25</strong> Ipsum</p>
                    <p><strong>10</strong> Dolor</p>
                    <p><strong>5</strong> Sit</p>
                    <p><strong>Endless</strong> Amet</p>
                </div>
                <div class="panel-footer">
                    <h3>$29</h3>
                    <h4>per month</h4>
                    <button class="btn btn-lg">Sign Up</button>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xs-12">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                    <h1>Premium</h1>
                </div>
                <div class="panel-body">
                    <p><strong>100</strong> Lorem</p>
                    <p><strong>50</strong> Ipsum</p>
                    <p><strong>25</strong> Dolor</p>
                    <p><strong>10</strong> Sit</p>
                    <p><strong>Endless</strong> Amet</p>
                </div>
                <div class="panel-footer">
                    <h3>$49</h3>
                    <h4>per month</h4>
                    <button class="btn btn-lg">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
    <h2 class="text-center">CONTACT</h2>
    <div class="row">
        <div class="col-sm-5">
            <p>Contact us and we'll get back to you within 24 hours.</p>
            <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
            <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
            <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
        </div>
        <div class="col-sm-7 slideanim">
            <div class="row">
                <div class="col-sm-6 form-group">
                    <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                </div>
                <div class="col-sm-6 form-group">
                    <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                </div>
            </div>
            <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
            <div class="row">
                <div class="col-sm-12 form-group">
                    <button class="btn btn-default pull-right" type="submit">Send</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<footer class="container-fluid text-center">
    <a href="#myPage" title="To Top">
        <span class="glyphicon glyphicon-chevron-up"></span>
    </a>
    <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a></p>
</footer>

<script>
    $(document).ready(function(){
        // Add smooth scrolling to all links in navbar + footer link
        $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
            // Make sure this.hash has a value before overriding default behavior
            if (this.hash !== "") {
                // Prevent default anchor click behavior
                event.preventDefault();

                // Store hash
                var hash = this.hash;

                // Using jQuery's animate() method to add smooth page scroll
                // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                $('html, body').animate({
                    scrollTop: $(hash).offset().top
                }, 900, function(){

                    // Add hash (#) to URL when done scrolling (default click behavior)
                    window.location.hash = hash;
                });
            } // End if
        });

        $(window).scroll(function() {
            $(".slideanim").each(function(){
                var pos = $(this).offset().top;

                var winTop = $(window).scrollTop();
                if (pos < winTop + 600) {
                    $(this).addClass("slide");
                }
            });
        });
    })
</script>

</body>
</html>
