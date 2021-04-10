<!DOCTYPE html>
<html lang="es" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
	
	<title>Registra Mascota</title>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light-custom">
    <div class="container">
        <a class="navbar-brand text-primary-color" href="./"><img src="../../images/logo.png" alt="Logo dogtor" width="250"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link link-menu text-secondary-color" href="">Inicio</a>
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
            	<a class="btn btn-primary btn-singin" href="">Iniciar Sesión</a>
        	</div>
        </div>
    </div>
  </nav>

    <div class="container">
        <div class="row">
            <div class="col-sm-12 justify-content-center align-items-center d-flex">
                <main class="col-10 col-md-8 form-signin">
                    <form id="id_form">
                      <h1 class="h3 mb-4 mt-4 fw-normal text-center"><b>Registro de Mascota</b></h1>
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


	<script type="text/javascript">
		
	$(document).ready(function() {
		
		const selectEspecie = $('#select_especie');
		const selectColor = $('#select_color');
		const selectSexo = $('#select_sexo');
		const selectRaza = $('#select_raza');
		const btnRegister = $('#registrar_mascota');
		
		// Get Especie
		
		$.getJSON('listaEspecie', function(data) {
			$.each( data, function( index, value ) {
				let option = document.createElement('option');
				option.value = value.codigo_especie_mascota;
				option.text = value.nombre_especie_mascota;
				selectEspecie.append(option);
			});
		});
		
		// Get Color
		
		$.getJSON('listaColor', function(data){
			  $.each( data, function( index, value ) {
				  let option = document.createElement('option');
				  option.value = value.codigo_color_mascota;
				  option.text = value.nombre_color_mascota;
				  selectColor.append(option);
			  });
		});
		
		// Get Sexo
		
		$.getJSON('listaSexo', function(data) {
			$.each( data, function( index, value) {
				  let option = document.createElement('option');
				  option.value = value.codigo_sexo_mascota;
				  option.text = value.nombre_sexo_mascota;
				  selectSexo.append(option);
			});
		});
		
		function createErrorMessage (element, message, name) {
			
			if($('#'+name+'ErrorMessage').length < 1) {
				const errorMessage = document.createElement('div');
				errorMessage.className = 'invalid-feedback d-block';
				errorMessage.id = name + 'ErrorMessage';
				errorMessage.innerHTML = message;
				element.parent().after(errorMessage);
			}
			
		}
		
		function validateSelect (element, selectedIndex, name) {
			console.log(selectedIndex)
			
			if(selectedIndex === 0 || selectedIndex === undefined) {
				createErrorMessage(element, '* Este campo es obligatorio', name);
			} else {
				if(selectedIndex > 0) {
					$('#'+name+'ErrorMessage').remove();
				}
			}
		}
		
		var selectedColor, selectedSexo, selectedRaza, selectedEspecie;
		
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
		
		// Get Raza en función a la especie
		
		selectEspecie.change(function(e) {
			//console.log(e.target.options[e.target.selectedIndex].text); // Selected Value
			selectedEspecie = e.target.selectedIndex;
			
			$.getJSON('listaRaza', {"especie":selectedEspecie}, function(data) {
				
				// Limpia las razas de la especie anterior
				
				if($('#select_raza > option').hasClass("option__raza")) {
					$("#select_raza > option.option__raza").remove();
					//$("#select_raza")[0].selectedIndex = 0;
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
			
			validateSelect(selectEspecie, selectedEspecie, 'especie');
			validateSelect(selectRaza, selectedRaza, 'raza');
		});
		
		$('#id_form').bootstrapValidator({
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
	
		btnRegister.click(function() {
			var validator = $('#id_form').data('bootstrapValidator');
			validator.validate();
			
			validateSelect(selectEspecie, selectedEspecie, 'especie');
			validateSelect(selectRaza, selectedRaza, 'raza');
			validateSelect(selectSexo, selectedSexo, 'sexo');
			validateSelect(selectColor, selectedColor, 'color');
			
			if(selectedEspecie > 0 && selectedColor > 0 && selectedSexo > 0 && selectedRaza > 0 && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form').serialize(),
					url: 'registraMascota',
					success: function(data) {
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
	
/*		$.ajax({
			type: 'POST',
			data: $('#id_form').serialize(),
			url: 'registraUsuario',
			success: function(data) {
				mostrarMensaje(data.MENSAJE)
				limpiar();
				validator.resetForm()
			},
			error: function() {
				mostrarMensaje(MSG_ERROR)
			}
		});*/
	});
		

	
	</script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>




