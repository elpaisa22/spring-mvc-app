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

    <h1>Bienvenido:</h1>
    <div class="row form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">Nombre</label>
            <div class="col-sm-10">
                <p class="form-control-static">${user.nombre}</p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Edad</label>
            <div class="col-sm-10">
                <p class="form-control-static">${user.edad}</p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">DNI</label>
            <div class="col-sm-10">
                <p class="form-control-static">${user.dni}</p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Fecha Nacimiento</label>
            <div class="col-sm-10">
                <p class="form-control-static">${user.fechaNacimiento}</p>
            </div>
        </div>
    </div>

    <a class="btn btn-default" href="users.html">
        Volver
    </a>

</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>
