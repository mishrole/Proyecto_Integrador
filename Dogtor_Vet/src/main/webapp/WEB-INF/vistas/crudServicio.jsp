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
	<link rel="stylesheet" type="text/css" href="css/simditor.css" />
	<!-- Menu y Header requieren jQuery al inicio -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<title>Servicio | Dogtor</title>
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
                                <p class="font__title title__color font__semibold">Servicio</p>
                            </div>
                            <div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
                                <div class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
                                    <input type="text" name="filtro_nombre_servicio" id="id_nombre_filtro" class="input__search title__color" placeholder="Buscar...">
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
                                        <p class="font__subtitle title__color font__semibold">Lista de Servicios</p>
                                        <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraServicio" data-target="#id_modal_RegistraServicio">
                                        	<i data-feather="plus"></i>Nuevo</button>
                                    </div>
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaServicio">
											<input type="text" id="id_elimina" name="codigo_servicio" class="d-none">
											<input type="text" id="id_visibilidad_elimina" name="codigo_visibilidad" class="d-none">
										</form>
                                        <div class="col-12 table-responsive">
                                            <table id="id_table" class="font__min display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="background__title">
                                                    <tr>
														<th>#</th>
														<th>Tipo</th>
														<th>Especialidad</th>
														<th>Especialista</th>
														<th>Día Semana</th>
														<th>Hora Inicio</th>
														<th>Hora Fin</th>
														<th>Nombre</th>
														<th>Descripción</th>
														<th>Precio</th>
														<th>Límite</th>
														<!--<th>Estado</th>-->
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
   		<div class="modal fade p-0" id="id_modal_RegistraServicio">
    		<div class="modal-dialog modal-lg">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Registro de Servicio</b></h1>
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
										  			<input type="text" class="form-control" id="id_nombre" name="nombre_servicio" autocomplete="on">
					                        		<label for="nombre_servicio">Nombre</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-3 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_precio" name="precio_servicio" autocomplete="on" >
						                   			<label for="id_precio">Precio</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-3 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_limite" name="limite_diario_servicio" autocomplete="on" >
						                   			<label for="id_limite">Límite</label>
										  		</div>
										  	</div>
					                      </div>
					                      
					                      <div class="form-group form-floating mb-3">
						                      <input type="text" class="form-control" id="id_descripcion" name="descripcion_servicio" placeholder="John" autocomplete="on" >
						                      <label for="id_descripcion">Descripción</label>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_tipo_servicio" name="codigo_tipo_servicio" aria-label="Default select example">
													  <option selected value="0">Seleccione Tipo</option>
													</select>
													<label for="select_tipo_servicio">Tipo</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
							                      	<select class="form-select" id="select_especialidad" name="codigo_especialidad" aria-label="Default select example">
													  <option selected value="0">Seleccione Especialidad</option>
													</select>
													<label for="select_especialidad">Especialidad</label>
						                      </div>
										  	</div>
										  </div>
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_especialista" name="codigo_especialista" aria-label="Default select example">
													  <option selected value="0">Seleccione Especialista</option>
													</select>
													<label for="select_especialista">Especialista</label>
						                      </div>
					                      	</div>
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_dia_semana" name="codigo_dia_semana" aria-label="Default select example">
													  <option selected value="0">Seleccione Día</option>
													</select>
													<label for="select_dia_semana">Día</label>
						                      </div>
					                      	</div>
					                      </div>
					                      
										  <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="time" class="form-control" id="id_inicio_turno" name="inicio_turno_servicio" autocomplete="on">
					                        		<label for="id_inicio_turno">Inicio de turno</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="time" class="form-control" id="id_fin_turno" name="fin_turno_servicio" autocomplete="on" >
						                   			<label for="id_fin_turno">Fin de turno</label>
										  		</div>
										  	</div>
					                      </div>
					                      
					                      <button class="w-100 btn btn-lg btn-primary btn__primary" type="button" id="registrar_servicio">Registrar</button>
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
    	
    	<div class="modal fade" id="id_modal_ActualizaServicio">
    		<div class="modal-dialog modal-lg">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Actualizar Servicio</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_actualiza">
					                      
					                      <input type="text" id="id_servicio_actualiza" name="codigo_servicio" class="d-none">
					                    
					                   	  <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_nombre_actualiza" name="nombre_servicio" autocomplete="on">
					                        		<label for="id_nombre_actualiza">Nombre</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-4 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_precio_actualiza" name="precio_servicio" autocomplete="on" >
						                   			<label for="id_precio_actualiza">Precio</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-4 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_limite_actualiza" name="limite_diario_servicio" autocomplete="on" >
						                   			<label for="id_limite_actualiza">Límite</label>
										  		</div>
										  	</div>
					                      </div>
					                      
					                      <div class="form-group form-floating mb-3">
						                      <input type="text" class="form-control" id="id_descripcion_actualiza" name="descripcion_servicio" placeholder="John" autocomplete="on" >
						                      <label for="id_descripcion_actualiza">Descripción</label>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_tipo_servicio_actualiza" name="codigo_tipo_servicio" aria-label="Default select example">
													  <option selected value="0">Seleccione Tipo</option>
													</select>
													<label for="select_tipo_servicio_actualiza">Tipo</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
							                      	<select class="form-select" id="select_especialidad_actualiza" name="codigo_especialidad" aria-label="Default select example">
													  <option selected value="0">Seleccione Especialidad</option>
													</select>
													<label for="select_especialidad_actualiza">Especialidad</label>
						                      </div>
										  	</div>
										  </div>
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_especialista_actualiza" name="codigo_especialista" aria-label="Default select example">
													  <option selected value="0">Seleccione Especialista</option>
													</select>
													<label for="select_especialista_actualiza">Especialista</label>
						                      </div>
					                      	</div>
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_dia_semana_actualiza" name="codigo_dia_semana" aria-label="Default select example">
													  <option selected value="0">Seleccione Día</option>
													</select>
													<label for="select_dia_semana_actualiza">Día</label>
						                      </div>
					                      	</div>
					                      </div>
					                      
										  <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="time" class="form-control" id="id_inicio_turno_actualiza" name="inicio_turno_servicio" autocomplete="on">
					                        		<label for="id_inicio_turno_actualiza">Inicio de turno</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="time" class="form-control" id="id_fin_turno_actualiza" name="fin_turno_servicio" autocomplete="on" >
						                   			<label for="id_fin_turno_actualiza">Fin de turno</label>
										  		</div>
										  	</div>
					                      </div>
					                      <button class="w-100 btn btn-lg btn-primary btn__primary" type="button" id="actualizar_servicio">Actualizar</button>
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

	var selectedTipoServicioActualiza, selectedEspecialidadActualiza, selectedEspecialistaActualiza, selectedDiaSemanaActualiza;
	
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
					{data: "codigo_servicio"},
					{data: "tiposervicio.nombre_tipo_servicio"},
					{data: "especialidad.nombre_especialidad"},
					{data: "usuario.nombre_usuario"},
					{data: "diasemana.nombre_dia_semana"},
					{data: "inicio_turno_servicio"},
					{data: "fin_turno_servicio"},
					{data: "nombre_servicio"},
					{data: "descripcion_servicio"},
					{data: "precio_servicio"},
					{data: "limite_diario_servicio"},
					{data: function(row, type, val, meta){
						var btnActualizar ='<button type="button" class="btn btn-info btn-sm btnModal_ActualizaServicio" onclick="editar(\'' + row.codigo_servicio +
								'\',\'' + row.codigo_tipo_servicio +
								'\',\'' + row.codigo_especialidad +
								'\',\'' + row.codigo_especialista +
								'\',\'' + row.codigo_dia_semana +
								'\',\'' + row.inicio_turno_servicio +
								'\',\'' + row.fin_turno_servicio +
								'\',\'' + row.nombre_servicio +
								'\',\'' + row.descripcion_servicio  +
								'\',\'' + row.precio_servicio +
								'\',\'' + row.limite_diario_servicio +
								'\')"><i data-feather="edit-2"></i></button>';
								
							var btnEliminar = '<button type="button" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.codigo_servicio + '\')"><i data-feather="trash"></i></button>';
								
						return btnActualizar + btnEliminar;
					},className:'text-center mx-auto d-flex justify-content-center'},													
				]
		    });
		 
		 	// Reload icons
		    feather.replace();
		 	
		    $('#id_table').DataTable().columns.adjust().draw();
		}
		
		function listarServiciosDatatable(nombre) {
	        $.getJSON("listaServicioPorNombre", {"nombre_servicio": nombre}, function(lista) {
	            agregarGrilla(lista);
	        });
	    }
		
		function eliminar(codigo_servicio) {
			mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar, null, codigo_servicio);
		}
		
		function accionEliminar(codigo_servicio) {
			$('#id_elimina').val(codigo_servicio);
			$.ajax({
				type: "POST",
				url: "eliminaServicio",
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
		
		function editar(codigo_servicio, codigo_tipo_servicio, codigo_especialidad, codigo_especialista, codigo_dia_semana, inicio_turno_servicio,
		fin_turno_servicio, nombre_servicio, descripcion_servicio, precio_servicio, limite_diario_servicio) {
			
			selectedTipoServicioActualiza = codigo_tipo_servicio;
			selectedEspecialidadActualiza = codigo_especialidad;
			selectedEspecialistaActualiza = codigo_especialista;
			selectedDiaSemanaActualiza = codigo_dia_semana;
			
			$('#id_servicio_actualiza').val(codigo_servicio);
			$('#id_nombre_actualiza').val(nombre_servicio);
			$('#id_precio_actualiza').val(precio_servicio);
			$('#id_limite_actualiza').val(limite_diario_servicio);
			$('#id_descripcion_actualiza').val(descripcion_servicio);
			$('#select_tipo_servicio_actualiza').val(codigo_tipo_servicio);
			$('#select_especialidad_actualiza').val(codigo_especialidad);
			$('#select_especialista_actualiza').val(codigo_especialista);
			$('#select_dia_semana_actualiza').val(codigo_dia_semana);
			$('#id_inicio_turno_actualiza').val(inicio_turno_servicio);
			$('#id_fin_turno_actualiza').val(fin_turno_servicio);
			
			$('#id_modal_ActualizaServicio').modal("show");
		}
		
	$(document).ready(function() {
	    
		listarServiciosDatatable("");
		
		// Selects	
		
		const selectTipoServicio = $('#select_tipo_servicio');
		const selectEspecialidad = $('#select_especialidad');
		const selectEspecialista = $('#select_especialista');
		const selectDiaSemana = $('#select_dia_semana');
		
		const selectTipoServicioActualiza = $('#select_tipo_servicio_actualiza');
		const selectEspecialidadActualiza = $('#select_especialidad_actualiza');
		const selectEspecialistaActualiza = $('#select_especialista_actualiza');
		const selectDiaSemanaActualiza = $('#select_dia_semana_actualiza');
		
		// Botones
		
		const btnRegister = $('#registrar_servicio');
		const btnUpdate = $('#actualizar_servicio');
		const btnFilter = $('#filtra_servicio');
		const btnModalRegister = $('#id_btnModal_RegistraServicio');
		
		// Modals
		
		const modalRegister = $('#id_modal_RegistraServicio');
		
		// Abrir Modal con Click
		
		btnModalRegister.click(function() {
			modalRegister.modal("show");
		});
		
		// Filtrar Servicio por Nombre
		
		btnFilter.click(function() {
			const filterText = $('#id_nombre_filtro').val();
			listarServiciosDatatable(filterText);
		});
		
		// Get Tipo Servicio
		
		function generarSelectTipoServicio(idSelectTipoServicio) {
			$.getJSON('listaTipoServicio', function(data) {
				$.each( data, function( index, value ) {
					let option = document.createElement('option');
					option.value = value.codigo_tipo_servicio;
					option.text = value.nombre_tipo_servicio;
					idSelectTipoServicio.append(option);
				});
			});
		}
		
		generarSelectTipoServicio(selectTipoServicio);
		generarSelectTipoServicio(selectTipoServicioActualiza);
		
		// Get Especialidad
		
		function generarSelectEspecialidad(idSelectEspecialidad) {
			$.getJSON('listaEspecialidad', function(data) {
				$.each( data, function(index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_especialidad;
					option.text = value.nombre_especialidad;
					idSelectEspecialidad.append(option);
				});
			})
		}
		
		generarSelectEspecialidad(selectEspecialidad);
		generarSelectEspecialidad(selectEspecialidadActualiza);
		
		function generarSelectEspecialista(idSelectEspecialista) {
			$.getJSON('listaUsuarioPorRol',{"codigo_rol_usuario":3}, function(data) {
				$.each( data, function(index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_usuario;
					option.text = value.nombre_usuario + " " + value.apellido_usuario;
					idSelectEspecialista.append(option);
				});
			});
		}
		
		generarSelectEspecialista(selectEspecialista);
		generarSelectEspecialista(selectEspecialistaActualiza);
		
		function generarSelectDiaSemana(idSelectDia) {
			$.getJSON('listaDiaSemana', function(data) {
				$.each( data, function(index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_dia_semana;
					option.text = value.nombre_dia_semana;
					idSelectDia.append(option);
				});
			});
		}
		
		generarSelectDiaSemana(selectDiaSemana);
		generarSelectDiaSemana(selectDiaSemanaActualiza);
		
		var selectedTipoServicio, selectedEspecialidad, selectedEspecialista, selectedDiaSemana;
		
		// Validar selects cuando cambie el option en Registrar
		
		selectTipoServicio.change(function(e) {
			selectedTipoServicio = e.target.selectedIndex;
			validateSelect(selectTipoServicio, selectedTipoServicio, 'tipo');
		});

		selectEspecialidad.change(function(e) {
			selectedEspecialidad = e.target.selectedIndex;
			validateSelect(selectEspecialidad, selectedEspecialidad, 'especialidad');
		});
		
		selectEspecialista.change(function(e) {
			selectedEspecialista = e.target.selectedIndex;
			validateSelect(selectEspecialista, selectedEspecialista, 'dia');
		});
		
		selectDiaSemana.change(function(e) {
			selectedDiaSemana = e.target.selectedIndex;
			validateSelect(selectDiaSemana, selectedDiaSemana, 'dia');
		});
		
		// Validar selects cuando cambie el option en Actualizar
		
		selectTipoServicioActualiza.change(function(e) {
			selectedTipoServicioActualiza = e.target.selectedIndex;
			validateSelect(selectTipoServicioActualiza, selectedTipoServicioActualiza, 'tipo');
		});

		selectEspecialidadActualiza.change(function(e) {
			selectedEspecialidadActualiza = e.target.selectedIndex;
			validateSelect(selectEspecialidadActualiza, selectedEspecialidadActualiza, 'especialidad');
		});
		
		selectEspecialistaActualiza.change(function(e) {
			selectedEspecialistaActualiza = e.target.selectedIndex;
			validateSelect(selectEspecialistaActualiza, selectedEspecialistaActualiza, 'especialista');
		});
		
		selectDiaSemanaActualiza.change(function(e) {
			selectedDiaSemanaActualiza = e.target.selectedIndex;
			validateSelect(selectDiaSemanaActualiza, selectedDiaSemanaActualiza, 'dia');
		});
		
		$('#id_form_registra').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				nombre_servicio: {
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
				nombre_servicio: {
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
			}
		});
		
		// Registrar mascota
	
		btnRegister.click(function() {
			var validator = $('#id_form_registra').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectTipoServicio, selectedTipoServicio, 'tipo');
			validateSelect(selectEspecialidad, selectedEspecialidad, 'especialidad');
			validateSelect(selectEspecialistaActualiza, selectedEspecialista, 'especialista');
			validateSelect(selectDiaSemanaActualiza, selectedDiaSemana, 'dia');
			
			if(selectedTipoServicio > 0 && selectedEspecialidad > 0 && selectedEspecialista > 0 && selectedDiaSemana > 0 && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form_registra').serialize(),
					url: 'registraServicio',
					success: function(data) {
						listarServiciosDatatable("");
						$('#id_modal_RegistraServicio').modal("hide");
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
			validateSelect(selectTipoServicioActualiza, selectedTipoServicioActualiza, 'tipo');
			validateSelect(selectEspecialidadActualiza, selectedEspecialidadActualiza, 'especialidad');
			validateSelect(selectEspecialistaActualiza, selectedEspecialistaActualiza, 'especialista');
			validateSelect(selectDiaSemanaActualiza, selectedDiaSemanaActualiza, 'dia');
			
			if(selectedTipoServicioActualiza > 0 && selectedEspecialidadActualiza > 0 && selectedEspecialistaActualiza > 0 && selectedDiaSemanaActualiza > 0 && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form_actualiza').serialize(),
					url: 'actualizaServicio',
					success: function(data) {
						listarServiciosDatatable("");
						$('#id_modal_ActualizaServicio').modal("hide");
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
			$('#id_servicio').val("");
			$('#id_nombre').val("");
			$('#id_precio').val("");
			$('#id_limite').val("");
			$('#id_descripcion').val("");
			$('#select_tipo_servicio')[0].selectedIndex = 0;
			$('#select_especialidad')[0].selectedIndex = 0;
			$('#select_especialista')[0].selectedIndex = 0;
			$('#select_dia_semana')[0].selectedIndex = 0;
			$('#id_inicio_turno').val("");
			$('#id_fin_turno').val("");
			
			selectedTipoServicio = 0;
			selectedEspecialidad = 0;
			selectedEspecialista = 0;
			selectedDiaSemana = 0;
		}
		
		function limpiarActualiza() {
			$('#id_servicio_actualiza').val("");
			$('#id_nombre_actualiza').val("");
			$('#id_precio_actualiza').val("");
			$('#id_limite_actualiza').val("");
			$('#id_descripcion_actualiza').val("");
			$('#select_tipo_servicio_actualiza')[0].selectedIndex = 0;
			$('#select_especialidad_actualiza')[0].selectedIndex = 0;
			$('#select_especialista_actualiza')[0].selectedIndex = 0;
			$('#select_dia_semana_actualiza')[0].selectedIndex = 0;
			$('#id_inicio_turno_actualiza').val("");
			$('#id_fin_turno_actualiza').val("");
			
			selectedTipoServicioActualiza = 0;
			selectedEspecialidadActualiza = 0;
			selectedEspecialistaActualiza = 0;
			selectedDiaSemanaActualiza = 0;
		}
	
	});
	</script>
</body>
</html>