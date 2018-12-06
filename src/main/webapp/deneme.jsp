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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="js_plugin/bootstable.js" ></script>

    <!-- Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.3/darkly/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
<body>
<div id="jquery-script-menu">
    <div class="jquery-script-center">
        <ul>
            <li><a href="https://www.jqueryscript.net/table/table-editing-creation-bootstable.html">Download This Plugin</a></li>
            <li><a href="https://www.jqueryscript.net/">Back To jQueryScript.Net</a></li>
        </ul>
        <div class="jquery-script-ads"><script type="text/javascript"><!--
        google_ad_client = "ca-pub-2783044520727903";
        /* jQuery_demo */
        google_ad_slot = "2780937993";
        google_ad_width = 728;
        google_ad_height = 90;
        //-->
        </script>
            <script type="text/javascript"
                    src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
            </script></div>
        <div class="jquery-script-clear"></div>
    </div>
</div>
<div id="app" style="margin:150px auto">

    <main class="py-4">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card" style="width: 100%">
                        <div class="card-header">jQuery Bootstable: Editable Bootstrap 4 Table Demo</div>

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
                            <span style="float:right"><button id="but_add" class="btn btn-danger">Add New Row</button></span>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>

<script>
    $(function() {

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
        console.log(patients);


        table = document.getElementById("makeEditable");
        for(var i = 0; i < patients.length; i++)
        {
            // create a new row
            var newRow = table.insertRow(table.length);
            for(var j = 0; j < patients[i].length; j++)
            {
                // create a new cell
                var cell = newRow.insertCell(j);

                // add value to the cell
                cell.innerHTML = patients[i][j];
            }
        }

        $('#makeEditable').SetEditable({ $addButton: $('#but_add')});

        $('#submit_data').on('click',function() {
            var td = TableToCSV('makeEditable', ',');
            console.log(td);
            var ar_lines = td.split("\n");
            var each_data_value = [];
            for(i=0;i<ar_lines.length;i++)
            {
                each_data_value[i] = ar_lines[i].split(",");
            }

            for(i=0;i<each_data_value.length;i++)
            {
                if(each_data_value[i]>1)
                {
                    console.log(each_data_value[i][2]);
                    console.log(each_data_value[i].length);
                }

            }

        });
    });

</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>
</html>
