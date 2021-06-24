<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
	<title>Cita | Dogtor</title>
</head>
<body class="background__light__gray">

    <main id="dashboard">
        <div class="container-fluid align-items-stretch">
		
		<!-- Header on XS, SM, and MD -->
		<jsp:include page="header.jsp" />
		<!-- Carrito de Compras -->
        <jsp:include page="carrito.jsp" />
            
            <div class="row">
                
                <!-- Menu on LG and XXL -->
                <jsp:include page="menu.jsp" />
                
                <!-- Dashboard Content -->
                <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-3 mt-5 menu__transition mx-auto">
                    <div class="content__body background__light__white menu__transition mt-4 mt-lg-0">
                        <div class="row justify-content-center align-items-center">
                            <div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold m-0">Cita</p>
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
                                <!-- <div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2">
                                    <i data-feather="message-square"></i>
                                </div> -->
                                <button id="btnCart" class="btn options__cart d-flex align-items-center mx-2">
                                    <i data-feather="shopping-cart"></i>
                                    <span class="dot__notification"></span>
                                </button>
                                <div id="btnProfile" class="options__profile mx-2">
                                    <img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
                                </div>
                        </div>
                        
                         <div class="content__statistics row mt-4">
                            <div class="col-12 col-md-6 mt-2 mb-2">
                                <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start">
                                    <p class="card__light__title">Próxima Cita</p>
                                    <p class="font__title title__color font__semibold m-0">12/06/2021</p>
                                    <p class="font__title title__color font__semibold m-0">3:40PM a 4:50PM</p>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 mt-2 mb-2">
                                <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start">
                                    <p class="card__light__title">Último Pedido</p>
                                    <p class="font__title title__color font__semibold m-0">29/05/2021</p>
                                    <p class="font__title title__color font__semibold m-0">En curso</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="content__alert row">
                            <div class="col-12 mt-4 mb-2">
                                <div class="card__light">
                                    <div class="card__light__header d-flex justify-content-between my-3">
                                        <p class="font__subtitle title__color font__semibold">Listado de Citas</p>
                                        <!-- <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraReserva" data-target="#id_modal_RegistraReserva">
                                        	<i data-feather="plus"></i>
                                        	Nuevo
                                        </button> -->
                                    </div>
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaCita">
											<input type="text" id="id_elimina" name="codigo_cita" class="d-none">
											<input type="text" id="id_estado_elimina" name="codigo_estado_cita" class="d-none">
										</form>
                                                                   
                                        <div class="col-12 table-responsive">
                                            <table id="id_table_Reserva" class="font__min display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="background__title">
                                                    <tr>
														<th>#</th>
														<th>Fecha</th>
														<th>Servicio</th>
														<th>Especialista</th>
														<th>Mascota</th>
														<th>Estado</th>
														<th>Acción</th>
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
    	
    	<!-- Modal de Registro de Reserva de Cita -->
   		<div class="modal fade p-0" id="id_modal_RegistraReserva">
    		<div class="modal-dialog modal-xl">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Registro de Reserva de Cita</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-11">
					                    <form id="id_form_registraCita">
					                    
					                    <input type="text" id="id_codigo_propietario" name="codigo_propietario" class="d-none">
					                    
					                    <div class="form-group row">
					                    	<div class="col-12 mb-3">
					                    		<p class="font__subtitle title__color font__semibold">Información de Mascota</p>
					                    	</div>
					                    </div>
					                    
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_mascota" class="form-control" id="id_codigo_mascota" readonly>
													<label for="id_codigo_mascota">Código</label>
												</div>
											</div>
											<div class="col-12 col-md-5 mb-3">
												<div class="form-floating">
													<input type="text" name="nombre_mascota" class="form-control" id="id_nombre_mascota" readonly>
													<label for="id_nombre_mascota">Nombre de Mascota</label>
												</div>
											</div>
											
											<div class="col-12 col-md-4 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_color_mascota" class="form-control" id="id_color_mascota" readonly>
													<label for="id_color_mascota">Color</label>
												</div>
											</div>
										</div>
										
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_sexo_mascota" class="form-control" id="id_sexo_mascota" readonly>
													<label for="id_sexo_mascota">Sexo</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_especie_mascota" class="form-control" id="id_especie_mascota" readonly>
													<label for="id_especie_mascota">Especie</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_raza_mascota" class="form-control" id="id_raza_mascota" readonly>
													<label for="id_raza_mascota">Raza</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="row align-items-center mx-auto">
													<button class="btn btn__clean" type="button" data-toggle="modal" id="id_btnModal_BuscarMascota" data-bs-content="Selecciona a una Mascota" data-bs-toggle="popover" data-target="#id_modal_BuscarMascota"><i data-feather="search"></i>Buscar Mascota</button>
												</div>
											</div>
										</div>
										
										<div class="form-group row">
					                    	<div class="col-12 my-2">
					                    		<p class="font__subtitle title__color font__semibold">Información de Servicio</p>
					                    	</div>
					                    </div>
					                    
					                    <div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-2 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_servicio" class="form-control" id="id_codigo_servicio" readonly>
													<label for="id_codigo_servicio">Código</label>
												</div>
											</div>
											
											<div class="col-12 col-md-4 mb-3">
												<div class="form-floating">
													<input type="text" name="nombre_servicio" class="form-control" id="id_nombre_servicio" readonly>
													<label for="id_nombre_servicio">Nombre de Servicio</label>
												</div>
											</div>
											
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_tipo_servicio" class="form-control" id="id_tipo_servicio" readonly>
													<label for="id_tipo_servicio">Tipo</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_especialidad" class="form-control" id="id_especialidad_servicio" readonly>
													<label for="id_especialidad_servicio">Especialidad</label>
												</div>
											</div>
										</div>
										
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-2 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_dia_semana" class="form-control" id="id_dia_servicio" readonly>
													<label for="id_dia_servicio">Día</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="date" name="fecha_programada_cita" class="form-control" id="id_fecha_cita">
													<label for="id_fecha_cita">Fecha</label>
												</div>
											</div>
											<div class="col-12 col-md-7 mb-3">
												<div class="form-floating">
													<input type="text" name="descripcion_servicio" class="form-control" id="id_descripcion_servicio" readonly>
													<label for="id_descripcion_servicio">Descripción de Servicio</label>
												</div>
											</div>
										</div>
										
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-5 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_especialista" class="form-control" id="id_especialista_servicio" readonly>
													<label for="id_especialista_servicio">Especialista</label>
												</div>
											</div>
											<div class="col-12 col-md-2 mb-3">
												<div class="form-floating">
													<input type="time" name="inicio_turno_servicio" class="form-control" id="id_hora_inicio_servicio" readonly>
													<label for="id_hora_inicio_servicio">Desde las</label>
												</div>
											</div>
											<div class="col-12 col-md-2 mb-3">
												<div class="form-floating">
													<input type="time" name="fin_turno_servicio" class="form-control" id="id_hora_fin_servicio" readonly>
													<label for="id_hora_fin_servicio">Hasta las</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="row align-items-center mx-auto">
													<button class="btn btn__clean" type="button" data-toggle="modal" id="id_btnModal_BuscarServicio" data-bs-content="Selecciona un servicio" data-bs-toggle="popover" data-target="#id_modal_BuscarServicio"><i data-feather="search"></i>Buscar Servicio</button>
												</div>
											</div>
										</div>
										
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12">
												<div class="form-floating">
													<input type="text" name="motivo_cita" class="form-control" id="id_motivo_cita">
													<label for="id_motivo_cita">Descripción de síntomas</label>
												</div>
											</div>
										</div>
					                    
					                      <button class="w-100 btn btn-lg btn-primary btn__primary my-3" type="button" id="btnRegistrarCita">Registrar</button>
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
    	
    	<!-- Modal de Búsqueda de Mascotas -->
		<div class="modal fade p-0" id="id_modal_BuscarMascota">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Buscar Mascotas</b></h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12">
										<form id="id_form_buscaMascota">
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-9 mb-3">
													<div class="form-floating"><input type="text" id="id_mascota_filtro" name="filtro_nombre_mascota" class="form-control">
														<label for="id_mascota_filtro">Nombre de Mascota</label>
													</div>
												</div>
												<div class="col-3 mb-3">
													<button class="btn btn-primary" type="button" id="filtra_mascota"><i data-feather="search"></i>Buscar</button>
												</div>
											</div>
											
											<div class="row justify-content-center align-items-center mx-auto">
												<div class="col-12 table-responsive">
													<table id="id_table_mascota" class="font__min display responsive no-footer text-center table table-borderless dataTable">
														<thead class="background__title">
															<tr>
																<th>#</th>
																<th>Nombre</th>
																<th>Fecha de Nacimiento</th>
																<th>Acción</th>
															</tr>
														</thead>
														<tbody></tbody>
													</table>
												</div>
											</div>
										</form>
									</main>
								</div>
							</div>
						</div>
					</div>
					
					<div class="modal-footer justify-content-end align-items-center">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Modal de Búsqueda de Servicios -->
		<div class="modal fade p-0" id="id_modal_BuscarServicio">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Buscar Servicios</b></h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12">
										<form id="id_form_buscaServicio">
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-12 col-md-4 mb-3">
											  		<div class="form-floating">
								                      	<select class="form-select" id="select_tipo_servicio" name="codigo_tipo_servicio" aria-label="Default select example">
															<option selected value="0">Seleccione Tipo</option>
														</select>
														<label for="select_tipo_servicio">Tipo</label>
						                      		</div>
											  	</div>
											  	<div class="col-12 col-md-5 mb-3">
												  	<div class="form-floating">
								                      	<select class="form-select" id="select_especialidad_servicio" name="codigo_especialidad" aria-label="Default select example">
															<option selected value="0">Seleccione Especialidad</option>
														</select>
														<label for="select_especialidad_servicio">Especialidad</label>
							                    	</div>
										  		</div>
												<div class="col-12 col-md-3 mb-3 text-center">
													<button class="btn btn-primary" type="button" id="filtra_servicio"><i data-feather="search"></i>Buscar</button>
												</div>
											</div>
											
											<div class="row justify-content-center align-items-center mx-auto">
												<div class="col-12 table-responsive">
													<table id="id_table_servicio" class="font__min display responsive no-footer text-center table table-borderless dataTable">
														<thead class="background__title">
															<tr>
																<th>#</th>
																<th>Especialista</th>
																<th>Precio</th>
																<th>Día</th>
																<th>Horario</th>
																<th>Acción</th>
															</tr>
														</thead>
														<tbody></tbody>
													</table>
												</div>
											</div>
										</form>
									</main>
								</div>
							</div>
						</div>
					</div>
					
					<div class="modal-footer justify-content-end align-items-center">
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
	<script type="text/javascript" src="js/app.js"></script>

	<script type="text/javascript">
	
    // Load icons
    feather.replace();
    
    // Usuario actual
 	const codigoPropietario = ${sessionScope.objUsuario.codigo_usuario};
    
    var selectedTipoServicio, selectedEspecialidadServicio;
    
    function agregarGrillaReserva(lista) {
		//console.log(lista)
		 $('#id_table_Reserva').DataTable().clear();
		 $('#id_table_Reserva').DataTable().destroy();
		 $('#id_table_Reserva').DataTable({
				data: lista,
				searching: false,
				ordering: true,
				processing: true,
				pageLength: 6,
				lengthChange: false,
				responsive: true,
				columns:[
					{data: "codigo_cita"},
					{data: "fecha_programada_cita"},
					{data: "servicio.tiposervicio.nombre_tipo_servicio"},
					{data: function(row, type, val, meta) {
					    var nombre = '';
					    nombre = row.servicio.usuario.nombre_usuario + ' ' + row.servicio.usuario.apellido_usuario;
					    return nombre;
					}, className: 'text-center mx-auto float-center'},
					{data: "mascota.nombre_mascota"},
					{data: "estado.nombre_estado_cita"},
					{data: function(row, type, val, meta){
					    
					    var btnCancelarReserva = '';
					    
					    if(row.codigo_estado_cita === 1) {
					        btnCancelarReserva = '<button type="button" class="btn btn-danger btn-sm mx-1" onclick="cancelarReserva(\'' + row.codigo_cita + '\')"><i data-feather="x"></i> Cancelar</button>';
					    } else {
					        btnCancelarReserva = '<button type="button" class="btn btn-danger btn-sm mx-1 disabled"><i data-feather="x"></i> Cancelar</button>'; 
					    }
					    
					    return btnCancelarReserva;
					},className:'text-center mx-auto'},												
				]                                                   
		    });
		 	
		 	// Reload icons
		    feather.replace();
		 	
		 	$('#id_table_Reserva').DataTable().columns.adjust().draw();
		}
    
	    function agregarGrillaMascotas(lista) {
	        $('#id_table_mascota').DataTable().clear();
	        $('#id_table_mascota').DataTable().destroy();
	        $('#id_table_mascota').DataTable(
	               {
	                   data : lista,
	                   searching : false,
	                   ordering : true,
	                   processing : true,
	                   pageLength : 6,
	                   lengthChange : false,
	                   responsive : true,
	                   columns : 
	                       [
		                        {
		                            data : "codigo_mascota"
		                        },
		                        {
		                            data : "nombre_mascota"
		                        },
		                        {
		                            data : "fecha_nacimiento_mascota"
		                        },
		                        {
		                            data : function (row, type, val, meta) {
		                                var btnSeleccionar = '<button type="button" class="btn btn__clean btn-sm" onclick="seleccionarMascota(\''
		                                        + row.codigo_mascota
		                                        + '\',\''
		                                        + row.nombre_mascota
		                                        + '\',\''
		                                        + row.color.nombre_color_mascota
		                                        + '\',\''
		                                        + row.sexo.nombre_sexo_mascota
		                                        + '\',\''
		                                        + row.especie.nombre_especie_mascota
		                                        + '\',\''
		                                        + row.raza.nombre_raza_mascota
		                                        + '\')"><i data-feather="user-check"></i></button>';
		                                return btnSeleccionar
		                       },className : 'text-center mx-auto'},
						]
	               });
	
	        // Reload icons
	        feather.replace();
	
	        $('#id_table_mascota').DataTable().columns.adjust().draw();
	    }
	    
	    function agregarGrillaServicios(lista) {
            $('#id_table_servicio').DataTable().clear();
            $('#id_table_servicio').DataTable().destroy();
            $('#id_table_servicio').DataTable(
                   {
                       data : lista,
                       searching : false,
                       ordering : true,
                       processing : true,
                       pageLength : 6,
                       lengthChange : false,
                       responsive : true,
                       columns : 
                           [
		                        {
		                            data : "codigo_servicio"
		                        },
		                        {
		                            data : function (row, type, val, meta) {
		                                var especialista = '';
		                                especialista = row.usuario.nombre_usuario + ' ' + row.usuario.apellido_usuario;
		                                return especialista;
		                            }, className : 'text-center mx-auto'
		                        },
		                        {
		                            data : "precio_servicio"
		                        },
		                        {
		                            data : "diasemana.nombre_dia_semana"
		                        },
		                        {
		                            data : function (row, type, val, meta) {
		                                var horario = '';
		                                horario = row.inicio_turno_servicio + ' - ' + row.fin_turno_servicio;
		                                return horario;
		                            }, className : 'text-center mx-auto'
		                        },
		                        {
		                            data : function (row, type, val, meta) {
		                                var btnSeleccionar = '<button type="button" class="btn btn__clean btn-sm" onclick="seleccionarServicio(\''
		                                        + row.codigo_servicio
		                                        + '\',\''
		                                        + row.nombre_servicio
		                                        + '\',\''
		                                        + row.descripcion_servicio
		                                        + '\',\''
		                                        + row.tiposervicio.nombre_tipo_servicio
		                                        + '\',\''
		                                        + row.especialidad.nombre_especialidad
		                                        + '\',\''
		                                        + row.usuario.nombre_usuario + ' ' + row.usuario.apellido_usuario
		                                        + '\',\''
		                                        + row.diasemana.nombre_dia_semana
		                                        + '\',\''
		                                        + row.inicio_turno_servicio
		                                        + '\',\''
		                                        + row.fin_turno_servicio
		                                        + '\')"><i data-feather="user-check"></i></button>';
		                                return btnSeleccionar
		                       },className : 'text-center mx-auto'},
						]
                   });

            // Reload icons
            feather.replace();

            $('#id_table_servicio').DataTable().columns.adjust().draw();
        }
	    
        function listaServicioPorTipoYEspecialidad(tipo, especialidad) {
            $.getJSON("listaServicioPorTipoYEspecialidad", {"codigo_tipo" : tipo,"codigo_especialidad" : especialidad}, function (lista) {
                agregarGrillaServicios(lista);
            });
        }
        
		function cambiarVisibilidad(codigo_mascota, codigo_visibilidad) {
			mostrarMensajeConfirmacion("¿Desea modificar la visibilidad del registro?", accionVisibilidad, null, {codigo_mascota, codigo_visibilidad});
		}
    
		function cancelarReserva(codigo_cita) {
		    const codigo_estado_cita = 4;
		    mostrarMensajeConfirmacion("¿Desea cancelar la cita?", accionCancelarReserva, null, {codigo_cita, codigo_estado_cita});
		    
		}
		
		function accionCancelarReserva(data) {
		    $('#id_elimina').val(data.codigo_cita);
		    $('#id_estado_elimina').val(data.codigo_estado_cita);

		    if(data.codigo_cita.length > 0) {
			    $.ajax({
					type: 'POST',
					data: $('#id_form_elimina').serialize(),
					url: 'actualizaEstadoCita',
					success: function(data) {
						listarCitasDatatable(codigoPropietario);
						mostrarMensaje(data.MENSAJE);
					},
					error: function() {
						mostrarMensaje(MSG_ERROR);
					}
				});
			}
		}
    
		function listarCitasDatatable(usuario) {
	        $.getJSON("listaCitaPorUsuario", {"codigo_usuario": usuario}, function(lista) {
	            agregarGrillaReserva(lista);
	        });
	    }
		
        function listarMascotaPorPropietarioYNombre(propietario, nombre) {
            $.getJSON("listaMascotaPorPropietarioYNombre", {"codigo_propietario" : propietario,"nombre_mascota" : nombre}, function (lista) {
                agregarGrillaMascotas(lista);
            });
        }
        
        function seleccionarMascota(codigo, nombre, color, sexo, especie, raza) {
			$('#id_codigo_mascota').val(codigo);
			$('#id_nombre_mascota').val(nombre);
			$('#id_color_mascota').val(color);
			$('#id_sexo_mascota').val(sexo);
			$('#id_especie_mascota').val(especie);
			$('#id_raza_mascota').val(raza);
			$('#id_modal_BuscarMascota').modal("hide");
        }
        
        function seleccionarServicio(codigo, nombre, descripcion, tipo, especialidad, especialista, dia, inicio, fin) {
            $('#id_codigo_servicio').val(codigo);
        	$('#id_nombre_servicio').val(nombre);
        	$('#id_descripcion_servicio').val(descripcion);
        	$('#id_tipo_servicio').val(tipo);
        	$('#id_especialidad_servicio').val(especialidad);
        	$('#id_especialista_servicio').val(especialista);
        	$('#id_dia_servicio').val(dia);
        	$('#id_hora_inicio_servicio').val(inicio);
        	$('#id_hora_fin_servicio').val(fin);
        	$('#id_modal_BuscarServicio').modal("hide");
        }
		
	$(document).ready(function() {
	    
		// Mostrar citas al cargar la página
		listarCitasDatatable(codigoPropietario);
		
		const selectTipoServicio = $('#select_tipo_servicio');
		const selectEspecialidadServicio = $('#select_especialidad_servicio');
		
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
		
		generarSelectEspecialidad(selectEspecialidadServicio);
		
		// Validar selects cuando cambie el option en Registrar
		
		selectTipoServicio.change(function(e) {
			selectedTipoServicio = e.target.selectedIndex;
			validateSelect(selectTipoServicio, selectedTipoServicio, 'tipo');
		});

		selectEspecialidadServicio.change(function(e) {
		    selectedEspecialidadServicio = e.target.selectedIndex;
			validateSelect(selectEspecialidadServicio, selectedEspecialidadServicio, 'especialidad');
		});
		
		// Cargar código de propietario en formulario
		$('#id_codigo_propietario').val(codigoPropietario);
		
		/* Mostrar Modal de Registro de Reserva de Cita */
		
		const btnModalRegister = $('#id_btnModal_RegistraReserva');
		const modalRegister = $('#id_modal_RegistraReserva');
		
		btnModalRegister.click(function() {
			modalRegister.modal("show");
		});
		
		/* Mostrar Modal de Buscar Mascota */
		
		const btnMostrarBuscarMascota = $('#id_btnModal_BuscarMascota');
        const modalBuscarMascota = $('#id_modal_BuscarMascota');

        btnMostrarBuscarMascota.click(function () {
            modalBuscarMascota.modal("show");
        });
        
        /* Filtrar Mascota */
        
        const btnFilterMascota = $('#filtra_mascota');
	
        btnFilterMascota.click(function () {
            var propietario = $('#id_codigo_propietario').val();
            var nombre = $('#id_mascota_filtro').val();

            if (propietario.length > 0) {
                listarMascotaPorPropietarioYNombre(propietario, nombre);
            }
        });
        
     	/* Mostrar Modal de Buscar Servicio */
        
        const btnMostrarBuscarServicio = $('#id_btnModal_BuscarServicio');
        const modalBuscarServicio = $('#id_modal_BuscarServicio');
        
        btnMostrarBuscarServicio.click(function() {
            modalBuscarServicio.modal("show");
        });
        
        /* Filtrar Servicio */
        
        const btnFilterServicio = $('#filtra_servicio');
        
        btnFilterServicio.click(function() {
            // Validar selects
            validateSelect(selectTipoServicio, selectedTipoServicio, 'tipo');
			validateSelect(selectEspecialidadServicio, selectedEspecialidadServicio, 'especialidad');
            
            if(selectedTipoServicio > 0 && selectedEspecialidadServicio > 0) {
                listaServicioPorTipoYEspecialidad(selectedTipoServicio, selectedEspecialidadServicio);
            }
        });
        
        $('#id_form_registraCita').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				fecha_servicio: {
					selector: '#id_fecha_cita',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
					}
				},
				motivo_servicio: {
					selector: '#id_motivo_cita',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
						stringLength: {
	                        min: 10,
	                        max: 200,
	                        message: 'Descripción de 10 a 200 caracteres'
	                    },
						regexp: {
						    regexp: /^[a-zA-ZÁÉÍÓÚáéíóú ]*$/,
						    message: 'Ingrese únicamente letras'
						        
						}
					}
				},
				
			}
		});
        
        /*
			regexp: {
	      	 	regexp: /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/,
	      		message: 'Sólo formato dd/MM/YYYY'
	     	}
        */

        /* Registrar Reserva */

		const btnRegistrarCita = $('#btnRegistrarCita');
        
        btnRegistrarCita.click(function() {
            var validator = $('#id_form_registraCita').data('bootstrapValidator');
			validator.validate();
			
			const servicio = $('#id_codigo_servicio').val();
			const mascota = $('#id_codigo_mascota').val();
			
			if(validator.isValid() && servicio.length > 0 && mascota.length > 0) {
			    $.ajax({
					type: 'POST',
					data: $('#id_form_registraCita').serialize(),
					url: 'registraCita',
					success: function(data) {
					    modalRegister.modal("hide");
						mostrarMensaje(data.MENSAJE);
						limpiarRegistrarCita();
						validator.resetForm();
						listarCitasDatatable(codigoPropietario);
					},
					error: function() {
						mostrarMensaje(MSG_ERROR);
					}
				});
			} else {
			    
	            // Activar todos los popovers
	            var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
	            var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
	                return new bootstrap.Popover(popoverTriggerEl);
	            });
	            
	            if(mascota.length === 0) {
	                $('#id_btnModal_BuscarMascota').popover('show');
	            }
	            
	            if(servicio.length === 0) {
	                $('#id_btnModal_BuscarServicio').popover('show');
	            }
	            
	            // Ocultar popover luego de 3s
	            setTimeout(function(){
	                $('a[rel=popover]').popover('hide');
	                $('a[rel=popover]').popover('disable');
	                $(".popover").remove();
	            }, 3000);
	            
			}
			
        });
        
        function limpiarRegistrarCita() {
            $('#id_codigo_mascota').val('');
            $('#id_nombre_mascota').val('');
            $('#id_color_mascota').val('');
            $('#id_sexo_mascota').val('');
            $('#id_especie_mascota').val('');
            $('#id_raza_mascota').val('');
            $('#id_codigo_servicio').val('');
            $('#id_nombre_servicio').val('');
            $('#id_descripcion_servicio').val('');
            $('#id_tipo_servicio').val('');
            $('#id_especialidad_servicio').val('');
            $('#id_especialista_servicio').val('');
            $('#id_dia_servicio').val('');
            $('#id_fecha_cita').val('');
            $('#id_hora_inicio_servicio').val('');
            $('#id_hora_fin_servicio').val('');
            $('#id_motivo_cita').val('');
        }
        
        
	});
	</script>
</body>
</html>