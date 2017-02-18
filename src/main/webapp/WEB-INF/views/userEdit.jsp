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
        <c:if test="${userForm.id == null}">
            <h1>Nuevo</h1>
        </c:if>
        <c:if test="${userForm.id != null}">
            <h1>Editar</h1>
        </c:if>

        <p class="lead">Usuario</p>
    </div>

    <spring:url value="/userSave.html" var="contactActionUrl" />

    <form:form class="form-horizontal" method="post" modelAttribute="userForm" action="${contactActionUrl}">

        <form:hidden path="id" />

        <spring:bind path="nombre">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Nombre</label>
                <div class="col-sm-10">
                    <form:input id="nombre" path="nombre" type="text" class="form-control" placeholder="Nombre" />
                    <form:errors path="nombre" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="edad">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Edad</label>
                <div class="col-sm-10">
                    <form:input id="edad" path="edad" type="text" class="form-control" placeholder="Edad" />
                    <form:errors path="edad" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="dni">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">DNI</label>
                <div class="col-sm-10">
                    <form:input id="dni" path="dni" type="text" class="form-control" placeholder="DNI" />
                    <form:errors path="dni" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="fechaNacimiento">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Fecha de Nacimiento</label>
                <div class="col-sm-10">
                    <form:input id="fechaNacimiento" path="fechaNacimiento" type="text" class="form-control" placeholder="DD/MM/AAAA" />
                    <form:errors path="fechaNacimiento" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="pull-right">
                    <a class="btn btn-default" href="users.html">
                        <span class="glyphicon glyphicon-remove"></span>
                        Cancelar
                    </a>
                    <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-floppy-disk"></span>
                        Guardar
                    </button>
                </div>

            </div>
        </div>
    </form:form>

</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>
