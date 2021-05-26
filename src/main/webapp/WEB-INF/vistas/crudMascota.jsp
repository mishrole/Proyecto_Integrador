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
	<title>Mascota | Dogtor</title>
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
                                <p class="font__title title__color font__semibold">Mascota</p>
                            </div>
                            <div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
                                <div class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
                                    <input type="text" name="filtro_nombre_mascota" id="id_nombre_filtro" class="input__search title__color" placeholder="Buscar...">
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
                                        <p class="font__subtitle title__color font__semibold">Lista de Mascotas</p>
                                        <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraMascota" data-target="#id_modal_RegistraMascota">
                                        	<i data-feather="plus"></i>
                                        	Nuevo
                                        </button>
                                        
                                    </div>
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaMascota">
											<input type="text" id="id_elimina" name="codigo_mascota" class="d-none">
											<input type="text" id="id_visibilidad_elimina" name="codigo_visibilidad" class="d-none">
										</form>
                                        <div class="col-12 table-responsive">
                                            <table id="id_table" class="font__min display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="background__title">
                                                    <tr>
														<th>ID</th>
														<th>Dueño</th>
														<th>Nombre</th>
														<th>Foto</th>
														<th>Raza</th>
														<th>Sexo</th>
														<th>Especie</th>
														<th>Color</th>
														<th>Estado</th>
														<th>Opciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody></tbody>
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
   		<div class="modal fade p-0" id="id_modal_RegistraMascota">
    		<div class="modal-dialog modal-lg">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Registro de Mascota</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_registra">
					                    
					                    <input type="text" id="id_propietario" name="codigo_propietario" value="${sessionScope.objUsuario.codigo_usuario}" class="d-none">
					                    <input type="text" id="id_visibilidad" name="codigo_visibilidad" value="1" class="d-none">
					                    
					                    <div class="form-group row">
					                      	<div class="col-12 mb-3">
					                      		<div class="form-floating">
					                      			<input type="file" class="form-control" id="id_foto" name="foto_mascota" />
					                      		</div>
					                      	</div>
										</div>
										
										<div class="form-group row">
					                      	<div class="col-12 mb-3">
					                      		<div class="form-floating">
					                      			<input type="text" class="form-control" id="id_nombre" name="nombre_mascota" autocomplete="on" >
						                      		<label for="id_nombre">Nombre</label>
					                      		</div>
					                      	</div>
										</div>
										
										<div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_especie" name="codigo_especie_mascota" aria-label="Select">
													  <option selected value="0">Seleccione Especie</option>
													</select>
													<label for="select_especie">Especie</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
							                      	<select class="form-select" id="select_raza" name="codigo_raza_mascota" aria-label="Select">
													  <option selected value="0">Seleccione Raza</option>
													</select>
													<label for="select_raza">Raza</label>
						                      </div>
										  	</div>
										  </div>
										  
										<div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_color" name="codigo_color_mascota" aria-label="Select">
													  <option selected value="0">Seleccione Color</option>
													</select>
													<label for="select_color">Color</label>
						                      </div>
					                      	</div>
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_sexo" name="codigo_sexo_mascota" aria-label="Select">
													  <option selected value="0">Seleccione Sexo</option>
													</select>
													<label for="select_sexo">Sexo</label>
						                      </div>
					                      	</div>
					                      </div>
					                    
					                     <div class="form-group form-floating mb-3">
					                        <input type="date" class="form-control" id="id_fecha_nacimiento" name="fecha_nacimiento_mascota" autocomplete="on">
					                        <label for="id_fecha_nacimiento">Fecha de nacimiento</label>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_identificacion" name="codigo_identificacion_mascota" autocomplete="on" >
						                   			<label for="id_identificación"># Identificación</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_sanitaria" name="codigo_cartilla_sanitaria" autocomplete="on" >
						                    		<label for="id_sanitaria"># Cartilla Sanitaria</label>
										  		</div>
										  	</div>
					                      </div>
					                    
					                      <button class="w-100 btn btn-lg btn-primary btn__primary" type="button" id="registrar_mascota">Registrar</button>
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
    	
    	<div class="modal fade" id="id_modal_ActualizaMascota">
    		<div class="modal-dialog modal-lg">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Actualizar Mascota</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_actualiza">
					                    
					                      <input type="text" id="id_propietario_actualiza" name="codigo_propietario" class="d-none">
					                      <input type="text" id="id_mascota_actualiza" name="codigo_mascota" class="d-none">
					                      
					                      <div class="form-group row">
					                      	<div class="col-12 mb-3">
					                      		<div class="form-floating">
					                      			<input type="file" class="form-control" id="id_foto_actualiza" name="foto_mascota" />
					                      		</div>
					                      	</div>
					                      </div>
					                      
											<div class="form-group row">
												<div class="col-12 col-md-8 mb-3">
							                      <div class="form-floating">
							                      	<input type="text" class="form-control" id="id_nombre_actualiza" name="nombre_mascota" placeholder="John" autocomplete="on" >
							                      	<label for="id_nombre_actualiza">Nombre</label>
							                      </div>
							                      
						                      	</div>
												<div class="col-12 col-md-4 mb-3">
					                        		<div class="form-floating">
							  							<input type="date" class="form-control" id="id_fecha_nacimiento_actualiza" name="fecha_nacimiento_mascota" autocomplete="on">
					                        			<label for="id_fecha_nacimiento_actualiza">Fecha de nacimiento</label>                    
							                      </div>
					                      		</div>
											</div>
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_especie_actualiza" name="codigo_especie_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Especie</option>
													</select>
													<label for="select_especie_actualiza">Especie</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
							                      	<select class="form-select" id="select_raza_actualiza" name="codigo_raza_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Raza</option>
													</select>
													<label for="select_raza_actualiza">Raza</label>
						                      </div>
										  	</div>
										  </div>
										  
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_color_actualiza" name="codigo_color_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Color</option>
													</select>
													<label for="select_color_actualiza">Color</label>
						                      </div>
					                      	</div>
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_sexo_actualiza" name="codigo_sexo_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Sexo</option>
													</select>
													<label for="select_sexo_actualiza">Sexo</label>
						                      </div>
					                      	</div>
					                      </div>
					                      
										  <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_visibilidad_actualiza" name="codigo_visibilidad" aria-label="Default select example">
													  <option selected value="0">Seleccione Estado</option>
													</select>
													<label for="select_visibilidad_actualiza">Estado</label>
						                      </div>
					                      	</div>
										  	<div class="col-12 col-md-3 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_identificacion_actualiza" name="codigo_identificacion_mascota" autocomplete="on" >
						                   			<label for="id_identificacion_actualiza"># Identificación</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-3 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_sanitaria_actualiza" name="codigo_cartilla_sanitaria" autocomplete="on" >
						                    		<label for="id_sanitaria_actualiza"># Cartilla Sanitaria</label>
										  		</div>
										  	</div>
					                      </div>
					                      
					                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="actualizar_mascota">Actualizar</button>
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

    var selectedColorActualiza, selectedSexoActualiza, selectedRazaActualiza, selectedEspecieActualiza, selectedVisibilidadActualiza;
	
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
					{data: "codigo_mascota"},
					{data: "codigo_propietario"},
					{data: "nombre_mascota"},
					{data: function(row, type, val, meta) {
						
						var salida = "";
						if(row.foto_mascota == null) {
							salida = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
						} else if(row.foto_mascota.length > 0) {
							 salida = "<img src='data:image/png;base64," +row.foto_mascota+ "' class='img__table--mini' alt='Pet image'>";
						} else {
							salida = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
						}
						
						return salida;
					}, className: 'text-center'},
					{data: "raza.nombre_raza_mascota"},
					{data: "sexo.nombre_sexo_mascota"},
					{data: "especie.nombre_especie_mascota"},
					{data: "color.nombre_color_mascota"},
					{data: "visibilidad.nombre_visibilidad"},
					{data: function(row, type, val, meta) {
						var btnActualizar='<button type="button" class="btn btn-info btn-sm mx-1 btnModal_ActualizaMascota" onclick="editar(\'' + row.codigo_mascota +
								'\',\'' + row.codigo_propietario +
								'\',\'' + row.nombre_mascota +
								'\',\'' + row.foto_mascota +
								'\',\'' + row.codigo_raza_mascota +
								'\',\'' + row.codigo_sexo_mascota +
								'\',\'' + row.codigo_especie_mascota +
								'\',\'' + row.codigo_color_mascota +
								'\',\'' + row.fecha_nacimiento_mascota  +
								'\',\'' + row.codigo_identificacion_mascota +
								'\',\'' + row.codigo_cartilla_sanitaria +
								'\',\'' + row.codigo_visibilidad +
								'\')"><i data-feather="edit-2"></i></button>';
						
						let btnMostrarOcultar = '';
						
						if(row.codigo_visibilidad === 1) {
							btnMostrarOcultar = '<button type="button" class="btn btn-warning btn-sm" onclick="cambiarVisibilidad(\'' + row.codigo_mascota + '\',\'' + row.codigo_visibilidad + '\')"><i data-feather="eye-off"></i></button>';
						} else {
							btnMostrarOcultar = '<button type="button" class="btn btn-warning btn-sm" onclick="cambiarVisibilidad(\'' + row.codigo_mascota + '\',\'' + row.codigo_visibilidad + '\')"><i data-feather="eye"></i></button>';
						}
						
						let btnEliminar = '<button type="button" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.codigo_mascota + '\')"><i data-feather="trash"></i></button>';
						
						return btnActualizar + btnMostrarOcultar + btnEliminar;
					},className:'text-center mx-auto d-flex justify-content-center'},
				]                                                   
		    });
		 	
		 	// Reload icons
		    feather.replace();
		 	
		 	$('#id_table').DataTable().columns.adjust().draw();
		}
		
		function listarMascotasDatatable(nombre) {
			$.getJSON("listaMascotaPorNombre", {"nombre_mascota": nombre}, function(lista) {
				agregarGrilla(lista);
			});
		}
		
		function cambiarVisibilidad(codigo_mascota, codigo_visibilidad) {
			mostrarMensajeConfirmacion("¿Desea modificar la visibilidad del registro?", accionVisibilidad, null, {codigo_mascota, codigo_visibilidad});
		}
		
		function accionVisibilidad(data) {
			$('#id_elimina').val(data.codigo_mascota);
			
			let nuevoEstado;
			
			if(data.codigo_visibilidad === "1") {
				nuevoEstado = 2;
			} else if(data.codigo_visibilidad === "2") {
				nuevoEstado = 1;
			}
			
			$('#id_visibilidad_elimina').val(nuevoEstado);
			
			$.ajax({
				type: "POST",
				url: "actualizaVisibilidadMascota",
				data: $('#id_form_elimina').serialize(),
				success: function(data) {
				    listarMascotasDatatable("");
					mostrarMensaje(data.MENSAJE);
				},
				error: function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
		}
		
		function accionEliminar(codigo_mascota) {
			$('#id_elimina').val(codigo_mascota);
			$.ajax({
				type: "POST",
				url: "eliminaMascota",
				data: $('#id_form_elimina').serialize(),
				success: function(data) {
				    listarMascotasDatatable("");
					mostrarMensaje(data.MENSAJE);
				},
				error: function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
		}
		
		function eliminar(codigo_mascota) {
			mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar, null, codigo_mascota);
		}
		
		function editar(codigo_mascota, codigo_propietario, nombre_mascota, foto_mascota,
		codigo_raza_mascota, codigo_sexo_mascota, codigo_especie_mascota, codigo_color_mascota, 
		fecha_nacimiento_mascota, codigo_identificacion_mascota, codigo_cartilla_sanitaria, codigo_visibilidad) {
					
			selectedColorActualiza = codigo_color_mascota;
			selectedSexoActualiza = codigo_sexo_mascota;
			selectedRazaActualiza = codigo_raza_mascota;
			selectedEspecieActualiza = codigo_especie_mascota;
			selectedVisibilidadActualiza = codigo_visibilidad;
			
			$('#id_mascota_actualiza').val(codigo_mascota);
			$('#id_propietario_actualiza').val(codigo_propietario);
			$('#id_nombre_actualiza').val(nombre_mascota);
			$('#select_sexo_actualiza').val(codigo_sexo_mascota);
			$('#select_especie_actualiza').val(codigo_especie_mascota);
			$('#select_color_actualiza').val(codigo_color_mascota);
			$('#id_fecha_nacimiento_actualiza').val(fecha_nacimiento_mascota);
			$('#id_identificacion_actualiza').val(codigo_identificacion_mascota);
			$('#id_sanitaria_actualiza').val(codigo_cartilla_sanitaria);
			$('#select_visibilidad_actualiza').val(codigo_visibilidad);
			
			$.getJSON('listaRaza', {"especie":codigo_especie_mascota}, function(data) {
				$("#select_raza_actualiza > option.option__raza").remove();
				
				$.each( data, function( index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_raza_mascota;
					option.text = value.nombre_raza_mascota;
					option.className = "option__raza";
					$('#select_raza_actualiza').append(option);
				});
				
				$('#select_raza_actualiza').val(codigo_raza_mascota);
			});
			
			$('#id_modal_ActualizaMascota').modal("show");
		}
		
	$(document).ready(function() {
		
		// Mostrar mascotas al cargar la página
		listarMascotasDatatable("");
		
		// Selects	
		
		const selectEspecie = $('#select_especie');
		const selectColor = $('#select_color');
		const selectSexo = $('#select_sexo');
		const selectRaza = $('#select_raza');
		
		const selectEspecieActualiza = $('#select_especie_actualiza');
		const selectColorActualiza = $('#select_color_actualiza');
		const selectSexoActualiza = $('#select_sexo_actualiza');
		const selectRazaActualiza = $('#select_raza_actualiza');
		const selectVisibilidadActualiza = $('#select_visibilidad_actualiza');
		
		// Botones
		
		const btnRegister = $('#registrar_mascota');
		const btnUpdate = $('#actualizar_mascota');
		const btnFilter = $('#filtra_mascota');
		const btnModalRegister = $('#id_btnModal_RegistraMascota');
		
		// Modals
		
		const modalRegister = $('#id_modal_RegistraMascota');
		
		// Abrir Modal con Click
		
		btnModalRegister.click(function() {
			modalRegister.modal("show");
		});
		
		// Filtrar Mascota por Nombre
		
		$('#id_nombre_filtro').keydown(function(e) {
		    if(e.key === 'Enter' || e.keyCode === 13) {
		        listarMascotasDatatable($('#id_nombre_filtro').val());
		    }
		});
		
		// Get Especie
		
		function generarSelectEspecie(idSelectEspecie) {
			$.getJSON('listaEspecie', function(data) {
				$.each( data, function( index, value ) {
					let option = document.createElement('option');
					option.value = value.codigo_especie_mascota;
					option.text = value.nombre_especie_mascota;
					idSelectEspecie.append(option);
				});
			});
		}
		
		generarSelectEspecie(selectEspecie);
		generarSelectEspecie(selectEspecieActualiza);
		
		// Get Color
		
		function generarSelectColor(idSelectColor) {
			$.getJSON('listaColor', function(data){
				  $.each( data, function( index, value ) {
					  let option = document.createElement('option');
					  option.value = value.codigo_color_mascota;
					  option.text = value.nombre_color_mascota;
					  idSelectColor.append(option);
				  });
			});
		}
		
		generarSelectColor(selectColor);
		generarSelectColor(selectColorActualiza);
		
		// Get Sexo
		
		function generarSelectSexo(idSelectSexo) {
			$.getJSON('listaSexo', function(data) {
				$.each( data, function( index, value) {
					  let option = document.createElement('option');
					  option.value = value.codigo_sexo_mascota;
					  option.text = value.nombre_sexo_mascota;
					  idSelectSexo.append(option);
				});
			});
		}
		
		generarSelectSexo(selectSexo);
		generarSelectSexo(selectSexoActualiza);
		
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
		
		var selectedColor, selectedSexo, selectedRaza, selectedEspecie;
		
		// Validar selects cuando cambie el option en Registrar
		
		selectColor.change(function(e) {
			selectedColor = e.target.selectedIndex;
			validateSelect(selectColor, selectedColor, 'color');
		});

		selectSexo.change(function(e) {
			selectedSexo = e.target.selectedIndex;
			validateSelect(selectSexo, selectedSexo, 'sexo');
		});
		
		selectRaza.change(function(e) {
			selectedRaza = e.target.selectedIndex;
			validateSelect(selectRaza, selectedRaza, 'raza');
		});
		
		// Validar selects cuando cambie el option en Actualizar
		
		selectColorActualiza.change(function(e) {
			selectedColorActualiza = e.target.selectedIndex;
			validateSelect(selectColorActualiza, selectedColorActualiza, 'color');
		});

		selectSexoActualiza.change(function(e) {
			selectedSexoActualiza = e.target.selectedIndex;
			validateSelect(selectSexoActualiza, selectedSexoActualiza, 'sexo');
		});
		
		selectRazaActualiza.change(function(e) {
			selectedRazaActualiza = e.target.selectedIndex;
			validateSelect(selectRazaActualiza, selectedRazaActualiza, 'raza');
		});
		
		selectVisibilidadActualiza.change(function(e) {
			selectedVisibilidadActualiza = e.target.selectedIndex;
			validateSelect(selectVisibilidadActualiza, selectedVisibilidadActualiza, 'visibilidad');
		});
		
		// Get Raza en función a la especie Registra
		
		selectEspecie.change(function(e) {
			selectedEspecie = e.target.selectedIndex;
			
			$.getJSON('listaRaza', {"especie":selectedEspecie}, function(data) {
				
				// Limpia las razas de la especie anterior
				
				if($('#select_raza > option').hasClass("option__raza")) {
					$("#select_raza > option.option__raza").remove();
					selectedRaza = 0;
				}
				
				$.each( data, function( index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_raza_mascota;
					option.text = value.nombre_raza_mascota;
					option.className = "option__raza";
					selectRaza.append(option);
				});
			});
			
			// Validar selects de Especie y Raza
			
			validateSelect(selectEspecie, selectedEspecie, 'especie');
			validateSelect(selectRaza, selectedRaza, 'raza');
		});

		// Get Raza en función a la especie Actualiza (On change)
		
		selectEspecieActualiza.change(function(e) {
			selectedEspecieActualiza = e.target.selectedIndex;
			
			$.getJSON('listaRaza', {"especie":selectedEspecieActualiza}, function(data) {
				
				// Limpia las razas de la especie anterior
				
				if($('#select_raza_actualiza > option').hasClass("option__raza")) {
					$("#select_raza_actualiza > option.option__raza").remove();
					selectedRazaActualiza = 0;
				}
				
				$.each( data, function( index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_raza_mascota;
					option.text = value.nombre_raza_mascota;
					option.className = "option__raza";
					selectRazaActualiza.append(option);
				});
			});
			
			// Validar selects de Especie y Raza
			
			validateSelect(selectEspecieActualiza, selectedEspecieActualiza, 'especie');
			validateSelect(selectRazaActualiza, selectedRazaActualiza, 'raza');
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
				nombre_mascota: {
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
				fecha_nacimiento_mascota: {
					selector: '#id_fecha_nacimiento',
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
				nombre_mascota: {
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
				fecha_nacimiento_mascota: {
					selector: '#id_fecha_nacimiento_actualiza',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
					}
				}
			}
		});
		
		// Registrar Mascota
	
		btnRegister.click(function() {
			var validator = $('#id_form_registra').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectEspecie, selectedEspecie, 'especie');
			validateSelect(selectRaza, selectedRaza, 'raza');
			validateSelect(selectSexo, selectedSexo, 'sexo');
			validateSelect(selectColor, selectedColor, 'color');
			
			if(selectedEspecie > 0 && selectedColor > 0 && selectedSexo > 0 && selectedRaza > 0 && validator.isValid()) {
				
				var form = $("#id_form_registra").serialize();
				var data = new FormData($("#id_form_registra")[0]);
				
				$.ajax({
					type: 'POST',
					data: data,
					enctype: 'multipart/form-data',
					url: '/registraMascotaConFoto',
					processData: false,
					contentType: false,
					cache: false,
					success: function(data) {
						listarMascotasDatatable("");
						$('#id_modal_RegistraMascota').modal("hide");
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
		
		// Actualizar mascota
		
		btnUpdate.click(function() {
			var validator = $('#id_form_actualiza').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectEspecieActualiza, selectedEspecieActualiza, 'especie');
			validateSelect(selectRazaActualiza, selectedRazaActualiza, 'raza');
			validateSelect(selectSexoActualiza, selectedSexoActualiza, 'sexo');
			validateSelect(selectColorActualiza, selectedColorActualiza, 'color');
			
			validateSelect(selectVisibilidadActualiza, selectedVisibilidadActualiza, 'visibilidad');
			
			if(selectedEspecieActualiza > 0 && selectedColorActualiza > 0 && selectedSexoActualiza > 0 && selectedRazaActualiza > 0 && selectedVisibilidadActualiza > 0 && validator.isValid()) {
				
				var form = $("#id_form_actualiza").serialize();
				var data = new FormData($("#id_form_actualiza")[0]);
				
				$.ajax({
					type: 'POST',
					data: data,
					url: '/actualizaMascotaConFoto',
					enctype: 'multipart/form-data',
					processData: false,
					contentType: false,
					cache: false,
					success: function(data) {
						listarMascotasDatatable("");
						//agregarGrilla(data.lista);
						$('#id_modal_ActualizaMascota').modal("hide");
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
			$('#id_nombre').val('');
			$('#id_foto').val('');
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
			$('#select_visibilidad_actualiza')[0].selectedIndex = 0;
			$('#id_fecha_nacimiento_actualiza').val('');
			$('#id_identificacion_actualiza').val('');
			$('#id_sanitaria_actualiza').val('');
			selectedEspecieActualiza = 0;
			selectedRazaActualiza  = 0;
			selectedColorActualiza  = 0;
			selectedSexoActualiza  = 0;
			selectedVisibilidadActualiza = 0;
		}

    });
	</script>
</body>
</html>