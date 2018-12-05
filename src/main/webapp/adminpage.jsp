<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
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
                <li><a href="#about">ABOUT</a></li>
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
    <p>Admin sayfasina hosgeldin ${name}</p>
</div>

<!-- Container (About Patient Tablo) -->
<div class="container-fluid">
    <div class="row">
        <h1>Kayıtlı Hastalar</h1>
        <table id="patientTable" class="display" width="100%"></table>
    </div>
</div>

<!-- Container (About Donor Tablo) -->
<div class="container-fluid">
    <div class="row">
        <h1>Kayıtlı Bağışçılar</h1>
        <table id="donorTable" class="display" width="100%"></table>
    </div>
</div>

<!-- Container (About Kan Bankasi Tablo) -->
<div class="container-fluid">
    <div class="row">
        <h1>Kan Bankası Kayıtları</h1>
        <table id="bloodBankTable" class="display" width="100%"></table>
    </div>
</div>


<script>
    $(document).ready(function(){

        $.ajax({
            type: "GET",
            url: "/getpatients",
            async: false,
            success: function (result) {
                len = result.length;
                patients = new Array(len);
                for (var i = 0; i < len; i++) {
                    patients[i] = new Array(8);
                }

                for (var i = 0; i < result.length; i++) {
                    patients[i][0] = (result[i].id);
                    patients[i][1] = (result[i].name);
                    patients[i][2] = (result[i].surname);
                    patients[i][3] = (result[i].phone);
                    patients[i][4] = (result[i].bloodtype);
                    patients[i][5] = (result[i].hospital_location);
                    patients[i][6] = (result[i].hospital_name);
                    patients[i][7] = (result[i].amount_of_need);
                }

            },
            error: function (req, status, error) {
                //alert("Error");
            }
        });

        $('#patientTable').DataTable({
            data: patients,
            columns: [
                {title: "T.C. Kimlik No"},
                {title: "Adı"},
                {title: "Soyadı"},
                {title: "Telefonu"},
                {title: "Kan Grubu"},
                {title: "Hastane Lokasyonu"},
                {title: "Hastane Adı"},
                {title: "İhtiyaç Miktarı"}
            ]
        });

        $.ajax({
            type: "GET",
            url: "/getdonors",
            async: false,
            success: function (result) {
                len = result.length;
                donors = new Array(len);
                for (var i = 0; i < len; i++) {
                    donors[i] = new Array(6);
                }

                for (var i = 0; i < result.length; i++) {
                    donors[i][0] = (result[i].id);
                    donors[i][1] = (result[i].name);
                    donors[i][2] = (result[i].surname);
                    donors[i][3] = (result[i].phone);
                    donors[i][4] = (result[i].bloodtype);
                    donors[i][5] = (result[i].hospital_location);
                }

            },
            error: function (req, status, error) {
                //alert("Error");
            }
        });

        $('#donorTable').DataTable({
            data: donors,
            columns: [
                {title: "T.C. Kimlik No"},
                {title: "Adı"},
                {title: "Soyadı"},
                {title: "Telefonu"},
                {title: "Kan Grubu"},
                {title: "Lokasyon"},
            ]
        });

        $.ajax({
            type: "GET",
            url: "/getpatients",
            async: false,
            success: function (result) {
                len = result.length;
                patients = new Array(len);
                for (var i = 0; i < len; i++) {
                    patients[i] = new Array(8);
                }

                for (var i = 0; i < result.length; i++) {
                    patients[i][0] = (result[i].id);
                    patients[i][1] = (result[i].name);
                    patients[i][2] = (result[i].surname);
                    patients[i][3] = (result[i].phone);
                    patients[i][4] = (result[i].bloodtype);
                    patients[i][5] = (result[i].hospital_location);
                    patients[i][6] = (result[i].hospital_name);
                    patients[i][7] = (result[i].amount_of_need);
                }

            },
            error: function (req, status, error) {
                //alert("Error");
            }
        });

        $('#patientTable').DataTable({
            data: patients,
            columns: [
                {title: "T.C. Kimlik No"},
                {title: "Adı"},
                {title: "Soyadı"},
                {title: "Telefonu"},
                {title: "Kan Grubu"},
                {title: "Hastane Lokasyonu"},
                {title: "Hastane Adı"},
                {title: "İhtiyaç Miktarı"}
            ]
        });

    })

</script>

</body>
</html>