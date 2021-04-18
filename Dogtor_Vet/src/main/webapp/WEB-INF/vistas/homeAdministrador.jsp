<!DOCTYPE html>
<html lang="es" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<title>Home Administrador</title>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light-custom">
    <div class="container">
        <a class="navbar-brand text-primary-color" href="./"><img src="../../images/logo.png" alt="Logo dogtor" width="200"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="/">Web</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="homeAdministrador">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="verMascota">Mascota</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="verUsuario">Usuario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="verProducto">Producto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="verServicio">Servicio</a>
                </li>
            </ul>
            <div class="d-flex">
            	<a class="btn btn-primary btn-singin" href="login">Cerrar Sesión</a>
        	</div>
        </div>
    </div>
  </nav>

    <div class="container">
        <div class="row">
            <h3 class="text-principal-color mb-3 mt-3">Bienvenido Administrador</h3>
            <div class="col-12 d-flex justify-content-center align-items-center mt-3 mb-3">
            	<div class="col-12 col-md-3">
            		<a class="btn btn-primary" href="verUsuario">Mantenimiento de Usuario</a>
            	</div>
            	<div class="col-12 col-md-3">
            		<a class="btn btn-primary" href="verMascota">Mantenimiento de Mascota</a>
            	</div>
            	<div class="col-12 col-md-3">
            		<a class="btn btn-primary disabled" href="verServicio">Mantenimiento de Servicio</a>
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