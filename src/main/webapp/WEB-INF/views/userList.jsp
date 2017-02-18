<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Spring MVC</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
</head>
<body>

<jsp:include page="/WEB-INF/templates/navbar.jsp"/>

<div class="container" style="margin-top: 5%">

    <div class="row">
        <div class="col-md-6">
            <h1>Usuarios</h1>

            <a class="btn btn-primary" href="userCreate.html">
                <span class="glyphicon glyphicon-plus"></span>
                Nuevo
            </a>
        </div>
    </div>

    <br>

    <table class="table">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>DNI</th>
            <th>Edad</th>
            <th>Fec. Nacimiento</th>
            <th>Acciones</th>
        </tr>
        <c:forEach items="${userList}" var="usr" varStatus="status">
            <tr>
                <td>${usr.id}</td>
                <td>${usr.nombre}</td>
                <td>${usr.dni}</td>
                <td>${usr.edad}</td>
                <td>${usr.fechaNacimiento}</td>
                <td>
                    <a class="btn btn-sm btn-warning" href="userEdit.html?id=${usr.id}">
                        <span class="glyphicon glyphicon-edit"></span>
                    </a>
                    <a class="btn btn-sm btn-danger" href="userDelete.html?id=${usr.id}">
                        <span class="glyphicon glyphicon-remove"></span>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>
