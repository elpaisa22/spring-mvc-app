<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Spring MVC</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/datatables/css/dataTables.bootstrap.min.css"/>
</head>
<body>
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/datatables/js/jquery.spring-friendly.min.js"></script>
	<script src="resources/datatables/js/jquery.dataTables.min.js"></script>
	<script src="resources/datatables/js/dataTables.bootstrap.min.js"></script>

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
	
	    <table id="datatable" class="table display">
	    	<thead>
		        <tr>
		            <th>ID</th>
		            <th>Nombre</th>
		            <th>DNI</th>
		            <th>Edad</th>
		            <th>Fec. Nacimiento</th>
		        </tr>
		     </thead>
	    </table>
	    <script type="text/javascript">
		    $(document).ready(function() {
		        $('#datatable').DataTable( {
		            "processing": true,
		            "serverSide": true,
		            "pageLength": 10,
		            "ajax": {
		            	url : "api/users/list",
		            	type : "POST"
		            },
		            "columns": [
		            	{ "data": "id" },
		            	{ "data": "nombre" },
		            	{ "data": "dni" },
		            	{ "data": "edad" },
		            	{ "data": "fechaNacimiento" }
		            ]
		        } );
		    });
	    </script>
	
	</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->

</body>
</html>
