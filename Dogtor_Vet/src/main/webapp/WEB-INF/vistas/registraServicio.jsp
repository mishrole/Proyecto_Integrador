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
	
	<title>Registra Servicio</title>
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
                <main class="col-10 col-md-8">
                    <form id="id_form">
                      <h1 class="h3 mb-4 mt-4 fw-normal text-center"><b>Registro de Servicio</b></h1>
                    
                    <div class="form-group row">
                    	<div class="col-12 col-md-8 mb-3">
                    		 <div class="form-floating">
		                      <input type="text" class="form-control" id="id_nombre" name="nombre_servicio" autocomplete="on" >
		                      <label for="id_nombre">Nombre</label>
                      		</div>
                    	</div>
                    	<div class="col-12 col-md-4 mb-3">
	                      	<div class="form-floating">
	                      		<input type="text" class="form-control" id="id_precio" name="precio_servicio" autocomplete="on" >
	                      		<label for="id_precio">Precio</label>
	                      </div>
                      	</div>
                    </div>
                    
                    <div class="form-group row">
					  	<div class="col-12 mb-3">
					  		<div class="form-floating">
		                      	<select class="form-select" id="select_tipo_servicio" name="codigo_tipo_servicio" aria-label="Default select example">
								  <option selected value="0">Seleccione Tipo</option>
								</select>
								<label for="select_tipo_servicio">Tipo</label>
                      		</div>
					  	</div>
					  </div>
                    
                    <div class="form-group row">
                    	<div class="col-12 col-md-4 mb-3">
                    		 <div class="form-floating">
		                      <input type="text" class="form-control" id="id_horario" name="horario_servicio" autocomplete="on" >
		                      <label for="id_horario">Horario</label>
                      		</div>
                    	</div>
                    	<div class="col-12 col-md-4 mb-3">
	                      	<div class="form-floating">
	                      		<input type="date" class="form-control" id="id_fecha" name="fecha_servicio" autocomplete="on" >
	                      		<label for="id_fecha">Fechas</label>
	                      </div>
                      	</div>
                      	<div class="col-12 col-md-4 mb-3">
	                      	<div class="form-floating">
	                      		<input type="text" class="form-control" id="id_limite" name="limite_servicio" autocomplete="on" >
	                      		<label for="id_limite">Límite diario</label>
	                      </div>
                      	</div>
                    </div>
			
                     <div class="form-group row">
                		<div class="col 12 mb-3">
                			<div class="form-floating">
                				<textarea class="form-control" id="id_descripcion" name="descripcion_servicio" rows="5"></textarea>
								<label for="id_descripcion" class="form-label">Descripción</label>
                			</div>
                		</div>
                	</div>

                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="registrar_servicio">Registrar</button>
                    </form>
                  </main>
            </div>
        </div>
    </div>
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	
	<script type="text/javascript">
		
	$(document).ready(function() {
		
		const btnRegister = $('#registrar_Servicio');
		const selectTipoServicio = $('#select_tipo_servicio');
		const textareaDescripcion = $('#id_descripcion');
		
		// Get Tipo de Servicio
		
		$.getJSON('listaServicio', function(data) {
			$.each( data, function (index, value) {
				let option = document.createElement('option');
				option.value = value.codigo_tipo_servicio;
				option.text = value.nombre_tipo_servicio;
				selectTipoServicio.append(option);
			});
		});
		
		var selectedTipoServicio, countTextareaDescripcion;
		
		// Validar select cuando cambie el option
		
		selectTipoServicio.change(function(e) {
			selectedTipoServicio = e.target.selectedIndex;
			validateSelect(selectTipoServicio, selectedTipoServicio, 'tipo');
		});
		
		// Validar textarea
		
		textareaDescripcion.on('keyup', function(e) {
			countTextareaDescripcion = textareaDescripcion.val().trim().length;
			validateTextarea(textareaDescripcion, countTextareaDescripcion, 'textareaDescripcion');
		});
		
		
	});
	
	</script>
</body>
</html>