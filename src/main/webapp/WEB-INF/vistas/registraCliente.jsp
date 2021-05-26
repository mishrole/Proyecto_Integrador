<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/dashboard.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<title>Crea tu cuenta | Dogtor</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	
	<c:if test="${requestScope.MENSAJE != null}">
    	<div class="alert alert-danger fade in" id="success-alert">
        	<a href="#" class="close" data-dismiss="alert">&times;</a>
        	<strong>${requestScope.MENSAJE}</strong>
    	</div>
   	</c:if>

    <div class="container">
        <div class="row">
            <div class="col-sm-12 justify-content-center align-items-center d-flex">
                <main class="col-10 col-md-6">
                    <form id="id_form">
                      <h1 class="h3 mb-4 mt-4 fw-normal text-center"><b>Crea una cuenta</b></h1>
                    	
                    	<div class="form-group row">
						  	<div class="col-12 col-md-6 mb-3">
							  	<div class="form-floating">
						  			<input type="text" class="form-control" id="id_nombre" name="nombre_usuario" placeholder="John" autocomplete="on" >
	                      			<label for="id_nombre">Nombre</label>
						  		</div>
						  	</div>
						  	<div class="col-12 col-md-6 mb-3">
							  	<div class="col form-floating">
						  			<input type="text" class="form-control" id="id_apellido" name="apellido_usuario" placeholder="Doe" autocomplete="on">
                        			<label for="id_apellido">Apellidos</label>
						  		</div>
						  	</div>
	                     </div>
	                     
	                     <div class="form-group row">
						  	<div class="col-12 col-md-6 mb-3">
							  	<div class="form-floating">
						  			<input type="date" class="form-control" id="id_fecha_nacimiento" name="fecha_nacimiento_usuario" autocomplete="on">
                        			<label for="id_fecha_nacimiento">Fecha de nacimiento</label>
						  		</div>
						  	</div>
						  	<div class="col-12 col-md-6 mb-3">
							  	<div class="form-floating">
			                      	<select class="form-select" id="select_distrito" name="codigo_distrito" aria-label="Default select example">
									  <option selected value="0">Seleccione Distrito</option>
									</select>
									<label for="select_distrito">Distrito</label>
	                      		</div>
						  	</div>
	                     </div>
	                     
	                     <div class="form-group row">
						  	<div class="col-12 col-md-12 mb-3">
							  	<div class="form-floating">
						  			<input type="email" class="form-control" id="id_email" name="email_usuario" placeholder="name@example.com" autocomplete="on">
                        			<label for="id_email">Correo electrónico</label>
						  		</div>
						  	</div>
	                     </div>
	                     
	                     <div class="form-group row">
						  	<div class="col-12 col-md-6 mb-3">
							  	<div class="form-floating">
						  			<input type="password" class="form-control" id="id_contrasena" name="contrasena_usuario" placeholder="Password" autocomplete="on">
                        			<label for="id_contrasena">Contraseña</label>
						  		</div>
						  	</div>
						  	<div class="col-12 col-md-6 mb-3">
							  	<div class="col form-floating">
						  			<input type="password" class="form-control" id="id_validar_contrasena" placeholder="Password" autocomplete="off">
                        			<label for="id_validar_contrasena">Verificar contraseña</label>
						  		</div>
						  	</div>
	                     </div>

                      <button class="w-100 btn btn-lg btn__primary" type="button" id="registrar_usuario">Registrar</button>
                      <p class="text-center mt-3 font__regular title__color">¿Ya tienes una cuenta? <a href="login" class="primary__color">Inicia Sesión</a></p>
                    </form>
                  </main>
            </div>
        </div>
    </div>
    
    <form id="id_form_rol">
    	<input type="text" id="id_codigo_usuario" class="d-none" name="codigo_usuario">
    	<input type="text" id="id_rol_usuario" class="d-none" name="codigo_rol_usuario" value="2">
    </form>
	
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>

	<script type="text/javascript">
		
	$(document).ready(function() {
		
		const selectDistrito = $('#select_distrito');
		const btnRegister = $('#registrar_usuario');
		
		// Get Distrito
		
		function generarSelectDistrito(idSelectDistrito) {
			$.getJSON('listaDistrito', function(data) {
				$.each( data, function( index, value ) {
					let option = document.createElement('option');
					option.value = value.codigo_distrito;
					option.text = value.nombre_distrito;
					idSelectDistrito.append(option);
				});
			});
		}
		
		generarSelectDistrito(selectDistrito);
		
		var selectedDistrito;
		
		// Validar selects cuando cambie el option en Registrar
		
		selectDistrito.change(function(e) {
			selectedDistrito = e.target.selectedIndex;
			validateSelect(selectDistrito, selectedDistrito, 'distrito');
		});
		
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
			
			validateSelect(selectDistrito, selectedDistrito, 'distrito');
			
			if($('#validatePasswordMessage')) {
				$('#validatePasswordMessage').remove()
			}
			
			var validator = $('#id_form').data('bootstrapValidator');
			validator.validate();
			
			if(selectedDistrito > 0 && validator.isValid()) {
				if(inputPassword.val() === inputPasswordValidate.val()) {
					
					$.ajax({
						type: 'POST',
						data: $('#id_form').serialize(),
						url: 'registraCliente',
						success: function(data) {
							if(data.VALIDACION == "no-reset") {
								createInlineErroMessage($('#id_email'), 'Ingrese un email diferente', 'email');
								$('#id_email').addClass('inputErrorMessage');
							} else {
								limpiar();
								validator.resetForm();
							}
							
							mostrarMensaje(data.MENSAJE);
						},
						error: function() {
							mostrarMensaje(MSG_ERROR);
						}
					});
					
				} else {
					passwordDoesntMatch.innerHTML = 'Las contraseñas deben coincidir';
					inputPasswordValidate.after(passwordDoesntMatch);
				}
			}
		});
		
		$('#id_email').keyup(function() {
			if($('#emailErrorMessage')) {
				$('#id_email').removeClass('inputErrorMessage');
				$('#emailErrorMessage').remove();
			}
		});
		
		function limpiar() {
			$('#id_nombre').val('');
			$('#id_apellido').val('');
			$('#id_email').val('');
			$('#id_fecha_nacimiento').val('');
			$('#id_contrasena').val('');
			$('#id_validar_contrasena').val('');
			$('#select_distrito')[0].selectedIndex = 0;
			selectedDistrito = 0;
		}
	});
	
	</script>
	
</body>
</html>