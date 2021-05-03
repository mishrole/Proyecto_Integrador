<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<jsp:include page="validarSesion.jsp" />

<!DOCTYPE html>
<html lang="es" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Expires" content="-1" />
	<meta http-equiv="Cache-Control" content="private" />
	<meta http-equiv="Cache-Control" content="no-store" />
	<meta http-equiv="Pragma" content="no-cache" />

	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<title>Home Administrador</title>
</head>
<body>

 <jsp:include page="header.jsp" />

    <div class="container">
        <div class="row">
            <h5 class="text-principal-color mb-3 mt-3">Bienvenido ${sessionScope.objUsuario.nombre_usuario} ${sessionScope.objUsuario.apellido_usuario}</h5>
            <div class="col-12 d-md-flex text-center justify-content-center align-items-center mt-3 mb-3">
            	<div class="col-12 col-md-3">
            		<a class="btn btn-primary" href="verUsuario">Mantenimiento de Usuario</a>
            	</div>
            	<div class="col-12 col-md-3">
            		<a class="btn btn-primary" href="verMascota">Mantenimiento de Mascota</a>
            	</div>
            	<div class="col-12 col-md-3">
            		<a class="btn btn-primary" href="verServicio">Mantenimiento de Servicio</a>
            	</div>
            	<div class="col-12 col-md-3">
            		<a class="btn btn-primary" href="verProducto">Mantenimiento de Producto</a>
            	</div>
            </div>
        </div>
    </div>
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/global.js"></script>

	<script type="text/javascript">
		
	$(document).ready(function() {
		
	});
	
	</script>
	
</body>
</html>