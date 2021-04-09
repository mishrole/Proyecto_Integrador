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
            	<a class="btn btn-primary btn-singin" href="">Iniciar Sesi�n</a>
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
								  <option selected>Seleccione Especie</option>
								</select>
								<label for="select_especie">Especie</label>
                      		</div>
					  	</div>
					  	<div class="col-12 col-md-6 mb-3">
						  	<div class="form-floating">
		                      	<select class="form-select" id="select_raza" name="codigo_raza_mascota" aria-label="Default select example">
								  <option selected>Seleccione Raza</option>
								</select>
								<label for="select_raza">Raza</label>
	                      </div>
					  	</div>
					  </div>
                      <div class="form-group row">
                      	<div class="col-12 col-md-6 mb-3">
	                      	<div class="form-floating">
		                      	<select class="form-select" id="select_color" name="codigo_color_mascota" aria-label="Default select example">
								  <option selected>Seleccione Color</option>
								</select>
								<label for="select_color">Color</label>
	                      </div>
                      	</div>
                      	<div class="col-12 col-md-6 mb-3">
	                      	<div class="form-floating">
		                      	<select class="form-select" id="select_sexo" name="codigo_sexo_mascota" aria-label="Default select example">
								  <option selected>Seleccione Sexo</option>
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
					  			<input type="text" class="form-control" id="id_identificaci�n" name="codigo_identificacion_mascota" autocomplete="on" >
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


	<script type="text/javascript">
		
	$(document).ready(function() {
		
		const selectEspecie = $('#select_especie');
		const selectColor = $('#select_color');
		const selectSexo = $('#select_sexo');
		const selectRaza = $('#select_raza');
		
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
		
		// Get Raza en funci�n a la especie
		
		selectEspecie.change(function(e) {
			//console.log(e.target.options[e.target.selectedIndex].text); // Selected Value
			const selectedEspecie = e.target.selectedIndex;
			
			$.getJSON('listaRaza', {"especie":selectedEspecie}, function(data) {
				
				// Limpia las razas de la especie anterior
				
				if($('#select_raza > option').hasClass("option__raza")) {
					$("#select_raza > option.option__raza").remove();
				}
				
				$.each( data, function( index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_raza_mascota;
					option.text = value.nombre_raza_mascota;
					option.className = "option__raza";
					selectRaza.append(option);
				});
			});
		});
		
		
	
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



