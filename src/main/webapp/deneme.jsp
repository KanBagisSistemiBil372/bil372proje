<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>jQuery Bootstable: Editable Bootstrap 4 Table Demo</title>
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- Scripts -->

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <script src="js_plugin/bootstable.js"></script>

    <!-- Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.3/darkly/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
<body>
<div id="app" style="margin:150px auto">
    <h1>Hoş Geldin ${pageContext.request.userPrincipal.name}</h1>
    <main class="py-4">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card" style="width: 100%">
                        <div class="card-header">Sistemdeki Hastalar</div>
                        <div class="card-body">
                            <button class="btn btn-primary" id="submit_data">Submit</button>
                            <table class="table table-responsive-md table-sm table-bordered" id="makeEditable">
                                <thead>
                                <tr>
                                    <th>T.C Kimlik No</th>
                                    <th>Adı</th>
                                    <th>Soyadı</th>
                                    <th>Telefonu</th>
                                    <th>Kan Grubu</th>
                                    <th>Hastane Lokasyon</th>
                                    <th>Hastane Adı</th>
                                    <th>İhtiyaç Miktarı</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>123414</td>
                                    <td>Default</td>
                                    <td>Defaultson</td>
                                    <td>41345</td>
                                    <td>A-</td>
                                    <td>Defaultson</td>
                                    <td>Defaultson</td>
                                    <td>5</td>
                                </tr>
                                </tbody>
                            </table>
                            <span style="float:right"><button id="but_add"
                                                              class="btn btn-danger">Add New Row</button></span>
                        </div>
                    </div>

                    <div class="card" style="width: 100%">
                        <div class="card-header">Sistemdeki Bağışçılar</div>
                        <div class="card-body">

                            <button class="btn btn-primary" id="submit_data2">Submit</button>
                            <table class="table table-responsive-md table-sm table-bordered" id="makeEditable2">
                                <thead>
                                <tr>
                                    <th>T.C Kimlik No</th>
                                    <th>Adı</th>
                                    <th>Soyadı</th>
                                    <th>Telefonu</th>
                                    <th>Kan Grubu</th>
                                    <th>Lokasyon</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>123414</td>
                                    <td>Default</td>
                                    <td>Defaultson</td>
                                    <td>41345</td>
                                    <td>A-</td>
                                    <td>Defaultson</td>
                                </tr>
                                </tbody>
                            </table>
                            <span style="float:right"><button id="but_add2" class="btn btn-danger">Add New Row</button></span>
                        </div>
                    </div>


                    <div class="card" style="width: 100%">
                        <div class="card-header">Kan Bankası Kayıtları</div>
                        <div class="card-body">

                            <button class="btn btn-primary" id="submit_data3">Submit</button>
                            <table class="table table-responsive-md table-sm table-bordered" id="makeEditable3">
                                <thead>
                                <tr>
                                    <th>Kan Seri No</th>
                                    <th>Kan Grubu</th>
                                    <th>Bağış Tarihi</th>
                                    <th>Bağışlayan T.C</th>
                                    <th>Hasta T.C</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>123414</td>
                                    <td>A+</td>
                                    <td>06/12/2018</td>
                                    <td>4134523</td>
                                    <td>1245443</td>
                                </tr>
                                </tbody>
                            </table>
                            <span style="float:right"><button id="but_add3" class="btn btn-danger">Add New Row</button></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>

<script>
    $(function () {

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
        table = document.getElementById("makeEditable");
        for (var i = 0; i < patients.length; i++) {
            // create a new row
            var newRow = table.insertRow(table.length);
            for (var j = 0; j < patients[i].length; j++) {
                // create a new cell
                var cell = newRow.insertCell(j);

                // add value to the cell
                cell.innerHTML = patients[i][j];
            }
        }

        $('#makeEditable').SetEditable({$addButton: $('#but_add')});

        $('#submit_data').on('click', function () {
            var td = TableToCSV('makeEditable', ',');
            console.log(td);
            var ar_lines = td.split("\n");
            var each_data_value = [];
            for (i = 0; i < ar_lines.length; i++) {
                each_data_value[i] = ar_lines[i].split(",");
            }

            for (i = 0; i < each_data_value.length; i++) {
                if (each_data_value[i] > 1) {
                    console.log(each_data_value[i][2]);
                    console.log(each_data_value[i].length);
                }

            }

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
        table2 = document.getElementById("makeEditable2");
        for (var i = 0; i < donors.length; i++) {
            // create a new row
            var newRow = table2.insertRow(table2.length);
            for (var j = 0; j < donors[i].length; j++) {
                // create a new cell
                var cell = newRow.insertCell(j);

                // add value to the cell
                cell.innerHTML = donors[i][j];
            }
        }

        $('#makeEditable2').SetEditable({$addButton: $('#but_add2')});

        $('#submit_data2').on('click', function () {
            var td = TableToCSV('makeEditable2', ',');
            console.log(td);
            var ar_lines = td.split("\n");
            var each_data_value = [];
            for (i = 0; i < ar_lines.length; i++) {
                each_data_value[i] = ar_lines[i].split(",");
            }

            for (i = 0; i < each_data_value.length; i++) {
                if (each_data_value[i] > 1) {
                    console.log(each_data_value[i][2]);
                    console.log(each_data_value[i].length);
                }

            }

        });

        $.ajax({
            type: "GET",
            url: "/getbloodbankentities",
            async: false,
            success: function (result) {
                len = result.length;
                bloodbankentities = new Array(len);
                for (var i = 0; i < len; i++) {
                    bloodbankentities[i] = new Array(5);
                }

                for (var i = 0; i < result.length; i++) {
                    bloodbankentities[i][0] = (result[i].blood_serial_no);
                    bloodbankentities[i][1] = (result[i].blood_type);
                    bloodbankentities[i][2] = (result[i].date).substr(0,10);
                    bloodbankentities[i][3] = (result[i].donor_id);
                    bloodbankentities[i][4] = (result[i].patient_id);
                }
                console.log(bloodbankentities);
            },
            error: function (req, status, error) {
                //alert("Error");
            }
        });
        table3 = document.getElementById("makeEditable3");
        for (var i = 0; i < bloodbankentities.length; i++) {
            // create a new row
            var newRow = table3.insertRow(table3.length);
            for (var j = 0; j < bloodbankentities[i].length; j++) {
                // create a new cell
                var cell = newRow.insertCell(j);

                // add value to the cell
                cell.innerHTML = bloodbankentities[i][j];
            }
        }

        $('#makeEditable3').SetEditable({$addButton: $('#but_add3')});

        $('#submit_data3').on('click', function () {
            var td = TableToCSV('makeEditable3', ',');
            console.log(td);
            var ar_lines = td.split("\n");
            var each_data_value = [];
            for (i = 0; i < ar_lines.length; i++) {
                each_data_value[i] = ar_lines[i].split(",");
            }

            for (i = 0; i < each_data_value.length; i++) {
                if (each_data_value[i] > 1) {
                    console.log(each_data_value[i][2]);
                    console.log(each_data_value[i].length);
                }

            }

        });

        var table = document.getElementById('makeEditable');
        n = table.rows.length;
        for (var r = 0; r < n; r++) {
            m = table.rows[r].cells.length;
            for (var c = 0;  c < m; c++) {
                //alert(table.rows[r].cells[c].innerHTML);

            }
        }




    });

</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();

</script>
</html>
