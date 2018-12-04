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

</head>

<body>

<!- Login ekrani ->
<div class="container" id="login">


    <div class="page-header">
        <h1>NuRD İK Performans Uygulaması</h1>
    </div>

    <div class="row">
        <div class="col-md-4 text-center">
        </div>
        <div class="col-md-4 text-center">

            <form method="POST" action="${contextPath}/login" class="form-signin">
                <div class="form-group ${error != null ? 'has-error' : ''}">
                    <p><span>${message}</span></p>
                    <p>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">Kullanıcı Adı</span>
                        <input type="text" name="username" autofocus="true" class="form-control"
                               placeholder="Kullanıcı adınızı giriniz" aria-describedby="basic-addon1">
                    </div>
                    </p>
                    <p>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon2">Şifre</span>
                        <input name="password" type="password" class="form-control" placeholder="Şifrenizi giriniz"
                               aria-describedby="basic-addon2">
                    </div>
                    </p>
                    <p><span>${error}</span></p>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                    <p class="pull-right">
                        <a href="/resetpassword" class="btn btn-link">Şifremi Unuttum</a>
                        <a href="/register" class="btn btn-link">Üye Ol</a>
                        <button class="btn btn-lg btn-success btn-sm">Giriş Yap</button>
                    </p>
                    <!-- <h4 class="text-center"><a href="/registration">Create an account</a></h4> -->
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>
