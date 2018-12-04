<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>NuRD Şifre Değiştirme</title>
    <link href="${contextPath}/resources/css/alertify.css" rel="stylesheet">
    <script type="text/javascript" src="${contextPath}/resources/js/alertify.js"></script>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/DataTables/datatables.css"/>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
</head>

<body>

<!- Şifre Değiştirme ekrani ->
<div class="container">

    <br>
    <img src="${contextPath}/resources/nurdlogo.jpg" alt="NuRD"
         width="228" height="115">

    <div class="page-header">
        <h1>Comodo Şifre Değiştirme</h1>
    </div>

    <div class="row">
        <div class="col-md-4 text-center">
        </div>
        <div class="col-md-4 text-center">

            <p>
            <div class="input-group">
                <span class="input-group-addon">Kullanıcı Adı</span>
                <input type="text" id="username" name="username" autofocus="true" class="form-control"
                       placeholder="Kullanıcı adınızı giriniz" aria-describedby="basic-addon1">
            </div>
            </p>
            <p>
            <div class="input-group">
                <span class="input-group-addon">Mevcut Şifre</span>
                <input id="oldpassword" name="password" type="password" class="form-control"
                       placeholder="Mevcut şifrenizi giriniz"
                       aria-describedby="basic-addon2">
            </div>
            </p>
            <p>
            <div class="input-group">
                <span class="input-group-addon">Yeni Şifre</span>
                <input type="password" name="password" id="newpassword" class="form-control"
                       placeholder="Yeni şifrenizi giriniz" aria-describedby="basic-addon1">
            </div>
            </p>
            <p>
            <div class="input-group">
                <span class="input-group-addon">Yeni Şifre</span>
                <input type="password" name="password2" id="newpassword2" class="form-control"
                       placeholder="Yeni şifrenizi tekrar giriniz" aria-describedby="basic-addon1">
            </div>
            </p>

            <div class="row" id="fillwarning">
                <div class="alert alert-danger">
                    <strong></strong> Lütfen tüm alanları doldurunuz
                </div>
            </div>

            <div class="row" id="changewarning">
                <div class="alert alert-danger">
                    <strong></strong> Şifrenizi kontrol ediniz. Şifre uzunluğu 8 ile 32 arasında olmalıdır ve Yeni
                    şifreler aynı olmalıdır
                </div>
            </div>
            <div class="row" id="usernameorpasswordwarning">
                <div class="alert alert-danger">
                    <strong></strong> Kullanıcı adı veya şifre hatalı!
                </div>
            </div>
            <div class="row" id="loginwarning">
                <div class="alert alert-success">
                    <strong></strong> Şifreniz değiştirilmiştir.Giriş sayfasına yönlendiriliyorsunuz
                </div>
            </div>
            <div class="row" id="newoldpasswordwarning">
                <div class="alert alert-danger">
                    <strong></strong> Yeni şifreniz mevcut şifrenizle aynı olamaz
                </div>
            </div>
            <p><span>${error}</span></p>

            <p class="pull-right">
                <button class="btn btn-lg btn-success btn-sm" onclick="controlChange()">Onayla</button>
            </p>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/DataTables/datatables.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/regsiter.js"></script>
</body>
</html>
