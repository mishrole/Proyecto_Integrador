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
	
	<title>Registra Mascota</title>
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
            	<a class="btn btn-primary btn-singin" href="login">Cerrar Sesión</a>
        	</div>
        </div>
    </div>
  </nav>

    <div class="container">
    	<div class="row">
    		<div class="col-12" >
    		
    			<div class="row mt-3 mb-3">
    				<div class="col-12">
	    				<div class="col-10 col-md-2">
							<button type="button" data-toggle="modal" id="id_btnModal_RegistraMascota" data-target="#id_modal_RegistraMascota" class='w-100 btn btn-primary btn-generic'>Nueva Mascota</button>
						</div>
    				</div>
    			</div>
    		
				<form id="id_form_elimina" action="eliminaMascota">
					<input type="hidden" id="id_elimina" name="codigo_mascota">
				</form>
		     
				<div class="row mt-3 mb-3 col-sm-12 justify-content-center align-items-center d-flex">
					<div class="col-10 col-md-6" >
						<input class="form-control" id="id_nombre_filtro" name="filtro_nombre_mascota" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
					</div>
					<div class="col-10 col-md-2" >
						<button type="button" class="w-100 btn btn-primary" id="filtra_mascota">Filtrar Mascotas</button>
					</div>
				</div>
					
				<div class="row mt-3 mb-3" > 
					<div class="col-12" >
						<div class="content table-responsive" >
						
							<table id="id_table" class="table table-borderless" >
								<thead>
									<tr>
										<th>ID</th>
										<th>Dueño</th>
										<th>Nombre</th>
										<th>Foto</th>
										<th>Raza</th>
										<th>Sexo</th>
										<th>Especie</th>
										<th>Color</th>
										<th>Nacimiento</th>
										<th>Rastreo</th>
										<th>Sanitario</th>
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
    	
    	<div class="modal fade" id="id_modal_RegistraMascota">
    		<div class="modal-dialog">
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
					                      
					                      <input type="text" id="id_propietario" name="codigo_propietario" value="1" class="d-none">
					                    
					                   	  <div class="form-group form-floating mb-3">
						                      <input type="text" class="form-control" id="id_nombre" name="nombre_mascota" placeholder="John" autocomplete="on" >
						                      <label for="id_nombre">Nombre</label>
					                      </div>
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_especie" name="codigo_especie_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Especie</option>
													</select>
													<label for="select_especie">Especie</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
							                      	<select class="form-select" id="select_raza" name="codigo_raza_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Raza</option>
													</select>
													<label for="select_raza">Raza</label>
						                      </div>
										  	</div>
										  </div>
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_color" name="codigo_color_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Color</option>
													</select>
													<label for="select_color">Color</label>
						                      </div>
					                      	</div>
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_sexo" name="codigo_sexo_mascota" aria-label="Default select example">
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
					                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="registrar_mascota">Registrar</button>
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
    		<div class="modal-dialog">
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
					                      <input type="text" id="id_foto_actualiza" name="foto_mascota" class="d-none">
					                    
					                   	  <div class="form-group form-floating mb-3">
						                      <input type="text" class="form-control" id="id_nombre_actualiza" name="nombre_mascota" placeholder="John" autocomplete="on" >
						                      <label for="id_nombre_actualiza">Nombre</label>
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
					                      <div class="form-group form-floating mb-3">
					                        <input type="date" class="form-control" id="id_fecha_nacimiento_actualiza" name="fecha_nacimiento_mascota" autocomplete="on">
					                        <label for="id_fecha_nacimiento_actualiza">Fecha de nacimiento</label>
					                      </div>
										  <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_identificacion_actualiza" name="codigo_identificacion_mascota" autocomplete="on" >
						                   			<label for="id_identificacion_actualiza"># Identificación</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
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
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	
	<script type="text/javascript">
	
	var selectedColorActualiza, selectedSexoActualiza, selectedRazaActualiza, selectedEspecieActualiza;
	
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
					{data: "codigo_mascota"},
					{data: "codigo_propietario"},
					{data: "nombre_mascota"},
					{data: "foto_mascota"},
					{data: "codigo_raza_mascota"},
					{data: "codigo_sexo_mascota"},
					{data: "codigo_especie_mascota"},
					{data: "codigo_color_mascota"},
					{data: "fecha_nacimiento_mascota"},
					{data: "codigo_identificacion_mascota"},
					{data: "codigo_cartilla_sanitaria"},
					{data: function(row, type, val, meta){
						var salida='<button type="button" class="btn btn-info btn-sm btnModal_ActualizaMascota" onclick="editar(\'' + row.codigo_mascota +
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
								'\')">Editar</button>';
						return salida;
					},className:'text-center'},	
					{data: function(row, type, val, meta){
					    var salida='<button type="button" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.codigo_mascota + '\')">Eliminar</button>';
						return salida;
					},className:'text-center'},													
				]                                     
		    });
		}
		
		function eliminar(codigo_mascota) {
			mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar, null, codigo_mascota);
			console.log("Código mascota en eliminar "+ codigo_mascota);
		}
		
		function accionEliminar(codigo_mascota) {
			$('#id_elimina').val(codigo_mascota);
			console.log("Código mascota en accionEliminar "+ codigo_mascota);
			$.ajax({
				type: "POST",
				url: "eliminaMascota",
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
		
		function editar(codigo_mascota, codigo_propietario, nombre_mascota, foto_mascota, codigo_raza_mascota, codigo_sexo_mascota,
		codigo_especie_mascota, codigo_color_mascota, fecha_nacimiento_mascota, codigo_identificacion_mascota, codigo_cartilla_sanitaria) {
				
			selectedColorActualiza = codigo_color_mascota;
			selectedSexoActualiza = codigo_sexo_mascota;
			selectedRazaActualiza = codigo_raza_mascota;
			selectedEspecieActualiza = codigo_especie_mascota;
			
			console.log(selectedEspecieActualiza);
			console.log(selectedRazaActualiza);
			
			$('#id_mascota_actualiza').val(codigo_mascota);
			$('#id_propietario_actualiza').val(codigo_propietario);
			$('#id_nombre_actualiza').val(nombre_mascota);
			$('#id_foto_actualiza').val(foto_mascota);
			$('#select_sexo_actualiza').val(codigo_sexo_mascota);
			$('#select_especie_actualiza').val(codigo_especie_mascota);
			$('#select_color_actualiza').val(codigo_color_mascota);
			$('#id_fecha_nacimiento_actualiza').val(fecha_nacimiento_mascota);
			$('#id_identificacion_actualiza').val(codigo_identificacion_mascota);
			$('#id_sanitaria_actualiza').val(codigo_cartilla_sanitaria);
			
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
		
		// Selects	
		
		const selectEspecie = $('#select_especie');
		const selectColor = $('#select_color');
		const selectSexo = $('#select_sexo');
		const selectRaza = $('#select_raza');
		
		const selectEspecieActualiza = $('#select_especie_actualiza');
		const selectColorActualiza = $('#select_color_actualiza');
		const selectSexoActualiza = $('#select_sexo_actualiza');
		const selectRazaActualiza = $('#select_raza_actualiza');
		
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
		
		btnFilter.click(function() {
			const filterText = $('#id_nombre_filtro').val();
			
			$.getJSON("listaMascotaPorNombre", {"nombre_mascota": filterText}, function(lista) {
				agregarGrilla(lista);
			});
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
		
		// Registrar mascota
	
		btnRegister.click(function() {
			var validator = $('#id_form_registra').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectEspecie, selectedEspecie, 'especie');
			validateSelect(selectRaza, selectedRaza, 'raza');
			validateSelect(selectSexo, selectedSexo, 'sexo');
			validateSelect(selectColor, selectedColor, 'color');
			
			if(selectedEspecie > 0 && selectedColor > 0 && selectedSexo > 0 && selectedRaza > 0 && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form_registra').serialize(),
					url: 'registraMascota',
					success: function(data) {
						agregarGrilla(data.lista);
						$('#id_modal_RegistraMascota').modal("hide");
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
		
		// Actualizar mascota
		
		btnUpdate.click(function() {
			var validator = $('#id_form_actualiza').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectEspecieActualiza, selectedEspecieActualiza, 'especie');
			validateSelect(selectRazaActualiza, selectedRazaActualiza, 'raza');
			validateSelect(selectSexoActualiza, selectedSexoActualiza, 'sexo');
			validateSelect(selectColorActualiza, selectedColorActualiza, 'color');
			
			if(selectedEspecieActualiza > 0 && selectedColorActualiza > 0 && selectedSexoActualiza > 0 && selectedRazaActualiza > 0 && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form_actualiza').serialize(),
					url: 'actualizaMascota',
					success: function(data) {
						agregarGrilla(data.lista);
						$('#id_modal_ActualizaMascota').modal("hide");
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