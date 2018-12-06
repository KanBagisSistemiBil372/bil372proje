<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- Styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="bootstable.js" ></script>

</head>
<body>
<table class="table" id="makeEditable">
    <thead>
    <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email </th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Default</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
    </tr>
    <tr class="success">
        <td>Success</td>
        <td>Doe</td>
        <td>john@example.com</td>
    </tr>
    <tr class="danger">
        <td>Danger</td>
        <td>Moe</td>
        <td>mary@example.com</td>
    </tr>
    <tr class="info">
        <td>Info</td>
        <td>Dooley</td>
        <td>july@example.com</td>
    </tr>
    <tr class="warning">
        <td>Warning</td>
        <td>Refs</td>
        <td>bo@example.com</td>
    </tr>
    <tr class="active">
        <td>Active</td>
        <td>Activeson</td>
        <td>act@example.com</td>
    </tr>
    </tbody>
</table>

<span>
  <button id="but_add">Add New Row</button>
</span>
</body>

<script>

    $('#makeEditable').SetEditable({
        $addButton: $('#but_add'),
        columnsEd: null,  // Ex.: "1,2,3,4,5"
        onEdit: function() {},
        onDelete: function() {},
        onBeforeDelete: function() {},
        onAdd: function() {}
    });

</script>

</html>