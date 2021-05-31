<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	<link rel="stylesheet" href="css/bootstrapValidator.css" />
	<link rel="stylesheet" href="css/dashboard.css" />
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<!-- Menu y Header requieren jQuery al inicio -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<title>Reserva | Dogtor</title>
</head>

<body class="background__light__gray">
	<main id="dashboard">
		<div class="container-fluid align-items-stretch">
			<!-- Header on XS, SM, and MD -->
			<jsp:include page="header.jsp" />
			
			<div class="row">
				<!-- Menu on LG and XXL --> <jsp:include page="menu.jsp" />
				
				<c:if test="${requestScope.MENSAJE != null}">
					<div class="alert alert-danger fade in" id="success-alert">
						<a href="#" class="close" data-dismiss="alert">&times;</a>
						<strong>${requestScope.MENSAJE}</strong>
					</div>
				</c:if>
				
				<!-- Dashboard Content -->
				<div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-1 mt-5 menu__transition mx-auto">
					<div id="alerta_dogtor"></div>
				
					<div class="content__body background__light__white menu__transition">
						<div class="row justify-content-center">
							<div class="content__body__title col-4">
								<p class="font__title title__color font__semibold">Nueva Reserva de Cita</p>
							</div>
							<div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
								<div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2"><i data-feather="message-square"></i></div>
								<div id="btnProfile" class="options__profile mx-2">
									<img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
								</div>
							</div>
							
							<div class="content__alert row">
								<div class="col-12 mt-4 mb-2">
									<form id="id_form_registraCita">
										<div class="card__light">
											<div class="card__light__header d-flex justify-content-between my-3">
												<p class="font__subtitle title__color font__semibold">Información de Propietario</p>
											</div>
											<div class="card__light__body row">
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating">
															<input type="text" name="codigo_propietario" class="form-control" id="id_codigo_propietario" readonly>
															<label for="id_codigo_propietario">Código</label>
														</div>
													</div>
													<div class="col-12 col-md-9 mb-3">
														<div class="form-floating"><input type="text" name="email_usuario" class="form-control" id="id_email_propietario" readonly>
															<label for="id_email_propietario">Email de Propietario</label>
														</div>
													</div>
												</div>
												
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 col-md-4 mb-3">
														<div class="form-floating"><input type="text" name="nombre_usuario" class="form-control" id="id_nombre_propietario" readonly>
															<label for="id_nombre_propietario">Nombre de Propietario</label>
														</div>
													</div>
													<div class="col-12 col-md-5 mb-3">
														<div class="form-floating">
															<input type="text" name="apellido_usuario" class="form-control" id="id_apellido_propietario" readonly>
															<label for="id_apellido_propietario">Apellido de Propietario</label>
														</div>
													</div>
													<div class="col-12 col-md-3 mb-3">
														<div class="row align-itmes-center mx-auto">
															<button class="btn btn__clean" type="button" data-toggle="modal" id="id_btnModal_BuscarCliente" data-bs-content="Selecciona a un cliente" data-bs-toggle="popover" data-target="#id_modal_BuscarCliente"><i data-feather="search"></i>Buscar Cliente</button>
														</div>
													</div>
												</div>
												
												<div class="card__light__header d-flex justify-content-between my-3">
													<p class="font__subtitle title__color font__semibold">Información de Mascota</p>
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
												
												<div class="card__light__header d-flex justify-content-between my-3">
													<p class="font__subtitle title__color font__semibold">Información de Servicio</p>
												</div>
												
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 col-md-2 mb-3">
														<div class="form-floating">
															<input type="text" name="codigo_servicio" class="form-control" id="id_codigo_servicio" readonly>
															<label for="id_codigo_servicio">Código</label>
														</div>
													</div>
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating">
															<input type="text" name="nombre_servicio" class="form-control" id="id_nombre_servicio" readonly>
															<label for="id_nombre_servicio">Nombre de Servicio</label>
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
													<div class="col-12 col-md-6 mb-3">
														<div class="form-floating">
															<input type="text" name="codigo_especialista" class="form-control" id="id_especialista_servicio" readonly>
															<label for="id_especialista_servicio">Especialista</label>
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
															<button class="btn btn__clean" type="button" data-toggle="modal" id="id_btnModal_BuscarServicio" data-bs-content="Selecciona un Servicio" data-bs-toggle="popover" data-target="#id_modal_BuscarServicio"><i data-feather="search"></i>Buscar Servicio</button>
														</div>
													</div>
												</div>
												
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 mb-3">
														<div class="form-floating">
															<input type="text" name="motivo_cita" class="form-control" id="id_motivo_cita">
															<label for="id_motivo_cita">Descripción de síntomas</label>
														</div>
													</div>
												</div>
												
												<div class="form-group row justify-content-center align-items-center mx-auto">
													<div class="form-floating text-center">
														<button class="btn btn__primary" type="button" id="btnRegistrarCita">Registrar</button>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<div class="container-fluid">
	
		<!-- Modal de Búsqueda de Clientes -->
		<div class="modal fade p-0" id="id_modal_BuscarCliente">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Buscar Propietarios</b></h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12">
										<form id="id_form_buscaCliente">
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-9 mb-3">
													<div class="form-floating"><input type="text" id="id_cliente_filtro" name="filtro_nombre_usuario" class="form-control">
														<label for="id_cliente_filtro">Nombre de Propietario</label>
													</div>
												</div>
												<div class="col-3 mb-3">
													<button class="btn btn-primary" type="button" id="filtra_cliente"><i data-feather="search"></i>Buscar</button>
												</div>
											</div>
											<div class="row justify-content-center align-items-center mx-auto">
												<div class="col-12 table-responsive">
													<table id="id_table_propietario" class="font__min display responsive no-footer text-center table table-borderless dataTable">
														<thead class="background__title">
															<tr>
																<th>#</th>
																<th>Nombre</th>
																<th>Email</th>
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
						<button class="btn btn-primary d-none" type="button" id="id_btnModal_RegistrarCliente"><i data-feather="plus"></i>Nuevo Cliente</button>
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>
			
		<!-- Modal de Registro de Clientes -->
		<div class="modal fade p-0" id="id_modal_RegistrarCliente">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Registrar Cliente</b></h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12">
										<form id="id_form_registraCliente">
											<div class="form-group row justify-content-center align-items-center mx-auto">
											
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating">
														<input type="text" id="id_email_cliente" name="email_usuario" class="form-control">
														<label for="id_email_cliente">Email</label>
													</div>
												</div>
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating"><input type="date" id="id_fecha_cliente" name="fecha_nacimiento_usuario" class="form-control">
														<label for="id_fecha_cliente">Fecha nacimiento</label>
													</div>
												</div>
											</div>
											
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating"><input type="text" id="id_nombre_cliente" name="nombre_usuario" class="form-control">
														<label for="id_nombre_cliente">Nombre</label>
													</div>
												</div>
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating"><input type="text" id="id_apellido_cliente" name="apellido_usuario" class="form-control">
														<label for="id_apellido_cliente">Apellido</label>
													</div>
												</div>
											</div>
											
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-12 col-md-4 mb-3">
													<div class="form-floating"><input type="text" id="id_dni_cliente" name="dni_usuario" class="form-control">
														<label for="id_dni_cliente">DNI</label>
													</div>
												</div>
												<div class="col-12 col-md-8 mb-3">
													<div class="form-floating">
														<select class="form-select" id="select_distrito_cliente" name="codigo_distrito" aria-label="Default select example">
															<option selected value="0">Seleccione Distrito</option>
														</select>
														<label for="select_distrito_cliente">Distrito</label>
													</div>
												</div>
											</div>
											
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating"><input type="text" id="id_direccion_cliente" name="direccion_usuario" class="form-control">
														<label for="id_direccion_cliente">Dirección</label>
													</div>
												</div>
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating"><input type=text id="id_referencia_cliente" name="referencia_usuario" class="form-control">
														<label for="id_referencia_cliente">Referencia</label>
													</div>
												</div>
											</div>
											
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="form-floating text-center">
													<button class="btn btn__primary" type="button" id="registra_mascota">Registrar</button>
												</div>
											</div>
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
						<button class="btn btn-primary d-none" type="button" id="id_btnModal_RegistrarMascota"><i data-feather="plus"></i>Nueva Mascota</button>
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>
			
		<!-- Modal de Registro de Mascotas -->
		<div class="modal fade p-0" id="id_modal_RegistrarMascota">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center">
								<b>Registrar Mascota</b>
							</h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12">
										<form id="id_form_registraMascota">
										
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating"><input type="text" id="id_nombre_mascota" name="nombre_mascota" class="form-control">
														<label for="id_nombre_mascota">Nombre de Mascota</label>
													</div>
												</div>
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating"><input type="date" id="id_fecha_mascota" name="fecha_nacimiento_mascota" class="form-control">
														<label for="id_fecha_mascota">Fecha de nacimiento</label>
													</div>
												</div>
											</div>
											
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating">
														<select class="form-select" id="select_especie_mascota" name="codigo_especie_mascota" aria-label="Select">
															<option selected value="0">Seleccione Especie</option>
														</select>
														<label for="select_especie_mascota">Especie</label>
													</div>
												</div>
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating">
														<select class="form-select" id="select_raza_mascota" name="codigo_raza_mascota" aria-label="Select">
															<option selected value="0">Seleccione Raza</option>
														</select>
														<label for="select_raza_mascota">Raza</label>
													</div>
												</div>
											</div>
											
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating">
														<select class="form-select" id="select_color_mascota" name="codigo_color_mascota" aria-label="Select">
															<option selected value="0">Seleccione Color</option>
														</select>
														<label for="select_color_mascota">Color</label>
													</div>
												</div>
												<div class="col-12 col-md-6 mb-3">
													<div class="form-floating">
														<select class="form-select" id="select_sexo_mascota" name="codigo_sexo_mascota" aria-label="Select">
															<option selected value="0">Seleccione Sexo</option>
														</select>
														<label for="select_sexo_mascota">Sexo</label>
													</div>
												</div>
											</div>
											
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="form-floating text-center">
													<button class="btn btn__primary" type="button" id="registra_mascota">Registrar</button>
												</div>
											</div>
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
	
	<script type="text/javascript">
	
		function mostrarAlerta(mensaje) {
		    $('#alerta_dogtor').empty();
			const alerta = '<div class="alert alert-warning alert-dismissible fade show" id="alert" role="alert">' 
			+ mensaje + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
			$('#alerta_dogtor').append(alerta);
			$('#alert').show();
		}
	
		var selectedDistrito, selectedColor, selectedSexo, selectedRaza, selectedEspecie, selectedTipoServicio, selectedEspecialidadServicio;
	
        // Load icons
        feather.replace();

        function agregarGrillaPropietarios(lista) {
            $('#id_table_propietario').DataTable().clear();
            $('#id_table_propietario').DataTable().destroy();
            $('#id_table_propietario').DataTable({
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
	                        data : "codigo_usuario"
	                    },
	                    {
	                        data : function (row, type, val, meta) {
	                            let cliente = '';
	                            cliente = row.nombre_usuario + ' ' + row.apellido_usuario;
	                            return cliente;
	                        },className : 'text-center mx-auto'
	                    },
	                    {
	                        data : "email_usuario"
	                    },
	                    {
	                        data : function (row, type, val, meta) {
	                            var btnSeleccionar = '<button type="button" class="btn btn__clean btn-sm" onclick="seleccionarPropietario(\''
	                                    + row.codigo_usuario
	                                    + '\',\''
	                                    + row.nombre_usuario
	                                    + '\',\''
	                                    + row.apellido_usuario
	                                    + '\',\''
	                                    + row.email_usuario
	                                    + '\')"><i data-feather="user-check"></i></button>';
	                            return btnSeleccionar
	                        },className : 'text-center mx-auto'
	                    },
					]
              });

            // Reload icons
            feather.replace();

            $('#id_table_propietario').DataTable().columns.adjust().draw();
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

        function listarUsuarioPorNombreYRol(nombre) {
            $.getJSON("listaUsuarioPorNombreYRol", {"nombre_usuario" : nombre, "codigo_rol_usuario": 2}, function (lista) {
                agregarGrillaPropietarios(lista);
            });
        }

        function listarMascotaPorPropietarioYNombre(propietario, nombre) {
            $.getJSON("listaMascotaPorPropietarioYNombre", {"codigo_propietario" : propietario,"nombre_mascota" : nombre}, function (lista) {
                agregarGrillaMascotas(lista);
            });
        }
        
        function listaServicioPorTipoYEspecialidad(tipo, especialidad) {
            $.getJSON("listaServicioPorTipoYEspecialidad", {"codigo_tipo" : tipo,"codigo_especialidad" : especialidad}, function (lista) {
                agregarGrillaServicios(lista);
            });
        }

        function seleccionarPropietario(codigo, nombre, apellido, email) {
            $('#id_codigo_propietario').val(codigo)
            $('#id_nombre_propietario').val(nombre)
            $('#id_apellido_propietario').val(apellido)
            $('#id_email_propietario').val(email)
            $('#id_modal_BuscarCliente').modal("hide");
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

        $(document).ready(function () {
            
            // Selects Cliente
            
            const selectDistrito = $('#select_distrito_cliente');
            
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
            
			// Validar selects cuando cambie el option en Registrar
			
			selectDistrito.change(function(e) {
				selectedDistrito = e.target.selectedIndex;
				validateSelect(selectDistrito, selectedDistrito, 'distrito');
			});
            
            // Selects Mascota
            
            const selectEspecie = $('#select_especie_mascota');
            const selectColor = $('#select_color_mascota');
            const selectRaza = $('#select_raza_mascota');
            const selectSexo = $('#select_sexo_mascota');
            
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
		
			generarSelectEspecie(selectEspecie);
			generarSelectColor(selectColor);
			generarSelectSexo(selectSexo);
			
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
			
			// Get Raza en función a la especie Registra
			
			selectEspecie.change(function(e) {
				selectedEspecie = e.target.selectedIndex;
				
				$.getJSON('listaRaza', {"especie":selectedEspecie}, function(data) {
					
					// Limpia las razas de la especie anterior
					
					if($('#select_raza_mascota > option').hasClass("option__raza")) {
						$("#select_raza_mascota > option.option__raza").remove();
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

	        /*const btnRegister = $('#registrar_cita');
	        const btnModalRegister = $('#id_btnModal_RegistraCita');
	        const modalRegister = $('#id_modal_RegistraCita');*/
	        
	        /* =================================================================== */
	        
	
	        // Propietarios (Usuario con Rol Cliente)
	        const btnMostrarBuscarCliente = $('#id_btnModal_BuscarCliente');
	        const modalBuscarCliente = $('#id_modal_BuscarCliente');
	
	        btnMostrarBuscarCliente.click(function () {
	            modalBuscarCliente.modal("show");
	        });
	
	        const btnFilterCliente = $('#filtra_cliente');
	
	        btnFilterCliente.click(function () {
	            var nombre = $('#id_cliente_filtro').val();
	            listarUsuarioPorNombreYRol(nombre);
	        });
	
	        const btnMostrarRegistrarCliente = $('#id_btnModal_RegistrarCliente');
	        const modalRegistrarCliente = $('#id_modal_RegistrarCliente');
	
	        btnMostrarRegistrarCliente.click(function () {
	            modalBuscarCliente.modal("hide");
	            modalRegistrarCliente.modal("show");
	        });
	
	        // Mascotas
	        const btnMostrarBuscarMascota = $('#id_btnModal_BuscarMascota');
	        const modalBuscarMascota = $('#id_modal_BuscarMascota');
	
	        btnMostrarBuscarMascota.click(function () {
	            modalBuscarMascota.modal("show");
	        });
	
	        const btnFilterMascota = $('#filtra_mascota');
	
	        btnFilterMascota.click(function () {
	            var propietario = $('#id_codigo_propietario').val();
	            var nombre = $('#id_mascota_filtro').val();
	
	            if (propietario.length > 0) {
	                listarMascotaPorPropietarioYNombre(propietario, nombre);
	            } else {
	                modalBuscarMascota.modal("hide");
	                mostrarAlerta("<strong>¡Recuerda!</strong> Es necesario seleccionar un Cliente antes de buscar Mascotas");
	            }
	        });
	
	        const btnMostrarRegistrarMascota = $('#id_btnModal_RegistrarMascota');
	        const modalRegistrarMascota = $('#id_modal_RegistrarMascota');
	
	        btnMostrarRegistrarMascota.click(function () {
	            modalBuscarMascota.modal("hide");
	            modalRegistrarMascota.modal("show");
	        });
	        
	        // Servicios
	        
	        const btnMostrarBuscarServicio = $('#id_btnModal_BuscarServicio');
	        const modalBuscarServicio = $('#id_modal_BuscarServicio');
	        
	        btnMostrarBuscarServicio.click(function() {
	            modalBuscarServicio.modal("show");
	        });
	        
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
						}
					},
					
				}
			});
	        
	        // Cita
	        
	        const btnRegistrarCita = $('#btnRegistrarCita');
	        
	        btnRegistrarCita.click(function() {
	            var validator = $('#id_form_registraCita').data('bootstrapValidator');
				validator.validate();
				    
				const servicio = $('#id_codigo_servicio').val();
				const propietario = $('#id_codigo_propietario').val();
				const mascota = $('#id_codigo_mascota').val();
				
				if(validator.isValid() && servicio.length > 0 && propietario.length > 0 && mascota.length > 0) {
				    $.ajax({
						type: 'POST',
						data: $('#id_form_registraCita').serialize(),
						url: 'registraCita',
						success: function(data) {
							mostrarMensaje(data.MENSAJE);
							limpiarRegistrarCita();
							validator.resetForm();
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
				    
		            if(propietario.length === 0) {
		                $('#id_btnModal_BuscarCliente').popover('show');
		            }
		            
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
	            $('#id_codigo_propietario').val('');
	            $('#id_email_propietario').val('');
	            $('#id_nombre_propietario').val('');
	            $('#id_apellido_propietario').val('');
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