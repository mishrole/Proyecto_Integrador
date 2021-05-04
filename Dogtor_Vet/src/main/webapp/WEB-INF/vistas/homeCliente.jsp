<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
	
	<title>Home Cliente</title>
</head>
<body>

 <jsp:include page="header.jsp" />

    <div class="container">
        <div class="row">
        	<h5 class="text-principal-color mb-3 mt-3">Hola ${sessionScope.objUsuario.nombre_usuario} ${sessionScope.objUsuario.apellido_usuario}</h5>
            <h4 class="text-principal-color mb-3 mt-3">Mis mascotas</h4>
            <div class="col-12 d-flex justify-content-end align-items-center mt-3 mb-3">
            	<div class="col-12 col-md-2">
            		<button type="button" data-toggle="modal" id="id_btnModal_RegistraMascota" data-target="#id_modal_RegistraMascota" class='w-100 btn btn-primary btn-generic'>Nueva Mascota</button>
            	</div>
            </div>
            <div class="d-flex flex-wrap justify-content-center align-items-center mt-3 mb-3" id="mascotas_container">
            </div>
        </div>
        
        <div class="row">
        	<h4 class="text-principal-color mb-3 mt-3">Mis Citas</h4>
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
					                      
					                      <input type="text" id="id_propietario" name="codigo_propietario" value="${sessionScope.objUsuario.codigo_usuario}" class="d-none">
					                    
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
					                      		<div class="form-floating">
					                      			<input type="file" class="form-control" id="id_foto" name="foto_mascota" />
					                      		</div>
					                      	</div>
					                      </div>
					                      
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
						                   			<label for="id_identificaci�n"># Identificaci�n</label>
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
		
	$(document).ready(function() {
		
		// Selects
		
		const selectEspecie = $('#select_especie');
		const selectColor = $('#select_color');
		const selectSexo = $('#select_sexo');
		const selectRaza = $('#select_raza');
		
		// Botones
		const btnRegister = $('#registrar_mascota');
		const btnModalRegister = $('#id_btnModal_RegistraMascota');
		
		// Modals
		
		const modalRegister = $('#id_modal_RegistraMascota');
		
		// Abrir Modal con Click
		
		btnModalRegister.click(function() {
			modalRegister.modal("show");
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
		
		
		// Get Raza en funci�n a la especie Registra
		
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
		
		$('#id_form_registra').bootstrapValidator({
			message: 'El valor no es v�lido',
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
				/*
				$.ajax({
					type: 'POST',
					data: $('#id_form_registra').serialize(),
					url: 'registraMascota',
					success: function(data) {
						$('#id_modal_RegistraMascota').modal("hide");
						mostrarMensaje(data.MENSAJE)
						limpiar();
						validator.resetForm()
						mascotasContainer.empty();
						generarListaMascotas();
					},
					error: function() {
						mostrarMensaje(MSG_ERROR)
					}
				});*/
				
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
					success: function(data, statusText, xhr) {
						if(xhr.status == "200") {
							$('#id_modal_RegistraMascota').modal("hide");
							mostrarMensaje(data.MENSAJE);
							limpiar();
							validator.resetForm();
							mascotasContainer.empty();
							generarListaMascotas();
							console.log($('#id_form_registra').serialize());
						}
					},
					error: function() {
						mostrarMensaje(MSG_ERROR);
					}
				});
			}
		});
		
		const mascotasContainer = $("#mascotas_container");
		const codigoPropietario = $("#id_propietario").val();
		
		function calcularEdad(fechaString) {
		    var hoy = new Date();
		    var fechaNacimiento = new Date(fechaString);
		    var edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
		    var m = hoy.getMonth() - fechaNacimiento.getMonth();
		    if (m < 0 || (m === 0 && hoy.getDate() < fechaNacimiento.getDate())) 
		    {
		    	edad--;
		    }
		    return edad;
		}
		
		function generarListaMascotas() {
			$.getJSON("listaMascotaPorPropietario", {"codigo_propietario": codigoPropietario}, function(lista) {
				console.log(lista);
				
				if(lista.length > 0) {
					$.each( lista, function(index, mascota) {
						const divContainer = document.createElement('div');
						divContainer.className = "col-6 col-md-3 mb-2 mt-2";
						
						const cardPet = document.createElement('div');
						cardPet.className = "card pet__card h-100";
						
						const imgPet = document.createElement('img');
						imgPet.src = "../../images/pet.jpg";
						imgPet.className = "card-img-top";
						imgPet.alt = "Dog";
						
						const cardBody = document.createElement('div');
						cardBody.className = "card-body";
						
						const cardBodyTitle = document.createElement('h5');
						cardBodyTitle.className = "card-title bold text-center";
						cardBodyTitle.innerHTML = mascota.nombre_mascota;
						
						const cardBodyText = document.createElement('p');
						cardBodyText.className = "card-text text-center";
						
						const edadCalculada = calcularEdad(mascota.fecha_nacimiento_mascota);
						
						let edadActual;
						
						if(edadCalculada == 1) {
							edadActual = edadCalculada + " a�o";
						} else {
							edadActual = edadCalculada + " a�os";
						}	
						
						cardBodyText.innerHTML = edadActual;
						
						const cardFooter = document.createElement('div');
						cardFooter.className = "card-footer text-center";
						
						const cardFooterContent = document.createElement('small');
						cardFooterContent.className = "text-muted text-center d-lg-flex justify-content-lg-between";
						
						const btnHistorial = document.createElement('button');
						btnHistorial.className = "btn btn-secondary col-12 col-lg-6";
						btnHistorial.innerHTML = "Historial"
						
						const btnCita = document.createElement('button');
						btnCita.className = "btn btn-primary btn-generic col-12 col-lg-6";
						btnCita.innerHTML = "Cita"
						
						// Input invisible con el c�digo de la mascota
						const inputCodigoMascota = document.createElement('input');
						inputCodigoMascota.innerHTML = mascota.codigo_mascota;
						inputCodigoMascota.className = "d-none";
						
						// Anidar elementos creados para formar Card de Mascota
						
						cardBody.append(cardBodyTitle, cardBodyText);
						
						cardFooterContent.append(inputCodigoMascota, btnHistorial, btnCita);
						cardFooter.append(cardFooterContent);
						
						cardPet.append(imgPet, cardBody, cardFooter);
						
						divContainer.append(cardPet);
						mascotasContainer.append(divContainer);
					});
					
				} else {
					const divContainer = document.createElement('div');
					divContainer.className = "col-12 mb-2 mt-2";
					
					const title = document.createElement('h4');
					title.className = "text-center";
					title.innerHTML = "Todav�a no tienes mascotas registradas";
					
					divContainer.append(title);
					mascotasContainer.append(divContainer);
				}
				
				
				
			});
		}
		
		generarListaMascotas();
		
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
		
	});
	
	</script>
	
</body>
</html>