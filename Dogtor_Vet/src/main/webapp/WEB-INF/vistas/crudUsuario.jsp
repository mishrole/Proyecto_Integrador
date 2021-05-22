<jsp:include page="validarSesion.jsp" />
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Expires" content="-1" />
	<meta http-equiv="Cache-Control" content="private" />
	<meta http-equiv="Cache-Control" content="no-store" />
	<meta http-equiv="Pragma" content="no-cache" />
	
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/dashboard.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<title>Usuario | Dogtor</title>
</head>
<body class="background__light__gray">

    <main id="dashboard">
        <div class="container-fluid align-items-stretch">
		
		<!-- Header on XS, SM, and MD -->
		<jsp:include page="header.jsp" />
            
            <div class="row">
                
                <!-- Menu on LG and XXL -->
                <jsp:include page="menu.jsp" />
                
                <!-- Dashboard Content -->
                <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-1 mt-5 menu__transition mx-auto">
                    <div class="content__body background__light__white menu__transition">
                        <div class="row justify-content-center">
                            <div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold">Usuario</p>
                            </div>
                            <div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
                                <div class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
                                    <input type="text" name="filtro_nombre_usuario" id="id_nombre_filtro" class="input__search title__color" placeholder="Buscar...">
                                    <i data-feather="search" class="icon__light"></i>
                                </div>
                                <div class="options__filter d-none d-lg-flex mx-2">
                                    <select name="select_time" id="id_select_time" class="select__time form-select">
                                        <option value="0">Este mes</option>
                                    </select>
                                </div>
                                <div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2">
                                    <i data-feather="message-square"></i>
                                </div>
                                <div id="btnProfile" class="options__profile mx-2">
                                    <img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
                                </div>
                        </div>
                        <div class="content__alert row">
                            <div class="col-12 mt-4 mb-2">
                                <div class="card__light">
                                    <div class="card__light__header d-flex justify-content-between my-3">
                                        <p class="font__subtitle title__color font__semibold">Lista de Usuarios</p>
                                        <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraUsuario" data-target="#id_modal_RegistraUsuario">
                                        	<i data-feather="plus"></i>
                                        	Nuevo
                                        </button>
                                        
                                    </div>
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaUsuario">
											<input type="text" id="id_elimina" name="codigo_usuario" class="d-none">
											<input type="text" id="id_visibilidad_elimina" name="codigo_visibilidad" class="d-none">
										</form>
                                        <div class="col-12 table-responsive">
                                            <table id="id_table" class="font__min display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="background__title">
                                                    <tr>
                                                        <th>ID</th>
														<th>Email</th>
														<th>Contraseña</th>
														<th>Nombre</th>
														<th>Apellido</th>
														<th>Nacimiento</th>
														<th>Distrito</th>
														<th>Estado</th>
														<th>Opciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            	</div>
            </div>
        </div>
    </main>
    
   	<div class="container-fluid">
   		<div class="modal fade p-0" id="id_modal_RegistraUsuario">
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
					                    
					                    <input type="text" id="id_visibilidad" name="codigo_visibilidad" value="1" class="d-none">
					                    
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
												<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_genero" name="genero_usuario" autocomplete="on" >
						                    		<label for="id_genero">Género</label>
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
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_rol" name="codigo_rol_usuario" aria-label="Default select example">
													  <option selected value="0">Seleccione Rol</option>
													</select>
													<label for="select_rol">Rol</label>
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
					                      <button class="w-100 btn btn-lg btn-primary btn__primary" type="button" id="registrar_usuario">Registrar</button>
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
    		<div class="modal-dialog modal-lg">
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
										  	
										  	<div class="col-12 col-md-6 mb-3">
												<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_genero_actualiza" name="genero_usuario" autocomplete="on" >
						                    		<label for="id_genero_actualiza">Género</label>
										  		</div>
										  	</div>
										  	
					                      </div>
					                      
					                      <div class="form-group row">
						                      <div class="col-12 col-md-6 mb-3">
												  	<div class="col form-floating">
											  			<input type="text" class="form-control" id="id_dni_actualiza" name="dni_usuario" autocomplete="on" >
							                    		<label for="id_dni_actualiza">DNI</label>
											  		</div>
											  	</div>
											  	<div class="col-12 col-md-6 mb-3">
												  	<div class="col form-floating">
											  			<input type="text" class="form-control" id="id_telefono_actualiza" name="telefono_usuario" autocomplete="on" >
							                    		<label for="id_telefono_actualiza">Teléfono</label>
											  		</div>
						                      	</div>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-4 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_rol_actualiza" name="codigo_rol_usuario" aria-label="Default select example">
													  <option selected value="0">Seleccione Rol</option>
													</select>
													<label for="select_rol_actualiza">Rol</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-4 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_visibilidad_actualiza" name="codigo_visibilidad" aria-label="Default select example">
													  <option selected value="0">Seleccione Estado</option>
													</select>
													<label for="select_visibilidad_actualiza">Estado</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-4 mb-3">
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
					                      
					                      <button class="w-100 btn btn-lg btn-primary btn__primary" type="button" id="actualizar_usuario">Actualizar</button>
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

	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <!-- Custom JS -->
    <script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	<script type="text/javascript" src="js/menuDashboard.js"></script>

	<script type="text/javascript">

    // Load icons
    feather.replace();

	var selectedDistritoActualiza, selectedRolActualiza, selectedVisibilidadActualiza;
	
	function agregarGrilla(lista) {
		 $('#id_table').DataTable().clear();
		 $('#id_table').DataTable().destroy();
		 $('#id_table').DataTable({
				data: lista,
				searching: false,
				ordering: true,
				processing: true,
				pageLength: 6,
				lengthChange: false,
				responsive: true,
				columns:[
					{data: "codigo_usuario"},
					{data: "email_usuario"},
					{data: "contrasena_usuario"},
					{data: "nombre_usuario"},
					{data: "apellido_usuario"},
					{data: "fecha_nacimiento_usuario"},
					{data: "distrito.nombre_distrito"},
					{data: "visibilidad.nombre_visibilidad"},
					{data: function(row, type, val, meta){
						var btnEditar ='<button type="button" class="btn btn-info btn-sm btnModal_ActualizaUsuario" onclick="editar(\'' + row.codigo_usuario +
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
								'\',\'' + row.codigo_visibilidad +
								'\')"><i data-feather="edit-2"></i></button>';
								
						let btnVisibilidad = '';
						
						if(row.codigo_visibilidad === 1) {
						    btnVisibilidad = '<button type="button" class="btn btn-warning btn-sm" onclick="cambiarVisibilidad(\'' + row.codigo_usuario + '\',\'' + row.codigo_visibilidad + '\')"><i data-feather="eye-off"></i></button>';
						} else {
						    btnVisibilidad = '<button type="button" class="btn btn-warning btn-sm" onclick="cambiarVisibilidad(\'' + row.codigo_usuario + '\',\'' + row.codigo_visibilidad + '\')"><i data-feather="eye"></i></button>';
						}
						
						let btnEliminar = '<button type="button" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.codigo_usuario + '\')"><i data-feather="trash"></i></button>';
						
				    	
						return btnEditar + btnVisibilidad + btnEliminar;
					},className:'text-center mx-auto d-flex justify-content-center'},	
				]                                     
		    });
		 	
		 	// Reload icons
		    feather.replace();
		 	
		    $('#id_table').DataTable().columns.adjust().draw();
		}
	
	    function listarUsuariosDatatable(nombre) {
			$.getJSON("listaUsuarioPorNombre", {"nombre_usuario": nombre}, function(lista) {
				agregarGrilla(lista);
			});
		}
		
		function cambiarVisibilidad(codigo_usuario, codigo_visibilidad) {
			mostrarMensajeConfirmacion("¿Desea modificar la visibilidad del registro?", accionVisibilidad, null, {codigo_usuario, codigo_visibilidad});
		}
		
		function accionVisibilidad(data) {

			$('#id_elimina').val(data.codigo_usuario);
			
			let nuevoEstado;
			
			if(data.codigo_visibilidad === "1") {
				nuevoEstado = 2;
			} else if(data.codigo_visibilidad === "2") {
				nuevoEstado = 1;
			}
			
			$('#id_visibilidad_elimina').val(nuevoEstado);
			
			$.ajax({
				type: "POST",
				url: "actualizaVisibilidadUsuario",
				data: $('#id_form_elimina').serialize(),
				success: function(data) {
					listarUsuariosDatatable("");
					mostrarMensaje(data.MENSAJE);
				},
				error: function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
		}
		
		function eliminar(codigo_usuario) {
			mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar, null, codigo_usuario);
		}
		
		function accionEliminar(codigo_usuario) {
			$('#id_elimina').val(codigo_usuario);
			
			$.ajax({
				type: "POST",
				url: "eliminaUsuario",
				data: $('#id_form_elimina').serialize(),
				success: function(data) {
					//agregarGrilla(data.lista);
					listarUsuariosDatatable("");
					mostrarMensaje(data.MENSAJE);
				},
				error: function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
			
		}
		
		function editar(codigo_usuario, email_usuario, contrasena_usuario,
		nombre_usuario, apellido_usuario, fecha_nacimiento_usuario,
		genero_usuario, dni_usuario, direccion_usuario, referencia_usuario,
		telefono_usuario, codigo_distrito, codigo_visibilidad) {
				
			selectedDistritoActualiza = codigo_distrito;
			selectedVisibilidadActualiza = codigo_visibilidad;
			
			$.getJSON("listaRolPorUsuario", {"codigo_usuario": codigo_usuario}, function(lista) {
				$('#select_rol_actualiza').val(lista[0].codigo_rol_usuario);
				selectedRolActualiza = lista[0].codigo_rol_usuario;
			});
			
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
			$('#select_visibilidad_actualiza').val(codigo_visibilidad);
			
			$('#id_modal_ActualizaUsuario').modal("show");
		}
		
	$(document).ready(function() {
		
		// Mostrar usuarios al cargar la página
		listarUsuariosDatatable("");
		
		// Selects	
		
		const selectDistrito = $('#select_distrito');
		const selectDistritoActualiza = $('#select_distrito_actualiza');
		
		const selectRol = $('#select_rol');
		const selectRolActualiza = $('#select_rol_actualiza');
		
		const selectVisibilidadActualiza = $('#select_visibilidad_actualiza');
		
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
		
		// Filtrar Usuario por Nombre
		
		$('#id_nombre_filtro').keydown(function(e) {
		    if(e.key === 'Enter' || e.keyCode === 13) {
		        listarUsuariosDatatable($('#id_nombre_filtro').val());
		    }
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
		
		// Get Visibilidad
		
		function generarSelectVisibilidad(idSelectVisibilidad) {
			$.getJSON('listaVisibilidad', function(data) {
				$.each( data, function( index, value ) {
					let option = document.createElement('option');
					option.value = value.codigo_visibilidad;
					option.text = value.nombre_visibilidad;
					idSelectVisibilidad.append(option);
				});
			});
		}
		
		generarSelectVisibilidad(selectVisibilidadActualiza);
		
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
		
		selectVisibilidadActualiza.change(function(e) {
			selectedVisibilidadActualiza = e.target.selectedIndex;
			validateSelect(selectVisibilidadActualiza, selectedVisibilidadActualiza, 'visibilidad');
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
						listarUsuariosDatatable("");
						$('#id_modal_RegistraUsuario').modal("hide");
						mostrarMensaje(data.MENSAJE);
						limpiar();
						validator.resetForm();
					},
					error: function() {
						mostrarMensaje(MSG_ERROR);
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
			validateSelect(selectVisibilidadActualiza, selectedVisibilidadActualiza, 'visibilidad');
			
			if(selectedDistritoActualiza > 0 && selectedRolActualiza > 0 && selectedVisibilidadActualiza > 0 && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form_actualiza').serialize(),
					url: 'actualizaUsuario',
					success: function(data) {
						listarUsuariosDatatable("");
						$('#id_modal_ActualizaUsuario').modal("hide");
						mostrarMensaje(data.MENSAJE);
						limpiarActualiza();
						validator.resetForm();
					},
					error: function() {
						mostrarMensaje(MSG_ERROR);
					}
				});
			}
		});

		function limpiar() {
			$('#id_usuario').val('');
			$('#id_email').val('');
			$('#id_contrasena').val('');
			$('#id_nombre').val('');
			$('#id_apellido').val('');
			$('#id_fecha_nacimiento').val('');
			$('#id_genero').val('');
			$('#id_dni').val('');
			$('#id_direccion').val('');
			$('#id_referencia').val('');
			$('#id_telefono').val('');
			$('#select_distrito')[0].selectedIndex = 0;
			$('#select_rol')[0].selectedIndex = 0;
			selectedDistrito = 0;
			selectedRol = 0;
		}
		
		function limpiarActualiza() {
			$('#id_usuario_actualiza').val('');
			$('#id_email_actualiza').val('');
			$('#id_contrasena_actualiza').val('');
			$('#id_nombre_actualiza').val('');
			$('#id_apellido_actualiza').val('');
			$('#id_fecha_nacimiento_actualiza').val('');
			$('#id_genero_actualiza').val('');
			$('#id_dni_actualiza').val('');
			$('#id_direccion_actualiza').val('');
			$('#id_referencia_actualiza').val('');
			$('#id_telefono_actualiza').val('');
			$('#select_distrito_actualiza')[0].selectedIndex = 0;
			$('#select_rol_actualiza')[0].selectedIndex = 0;
			$('#select_visibilidad_actualiza')[0].selectedIndex = 0;
			selectedDistritoActualiza = 0;
			selectedRolActualiza = 0;
			selectedVisibilidadActualiza = 0;
		}

    });
	</script>
</body>
</html>