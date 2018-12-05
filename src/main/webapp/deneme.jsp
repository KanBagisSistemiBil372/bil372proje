<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body>
<%= "Hello World!" %>

<table id="example" class="display" width="100%"></table>

</body>
<script>

    $(document).ready(function () {
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

        $('#example').DataTable({
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
    });
</script>
</html>