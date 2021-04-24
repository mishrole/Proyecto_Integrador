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
	
	<title>CRUD Usuario</title>
</head>
<body>

   <jsp:include page="header.jsp" />

    <div class="container">
    	<div class="row">
    		<div class="col-12" >
    		
    			<div class="row mt-3 mb-3">
    				<div class="col-12">
	    				<div class="col-10 col-md-2">
							<button type="button" data-toggle="modal" id="id_btnModal_RegistraUsuario" data-target="#id_modal_RegistraUsuario" class='w-100 btn btn-primary btn-generic'>Nuevo Usuario</button>
						</div>
    				</div>
    			</div>
    		
				<form id="id_form_elimina" action="eliminaUsuario">
					<input type="hidden" id="id_elimina" name="codigo_usuario">
				</form>
		     
				<div class="row mt-3 mb-3 col-sm-12 justify-content-center align-items-center d-flex">
					<div class="col-10 col-md-6" >
						<input class="form-control" id="id_nombre_filtro" name="filtro_nombre_usuario" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
					</div>
					<div class="col-10 col-md-2" >
						<button type="button" class="w-100 btn btn-primary" id="filtra_usuario">Filtrar Usuarios</button>
					</div>
				</div>
					
				<div class="row mt-3 mb-3" > 
					<div class="col-12" >
						<div class="content table-responsive" >
						
							<table id="id_table" class="table table-borderless" >
								<thead>
									<tr>
										<th>ID</th>
										<th>Email</th>
										<th>Contraseña</th>
										<th>Nombre</th>
										<th>Apellido</th>
										<th>Nacimiento</th>
										<th>Género</th>
										<th>DNI</th>
										<th>Dirección</th>
										<th>Referencia</th>
										<th>Teléfono</th>
										<th>Distrito</th>
										<th>Actualiza</th>
										<th>Elimina</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>	
							
						</div>	
					</div>
				</div>
		  </div>
    	</div>
    	
    	<div class="modal fade" id="id_modal_RegistraUsuario">
    		<div class="modal-dialog modal-lg">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Registro de Usuario</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_registra">
					                    
					                    <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="email" class="form-control" id="id_email" name="email_usuario" autocomplete="on" >
						                   			<label for="id_email">Email</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_contrasena" name="contrasena_usuario" autocomplete="on" >
						                    		<label for="id_contrasena">Contraseña</label>
										  		</div>
										  	</div>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_nombre" name="nombre_usuario" autocomplete="on" >
						                   			<label for="id_nombre">Nombres</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_apellido" name="apellido_usuario" autocomplete="on" >
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
							                      	<select class="form-select" id="select_rol" name="codigo_rol_usuario" aria-label="Default select example">
													  <option selected value="0">Seleccione Rol</option>
													</select>
													<label for="select_rol">Rol</label>
					                      		</div>
										  	</div>
					                      </div>
					                      
					                      <div class="form-group row">
						                      <div class="col-12 col-md-6 mb-3">
												  	<div class="col form-floating">
											  			<input type="text" class="form-control" id="id_dni" name="dni_usuario" autocomplete="on" >
							                    		<label for="id_dni">DNI</label>
											  		</div>
											  	</div>
											  	<div class="col-12 col-md-6 mb-3">
												  	<div class="col form-floating">
											  			<input type="text" class="form-control" id="id_telefono" name="telefono_usuario" autocomplete="on" >
							                    		<label for="id_telefono">Teléfono</label>
											  		</div>
						                      	</div>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
												<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_genero" name="genero_usuario" autocomplete="on" >
						                    		<label for="id_genero">Género</label>
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
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_direccion" name="direccion_usuario" autocomplete="on" >
						                   			<label for="id_direccion">Dirección</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_referencia" name="referencia_usuario" autocomplete="on" >
						                    		<label for="id_referencia">Referencia</label>
										  		</div>
										  	</div>
					                      </div>
					                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="registrar_usuario">Registrar</button>
					                    </form>
					                  </main>
					            </div>
					        </div>
    					</div>
    				</div>
    				<div class="modal-footer">
    					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
    				</div>
    			</div>
    		</div>
    	</div>
    	
    	<div class="modal fade" id="id_modal_ActualizaUsuario">
    		<div class="modal-dialog">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Actualizar Usuario</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_actualiza">
					                    
					                      <input type="text" id="id_usuario_actualiza" name="codigo_usuario" class="d-none">
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="email" class="form-control" id="id_email_actualiza" name="email_usuario" autocomplete="on" >
						                   			<label for="id_email_actualiza">Email</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_contrasena_actualiza" name="contrasena_usuario" autocomplete="on" >
						                    		<label for="id_contrasena_actualiza">Contraseña</label>
										  		</div>
										  	</div>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_nombre_actualiza" name="nombre_usuario" autocomplete="on" >
						                   			<label for="id_nombre_actualiza">Nombres</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_apellido_actualiza" name="apellido_usuario" autocomplete="on" >
						                    		<label for="id_apellido_actualiza">Apellidos</label>
										  		</div>
										  	</div>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="date" class="form-control" id="id_fecha_nacimiento_actualiza" name="fecha_nacimiento_usuario" autocomplete="on">
					                        		<label for="id_fecha_nacimiento_actualiza">Fecha de nacimiento</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-3 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_dni_actualiza" name="dni_usuario" autocomplete="on" >
						                    		<label for="id_dni_actualiza">DNI</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-3 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_telefono_actualiza" name="telefono_usuario" autocomplete="on" >
						                    		<label for="id_telefono_actualiza">Teléfono</label>
										  		</div>
					                      	</div>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
												<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_genero_actualiza" name="genero_usuario" autocomplete="on" >
						                    		<label for="id_genero_actualiza">Género</label>
										  		</div>
										  	</div>
											<div class="col-12 col-md-6 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_distrito_actualiza" name="codigo_distrito" aria-label="Default select example">
													  <option selected value="0">Seleccione Distrito</option>
													</select>
													<label for="select_distrito_actualiza">Distrito</label>
					                      		</div>
										  	</div>
										  </div>

					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_direccion_actualiza" name="direccion_usuario" autocomplete="on" >
						                   			<label for="id_direccion_actualiza">Dirección</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_referencia_actualiza" name="referencia_usuario" autocomplete="on" >
						                    		<label for="id_referencia_actualiza">Referencia</label>
										  		</div>
										  	</div>
					                      </div>
					                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="actualizar_usuario">Actualizar</button>
					                    </form>
					                  </main>
					            </div>
					        </div>
    					</div>
    				</div>
    				<div class="modal-footer">
    					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	
	<script type="text/javascript">
	
	var selectedDistritoActualiza, selectedRolActualiza;
	
	function agregarGrilla(lista) {
		 $('#id_table').DataTable().clear();
		 $('#id_table').DataTable().destroy();
		 $('#id_table').DataTable({
				data: lista,
				searching: false,
				ordering: true,
				processing: true,
				pageLength: 5,
				lengthChange: false,
				columns:[
					{data: "codigo_usuario"},
					{data: "email_usuario"},
					{data: "contrasena_usuario"},
					{data: "nombre_usuario"},
					{data: "apellido_usuario"},
					{data: "fecha_nacimiento_usuario"},
					{data: "genero_usuario"},
					{data: "dni_usuario"},
					{data: "direccion_usuario"},
					{data: "referencia_usuario"},
					{data: "telefono_usuario"},
					{data: "codigo_distrito"},
					{data: function(row, type, val, meta){
						var salida='<button type="button" class="btn btn-info btn-sm btnModal_ActualizaUsuario" onclick="editar(\'' + row.codigo_usuario +
								'\',\'' + row.email_usuario +
								'\',\'' + row.contrasena_usuario +
								'\',\'' + row.nombre_usuario +
								'\',\'' + row.apellido_usuario +
								'\',\'' + row.fecha_nacimiento_usuario +
								'\',\'' + row.genero_usuario +
								'\',\'' + row.dni_usuario +
								'\',\'' + row.direccion_usuario  +
								'\',\'' + row.referencia_usuario +
								'\',\'' + row.telefono_usuario +
								'\',\'' + row.codigo_distrito +
								'\')">Editar</button>';
						return salida;
					},className:'text-center'},	
					{data: function(row, type, val, meta){
					    var salida='<button type="button" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.codigo_usuario + '\')">Eliminar</button>';
						return salida;
					},className:'text-center'},													
				]                                     
		    });
		}
		
		function eliminar(codigo_usuario) {
			mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar, null, codigo_usuario);
			console.log("Código usuario en eliminar "+ codigo_usuario);
		}
		
		function accionEliminar(codigo_usuario) {
			$('#id_elimina').val(codigo_usuario);
			console.log("Código usuario en accionEliminar "+ codigo_usuario);
			$.ajax({
				type: "POST",
				url: "eliminaUsuario",
				data: $('#id_form_elimina').serialize(),
				success: function(data) {
					agregarGrilla(data.lista);
					mostrarMensaje(data.MENSAJE);
				},
				error: function() {
					mostrarMensaje(MSG_ERROR);
				}
			})
		}
		
		function editar(codigo_usuario, email_usuario, contrasena_usuario,
		nombre_usuario, apellido_usuario, fecha_nacimiento_usuario,
		genero_usuario, dni_usuario, direccion_usuario, referencia_usuario,
		telefono_usuario, codigo_distrito) {
				
			selectedDistritoActualiza = codigo_distrito;
			console.log(codigo_usuario);
			
			$('#id_usuario_actualiza').val(codigo_usuario);
			$('#id_email_actualiza').val(email_usuario);
			$('#id_contrasena_actualiza').val(contrasena_usuario);
			$('#id_nombre_actualiza').val(nombre_usuario);
			$('#id_apellido_actualiza').val(apellido_usuario);
			$('#id_fecha_nacimiento_actualiza').val(fecha_nacimiento_usuario);
			$('#id_genero_actualiza').val(genero_usuario);
			$('#id_dni_actualiza').val(dni_usuario);
			$('#id_direccion_actualiza').val(direccion_usuario);
			$('#id_referencia_actualiza').val(referencia_usuario);
			$('#id_telefono_actualiza').val(telefono_usuario);
			$('#select_distrito_actualiza').val(codigo_distrito);
			
			$('#id_modal_ActualizaUsuario').modal("show");
		}
		
	$(document).ready(function() {
		
		// Selects	
		
		const selectDistrito = $('#select_distrito');
		const selectDistritoActualiza = $('#select_distrito_actualiza');
		
		const selectRol = $('#select_rol');
		const selectRolActualiza = $('#select_rol_actualiza');
		
		// Botones
		
		const btnRegister = $('#registrar_usuario');
		const btnUpdate = $('#actualizar_usuario');
		const btnFilter = $('#filtra_usuario');
		const btnModalRegister = $('#id_btnModal_RegistraUsuario');
		
		// Modals
		
		const modalRegister = $('#id_modal_RegistraUsuario');
		
		// Abrir Modal con Click
		
		btnModalRegister.click(function() {
			modalRegister.modal("show");
		});
		
		// Filtrar Mascota por Nombre
		
		btnFilter.click(function() {
			const filterText = $('#id_nombre_filtro').val();
			
			$.getJSON("listaUsuarioPorNombre", {"nombre_usuario": filterText}, function(lista) {
				agregarGrilla(lista);
			});
		});
		
		// Get Rol
		
		function generarSelectRol(idSelectRol) {
			$.getJSON('listaRol', function(data) {
				$.each( data, function( index, value ) {
					let option = document.createElement('option');
					option.value = value.codigo_rol_usuario;
					option.text = value.nombre_rol_usuario;
					idSelectRol.append(option);
				});
			});
		}
		
		generarSelectRol(selectRol);
		generarSelectRol(selectRolActualiza);
		
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
		generarSelectDistrito(selectDistritoActualiza);
		
		var selectedDistrito, selectedRol;
		
		// Validar selects cuando cambie el option en Registrar
		
		selectDistrito.change(function(e) {
			selectedDistrito = e.target.selectedIndex;
			validateSelect(selectDistrito, selectedDistrito, 'distrito');
		});
		
		selectRol.change(function(e) {
			selectedRol= e.target.selectedIndex;
			validateSelect(selectRol, selectedRol, 'rol');
		});
		
		
		// Validar selects cuando cambie el option en Actualizar
		
		selectDistritoActualiza.change(function(e) {
			selectedRolActualiza = e.target.selectedIndex;
			validateSelect(selectDistritoActualiza, selectedDistritoActualiza, 'distrito');
		});
		
		selectRolActualiza.change(function(e) {
			selectedRolActualiza = e.target.selectedIndex;
			validateSelect(selectRolActualiza, selectedRolActualiza, 'rol');
		});
		
		// Bootstrap validator
		
		$('#id_form_registra').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				nombre_usuario: {
					selector: '#id_nombre',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
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
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
						stringLength: {
							min: 3,
							max: 40,
							message: 'El nombre debe contener entre 3 a 40 caracteres'
						},
					}
				},
				fecha_nacimiento_usuario: {
					selector: '#id_fecha_nacimiento',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
					}
				},
				email_usuario: {
					selector: '#id_email',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
					}
				},
				contrasena_usuario: {
					selector: '#id_contrasena',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
					}
				}
			}
		});
		
		$('#id_form_actualiza').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				nombre_usuario: {
					selector: '#id_nombre_actualiza',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
						stringLength: {
							min: 3,
							max: 40,
							message: 'El nombre debe contener entre 3 a 40 caracteres'
						},
					}
				},
				apellido_usuario: {
					selector: '#id_apellido_actualiza',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
						stringLength: {
							min: 3,
							max: 40,
							message: 'El nombre debe contener entre 3 a 40 caracteres'
						},
					}
				},
				fecha_nacimiento_usuario: {
					selector: '#id_fecha_nacimiento_actualiza',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
					}
				},
				email_usuario: {
					selector: '#id_email_actualiza',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
					}
				},
				contrasena_usuario: {
					selector: '#id_contrasena_actualiza',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
					}
				}
			}
		});
		
		// Registrar usuario
	
		btnRegister.click(function() {
			var validator = $('#id_form_registra').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectDistrito, selectedDistrito, 'distrito');
			validateSelect(selectRol, selectedRol, 'rol');
			
			if(selectedDistrito > 0 && selectedRol > 0 && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form_registra').serialize(),
					url: 'registraUsuario',
					success: function(data) {
						agregarGrilla(data.lista);
						$('#id_modal_RegistraUsuario').modal("hide");
						mostrarMensaje(data.MENSAJE)
						limpiar();
						validator.resetForm()
					},
					error: function() {
						mostrarMensaje(MSG_ERROR)
					}
				});
			}
		});
		
		// Actualizar usuario
		
		btnUpdate.click(function() {
			var validator = $('#id_form_actualiza').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectDistritoActualiza, selectedDistritoActualiza, 'distrito');
			validateSelect(selectRolActualiza, selectedRolActualiza, 'rol');
			
			if(selectedDistritoActualiza > 0 && selectedRolActualiza && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form_actualiza').serialize(),
					url: 'actualizaUsuario',
					success: function(data) {
						agregarGrilla(data.lista);
						$('#id_modal_ActualizaUsuario').modal("hide");
						mostrarMensaje(data.MENSAJE)
						limpiarActualiza();
						validator.resetForm()
					},
					error: function() {
						mostrarMensaje(MSG_ERROR)
					}
				});
			}
		});

		function limpiar() {
			$('#id_nombre').val('');
			$('#select_especie')[0].selectedIndex = 0;
			$('#select_raza')[0].selectedIndex = 0;
			$('#select_color')[0].selectedIndex = 0;
			$('#select_sexo')[0].selectedIndex = 0;
			$('#id_fecha_nacimiento').val('');
			$('#id_identificacion').val('');
			$('#id_sanitaria').val('');
			selectedEspecie = 0;
			selectedRaza = 0;
			selectedColor = 0;
			selectedSexo = 0;
		}
		
		function limpiarActualiza() {
			$('#id_mascota_actualiza').val('');
			$('#id_propietario_actualiza').val('');
			$('#id_nombre_actualiza').val('');
			$('#id_foto_actualiza').val('');
			$('#select_raza_actualiza')[0].selectedIndex = 0;
			$('#select_sexo_actualiza')[0].selectedIndex = 0;
			$('#select_especie_actualiza')[0].selectedIndex = 0;
			$('#select_color_actualiza')[0].selectedIndex = 0;
			$('#id_fecha_nacimiento_actualiza').val('');
			$('#id_identificacion_actualiza').val('');
			$('#id_sanitaria_actualiza').val('');
			selectedEspecieActualiza = 0;
			selectedRazaActualiza  = 0;
			selectedColorActualiza  = 0;
			selectedSexoActualiza  = 0;
		}
	
	});
	
	
	</script>
</body>
</html>