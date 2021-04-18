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
	
	<title>Inicia Sesión</title>
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
                    <a class="nav-link link-menu text-secondary-color" href="/">Inicio</a>
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
            <div class="d-flex">
            	<a class="btn btn-primary btn-singin" href="login">Iniciar Sesión</a>
        	</div>
        </div>
    </div>
  </nav>

    <div class="container">
        <div class="row">
            <div class="col-sm-12 justify-content-center align-items-center d-flex">
                <main class="col-10 col-md-6">
                    <form id="id_form">
                      <h1 class="h3 mb-4 mt-4 fw-normal text-center"><b>Inicia Sesión</b></h1>
                    
                      <div class="form-group form-floating mb-3">
                        <input type="email" class="form-control" id="id_email" name="email_usuario" placeholder="name@example.com" autocomplete="on">
                        <label for="id_email">Correo electrónico</label>
                      </div>
                      <div class="form-group form-floating mb-3">
                        <input type="password" class="form-control" id="id_contrasena" name="contrasena_usuario" placeholder="Password" autocomplete="on">
                        <label for="id_contrasena">Contraseña</label>
                      </div>

                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="iniciar_sesion">Iniciar Sesión</button>
                      <p class="text-center mt-3">¿Todavía no tienes una cuenta? <a href="nuevaCuenta">Regístrate</a></p>
                    </form>
                  </main>
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
		
		const btnRegister = $('#iniciar_sesion');
		
		$('#id_form').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				email_usuario: {
					selector: '#id_email',
					validators: {
						notEmpty: {
							message: 'El correo electrónico es obligatorio'
						}
					}
				},
				contrasena_usuario: {
					selector: '#id_contrasena',
					validators: {
						notEmpty: {
							message: 'La contraseña es obligatoria'
						}
					}
				}
			}
		});
		
		/* IMPORTANTE: Esto es momentáneo hasta que aprendamos a usar Spring Security 
		     _________________________ESTO NO ES SEGURO___________________________
		*/
		
		btnRegister.click(function() {
			const inputEmail = $('#id_email').val();
			const inputPassword = $('#id_contrasena').val();
			
			var validator = $('#id_form').data('bootstrapValidator');
			validator.validate();
			
			// Si los inputs Email y Contraseña pasan la validación
			if(validator.isValid()) {
				// Select de Usuario en función a Email y Contraseña del Form
				$.getJSON('listaUsuarioPorEmailYContrasena', {'email_usuario':inputEmail , 'contrasena_usuario':inputPassword},
				function(dataUsuario) {
					if(dataUsuario.length > 0) {
						// Del array de Usuario que retorna requiero la primera coincidencia
						// Nota: Email es UNIQUE
						const codigoUsuario = dataUsuario[0].codigo_usuario; // Obtengo el código de ese usuario
						
						// Select a la tabla compuesta Detalle Usuario Rol usando el código de usuario del Select anterior
						$.getJSON('listaRolPorUsuario', {'codigo_usuario':codigoUsuario}, function(dataRolUsuario) {
							// Del array de Detalle que retorna requiero la primera coincidencia
							const nombreRolUsuario = dataRolUsuario[0].nombre_rol_usuario;
							
							// Si el nombre del rol que encontró al buscar por ese usuario es Admin
							if(nombreRolUsuario === 'Administrador') {
								// Paso al home de administrador, está mappeado por AccesoController
								window.location.href = "/homeAdministrador";
							} else if (nombreRolUsuario === 'Cliente') {
								// Si no entró en el if anterior, entonces pasa de frente al home de cliente
								window.location.href = "/homeCliente";	
							}
						});
						
					} else {
						mostrarMensaje(MSG_ERROR)
					}
				});
			} else {
				mostrarMensaje(MSG_ERROR)
			}
		});
		
		
		function limpiar() {
			$('#id_email').val('');
			$('#id_contrasena').val('');
		}
	});
	
	</script>
	
</body>
</html>