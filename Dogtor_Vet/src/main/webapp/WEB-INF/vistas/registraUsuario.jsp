<!DOCTYPE html>
<html lang="es" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<title>Registra Usuario</title>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light-custom">
    <div class="container">
        <a class="navbar-brand text-primary-color" href="./"><img src="../../images/logo.png" alt="Logo dogtor" width="250"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="">Nosotros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="">Servicios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="">Tienda</a>
                </li>
            </ul>
        </div>
        <div class="d-flex">
            <a class="btn btn-primary btn-singin" href="">Iniciar Sesión</a>
        </div>
    </div>
  </nav>

    <div class="container">
        <div class="row">
            <div class="col-sm-12 justify-content-center align-items-center d-flex">
                <main class="col-10 col-md-6 form-signin">
                    <form id="id_form">
                      <h1 class="h3 mb-4 mt-4 fw-normal text-center"><b>Crea una cuenta</b></h1>
                    
                      <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="id_nombre" name="nombre_usuario" placeholder="John" autocomplete="on" >
                        <label for="id_nombre">Nombre</label>
                      </div>
                      <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="id_apellido" name="apellido_usuario" placeholder="Doe" autocomplete="on">
                        <label for="id_apellido">Apellidos</label>
                      </div>
                      <div class="form-floating mb-3">
                        <input type="date" class="form-control" id="id_fecha_nacimiento" name="fecha_nacimiento_usuario" autocomplete="on">
                        <label for="id_fecha_nacimiento">Fecha de nacimiento</label>
                      </div>
                      <div class="form-floating mb-3">
                        <input type="email" class="form-control" id="id_email" name="email_usuario" placeholder="name@example.com" autocomplete="on">
                        <label for="id_email">Correo electrónico</label>
                      </div>
                      <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="id_contrasena" name="contrasena_usuario" placeholder="Password" autocomplete="on">
                        <label for="id_contrasena">Contraseña</label>
                      </div>
                      <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="id_validar_contrasena" placeholder="Password" autocomplete="off">
                        <label for="id_validar_contrasena">Verificar contraseña</label>
                      </div>

                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="">Registrar</button>
                      <p class="text-center mt-3">¿Tienes una cuenta? <a href="">Inicia Sesión</a></p>
                    </form>
                  </main>
            </div>
        </div>
    </div>


	<script type="text/javascript">
		
		$("#registrar_usuario").click(function() {
			$.ajax({
				type: 'POST',
				data: $("#id_form").serialize(),
				url: 'registraUsuario',
				success: function(data) {
					mostrarMensaje(data.MENSAJE)
				},
				error: function() {
					mostrarMensaje(MSG_ERROR)
				}
			});
			
		});
	
	/*
	function limpiar(){
		$('#id_nombre').val('');
		$('#id_dni').val('');
		$('#id_correo').val('');
		$('#id_fecha').val('');
	}
	
	$(document).ready(function() {
	    $('#id_form').bootstrapValidator({
	        message: 'This value is not valid',
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	        		nombre:{
	                    selector: "#id_nombre",
	                    validators:{
	                        notEmpty: {
	                             message: 'El nombre es obligatorio'
	                        },
	                        stringLength: {
	                            min: 3,
	                            max: 40,
	                            message: 'El nombre es de 3 a 40 caracteres'
	                        },
	                    }
	                },
	                dni:{
	                    selector: "#id_dni",
	                    validators:{
	                        notEmpty: {
	                             message: 'El dni es obligatorio'
	                        },
	                        regexp: {
	                            regexp: /^[0-9]{8}$/,
	                            message: 'el dni es 8 dígitos'
	                        }
	                    }
	                },
	                correo:{
	                    selector: "#id_correo",
	                    validators:{
	                        notEmpty: {
	                             message: 'El correo es obligatorio'
	                        },
	                        emailAddress: {
	                            message: 'El correo no es valido'
	                        }
	                    }
	                },
	                fechaNacimiento:{
	                    selector: "#id_fecha",
	                    validators:{
	                        notEmpty: {
	                             message: 'La fecha es obligatorio'
	                        }
	                    }
	                },
	        }   
	    });
	
	    
	});
	*/
	</script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/global.js"></script>
</body>
</html>




