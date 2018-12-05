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
    var dataSet = [[]];

    $(document).ready(function () {
        $.ajax({
            type: "GET",
            url: "/denemee",
            async: false,
            success: function (result) {
                //console.log(result);
                dataSet[0][0] = result.id;
                dataSet[0][1] = result.name;
                dataSet[0][2] = result.surname;
                dataSet[0][3] = result.bloodtype;
                dataSet[0][4] = result.phone;
                dataSet[0][5] = result.hospital_location;

            },
            error: function (req, status, error) {
                //alert("Error");
            }
        });

        $('#example').DataTable({
            data: dataSet,
            columns: [
                {title: "T.C. Kimlik No"},
                {title: "Adı"},
                {title: "Soyadı"},
                {title: "Kan Grubu"},
                {title: "Telefonu"},
                //{ title: "İhtiyaç Miktarı" },
                //{ title: "Hastane Adı" },
                {title: "Hastane Lokasyonu"}
            ]
        });
    });
</script>
</html>