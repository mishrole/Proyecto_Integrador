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
	
	<title>Registra Usuario</title>
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
                      <h1 class="h3 mb-4 mt-4 fw-normal text-center"><b>Crea una cuenta</b></h1>
                    
                   	  <div class="form-group form-floating mb-3">
	                      <input type="text" class="form-control" id="id_nombre" name="nombre_usuario" placeholder="John" autocomplete="on" >
	                      <label for="id_nombre">Nombre</label>
                      </div>
                      <div class="form-group form-floating mb-3">
                        <input type="text" class="form-control" id="id_apellido" name="apellido_usuario" placeholder="Doe" autocomplete="on">
                        <label for="id_apellido">Apellidos</label>
                      </div>
                      <div class="form-group form-floating mb-3">
                        <input type="date" class="form-control" id="id_fecha_nacimiento" name="fecha_nacimiento_usuario" autocomplete="on">
                        <label for="id_fecha_nacimiento">Fecha de nacimiento</label>
                      </div>
                      <div class="form-group form-floating mb-3">
                        <input type="email" class="form-control" id="id_email" name="email_usuario" placeholder="name@example.com" autocomplete="on">
                        <label for="id_email">Correo electrónico</label>
                      </div>
                      <div class="form-group form-floating mb-3">
                        <input type="password" class="form-control" id="id_contrasena" name="contrasena_usuario" placeholder="Password" autocomplete="on">
                        <label for="id_contrasena">Contraseña</label>
                      </div>
                      <div class="form-group form-floating mb-3">
                        <input type="password" class="form-control" id="id_validar_contrasena" placeholder="Password" autocomplete="off">
                        <label for="id_validar_contrasena">Verificar contraseña</label>
                      </div>

                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="registrar_usuario">Registrar</button>
                      <p class="text-center mt-3">¿Tienes una cuenta? <a href="login">Inicia Sesión</a></p>
                    </form>
                  </main>
            </div>
        </div>
    </div>
    
    <form id="id_form_rol">
    	<input type="text" id="id_codigo_usuario" class="d-none" name="codigo_usuario">
    	<input type="text" id="id_rol_usuario" class="d-none" name="codigo_rol_usuario" value="2">
    </form>
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/global.js"></script>

	<script type="text/javascript">
		
	$(document).ready(function() {
		
		const btnRegister = $('#registrar_usuario');
		
		$('#id_form').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				nombre_usuario: {
					selector: '#id_nombre',
					validators : {
						notEmpty: {
							message: 'El nombre es obligatorio'
						},
						stringLength: {
							min: 3,
							max: 40,
							message: 'El nombre debe contener entre 3 a 40 caracteres'
						},
					}
				},
				apellido_usuario: {
					selector: '#id_apellido',
					validators : {
						notEmpty: {
							message: 'El apellido es obligatorio'
						},
						stringLength: {
							min: 3,
							max: 40,
							message: 'El apellido debe contener entre 3 a 40 caracteres'
						},
					}
				},
				email_usuario: {
					selector: '#id_email',
					validators: {
						notEmpty: {
							message: 'El correo electrónico es obligatorio'
						}
					}
				},
				fecha_nacimiento_usuario: {
					selector: '#id_fecha_nacimiento',
					validators: {
						notEmpty: {
							message: 'La fecha de nacimiento es obligatoria'
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
				},
				val_contrasena_usuario: {
					selector: '#id_validar_contrasena',
					validators: {
						notEmpty: {
							message: 'La validación de contraseña es obligatoria'
						}
					}
				}
				
			}
		});
		
		const inputPassword = $('#id_contrasena');
		const inputPasswordValidate = $('#id_validar_contrasena');
		
		const passwordDoesntMatch = document.createElement('span');
		passwordDoesntMatch.id = 'validatePasswordMessage';
		
		$('#registrar_usuario').click(function() {
			
			if($('#validatePasswordMessage')) {
				$('#validatePasswordMessage').remove()
			}
			
			var validator = $('#id_form').data('bootstrapValidator');
			validator.validate();
			
			if(validator.isValid()) {
				if(inputPassword.val() === inputPasswordValidate.val()) {
					
					$.ajax({
						type: 'POST',
						data: $('#id_form').serialize(),
						url: 'registraCliente',
						success: function(data) {
							$('#id_codigo_usuario').val(data.COD_USER);
							$.ajax({
								type: 'POST',
								data: $('#id_form_rol').serialize(),
								url: 'registraDetalleRolUsuario',
								success: function(dataRol) {
									mostrarMensaje(data.MENSAJE)
									limpiar();
									validator.resetForm()
								},
								error: function() {
									mostrarMensaje(MSG_ERROR)
								}
							});
						},
						error: function() {
							mostrarMensaje(MSG_ERROR)
						}
					});
					
				} else {
					passwordDoesntMatch.innerHTML = 'Las contraseñas deben coincidir';
					inputPasswordValidate.after(passwordDoesntMatch);
				}
			}
		});
		
		function limpiar() {
			$('#id_nombre').val('');
			$('#id_apellido').val('');
			$('#id_email').val('');
			$('#id_fecha_nacimiento').val('');
			$('#id_contrasena').val('');
			$('#id_validar_contrasena').val('');
		}
	});
	
	</script>
	
</body>
</html>