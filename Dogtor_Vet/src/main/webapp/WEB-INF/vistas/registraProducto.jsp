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
	<link rel="stylesheet" type="text/css" href="css/simditor.css" />
	
	<title>Registra Producto</title>
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
            	<a class="btn btn-primary btn-singin" href="login">Iniciar Sesión</a>
        	</div>
        </div>
    </div>
  </nav>

    <div class="container">
        <div class="row">
            <div class="col-sm-12 justify-content-center align-items-center d-flex">
                <main class="col-10 col-md-8">
                    <form id="id_form">
                      <h1 class="h3 mb-4 mt-4 fw-normal text-center"><b>Registro de Producto</b></h1>
                      <input type="text" id="id_propietario" name="codigo_propietario" value="1" class="d-none">
                    
                    <div class="form-group row">
                    	<div class="col-12 col-md-8 mb-3">
                    		 <div class="form-floating">
		                      <input type="text" class="form-control" id="id_nombre" name="nombre_producto" autocomplete="on" >
		                      <label for="id_nombre">Nombre</label>
                      		</div>
                    	</div>
                    	<div class="col-12 col-md-4 mb-3">
	                      	<div class="form-floating">
	                      		<input type="text" class="form-control" id="id_serie" name="serie_producto" autocomplete="on" >
	                      		<label for="id_serie">Serie</label>
	                      </div>
                      	</div>
                    </div>
                    
                      <div class="form-group row">
                      
					  	<div class="col-12 col-md-6 mb-3">
					  		<div class="form-floating">
		                      	<select class="form-select" id="select_marca" name="codigo_marca" aria-label="Default select example">
								  <option selected value="0">Seleccione Marca</option>
								</select>
								<label for="select_marca">Marca</label>
                      		</div>
					  	</div>
					  	<div class="col-12 col-md-6 mb-3">
						  	<div class="form-floating">
		                      	<select class="form-select" id="select_categoria_producto" name="codigo_categoria_producto" aria-label="Default select example">
								  <option selected value="0">Seleccione Categoría</option>
								</select>
								<label for="select_categoria_producto">Categoría</label>
	                      </div>
					  	</div>
					  </div>
					  
					  <div class="form-group row">
  					  	<div class="col-12 mb-3">
	                      	<div class="form-floating">
		                      	<select class="form-select" id="select_proveedor" name="codigo_proveedor" aria-label="Default select example">
								  <option selected value="0">Seleccione Proveedor</option>
								</select>
								<label for="select_proveedor">Proveedor</label>
	                      </div>
                      	</div>
					  </div>
					  
                      <div class="form-group row">
                      	<div class="col-12 col-md-4 mb-3">
	                      	<div class="form-floating">
	                      		<input type="text" class="form-control" id="id_precio" name="precio_producto" autocomplete="on" >
	                      		<label for="id_precio">Precio</label>
	                      </div>
                      	</div>
                      	<div class="col-12 col-md-4 mb-3">
	                      	<div class="form-floating">
	                      		<input type="text" class="form-control" id="id_stock" name="stock_producto" autocomplete="on" >
	                      		<label for="id_stock">Stock</label>
	                      </div>
                      	</div>
                      	<div class="col-12 col-md-4 mb-3">
	                      	<div class="form-floating">
	                      		<input type="text" class="form-control" id="id_pedido" name="pedido_producto" autocomplete="on" >
	                      		<label for="id_pedido">En Pedido</label>
	                      </div>
                      	</div>
                      </div>
                      
                      <div class="form-group row">
                      	<div class="col-12 mb-3">
                     		<input class="form-control" type="file" id="id_fotos" multiple>
                      	</div>
                      </div>
                      
                      <div class="form-group row">
                      	<div class="col-12 mb-3">
                      		<div class="form-floating">
							<textarea class="form-control" id="id_descripcion_simple" name="descripcion_simple_producto" rows="5"></textarea>
							<label for="exampleFormControlTextarea1" class="form-label">Descripción Simple</label>
                      		</div>
                      	</div>
                      </div>
                      
                      <div class="form-group row">
                      	<div class="col-12 mb-3">
                      		<div class="form-floating">
                      			 <textarea id="id_descripcion_html" class="form-control" name="descripcion_html_producto">Escribe una descripción HTML</textarea>
                      		</div>
                      	</div>
                      </div>

                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="registrar_producto">Registrar</button>
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
	<script type="text/javascript" src="js/module.js"></script>
	<script type="text/javascript" src="js/hotkeys.js"></script>
	<script type="text/javascript" src="js/uploader.js"></script>
	<script type="text/javascript" src="js/simditor.js"></script>
	
	<script type="text/javascript">
		
	$(document).ready(function() {
		
		const btnRegister = $('#registrar_producto');
		
		const editor = new Simditor({
		  textarea: $('#id_descripcion_html')
		  //optional options
		});
		
		const selectMarca = $('#select_marca');
		const selectCategoriaProducto = $('#select_categoria_producto');
		const selectProveedor = $('#select_proveedor');
		const textareaSimple = $('#id_descripcion_simple');
		
		// Get Marca
		
		$.getJSON('listaMarca', function(data) {
			$.each( data, function( index, value) {
				let option = document.createElement('option');
				option.value = value.codigo_marca;
				option.text = value.nombre_marca;
				selectMarca.append(option);
			});
		});
		
		// Get Categoría
		
		$.getJSON('listaCategoriaProducto', function(data) {
			$.each( data, function( index, value) {
				let option = document.createElement('option');
				option.value = value.codigo_categoria_producto;
				option.text = value.nombre_categoria_producto;
				selectCategoriaProducto.append(option);
			});
		});
		
		// Get Proveedor
		
		$.getJSON('listaProveedor', function(data) {
			$.each( data, function( index, value) {
				let option = document.createElement('option');
				option.value = value.codigo_proveedor;
				option.text = value.nombre_proveedor;
				selectProveedor.append(option);
			});
		});
		
		var selectedMarca, selectedCategoriaProducto, selectedProveedor, countTextareaSimple;
		
		// Validar selects cuando cambie el option
		
		selectMarca.change(function(e) {
			selectedMarca = e.target.selectedIndex;
			validateSelect(selectMarca, selectedMarca, 'marca');
		});
		
		selectCategoriaProducto.change(function(e) {
			selectedCategoriaProducto = e.target.selectedIndex;
			validateSelect(selectCategoriaProducto, selectedCategoriaProducto, 'categoria');
		});
		
		selectProveedor.change(function(e) {
			selectedProveedor = e.target.selectedIndex;
			validateSelect(selectProveedor, selectedProveedor, 'proveedor');
		});
		
		// Validar textarea simple
		
		textareaSimple.on('keyup', function(e) {
			countTextareaSimple = textareaSimple.val().trim().length;
			validateTextarea(textareaSimple, countTextareaSimple, 'textareaSimple');
		});
		
		
		$('#id_form').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				nombre_producto: {
					selector: '#id_nombre',
					validators : {
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
				serie_producto: {
					selector: '#id_serie',
					validators : {
						notEmpty: {
							message: '* Obligatorio'
						},
					}
				},
				precio_producto: {
					selector: '#id_precio',
					validators : {
						notEmpty: {
							message: '* Obligatorio'
						},
						regexp: {
							regexp: /^(\d+)(\.\d{1,2})?$/,
							message: 'El precio debe ser decimal'
						}
					}
				},
				stock_producto: {
					selector: '#id_stock',
					validators : {
						notEmpty: {
							message: '* Obligatorio'
						},
						regexp: {
							regexp: /^([1-9][0-9]+|[0-9])$/,
							message: 'El stock es entero'
						}
					}
				},
				pedido_producto: {
					selector: '#id_pedido',
					validators : {
						notEmpty: {
							message: '* Obligatorio'
						},
						regexp: {
							regexp: /^([1-9][0-9]+|[0-9])$/,
							message: 'El pedido es entero'
						}
					}
				},
			}
		});
		
		// Registrar producto
		
		btnRegister.click(function() {
			
			var validator = $('#id_form').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectMarca, selectedMarca, 'marca');
			validateSelect(selectCategoriaProducto, selectedCategoriaProducto, 'categoria');
			validateSelect(selectProveedor, selectedProveedor, 'proveedor');
			
			// Validar textarea simple
			validateTextarea(textareaSimple, countTextareaSimple, 'textareaSimple');
			
			if(selectedMarca > 0 && selectedCategoriaProducto > 0 && selectedProveedor > 0 && countTextareaSimple >= 3 && countTextareaSimple <= 100 && validator.isValid()) {
				$.ajax({
					type: 'POST',
					data: $('#id_form').serialize(),
					url: 'registraProducto',
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
			$('#id_serie').val('');
			$('#select_marca')[0].selectedIndex = 0;
			$('#select_categoria_producto')[0].selectedIndex = 0;
			$('#select_proveedor')[0].selectedIndex = 0;
			$('#id_precio').val('');
			$('#id_stock').val('');
			$('#id_pedido').val('');
			$('#id_descripcion_simple').val('');
			$('#descripcion_html_producto').val('');
			
			// Reset de variables contadoras
			
			selectedMarca = 0;
			selectedCategoriaProducto = 0;
			selectedProveedor = 0;
			countTextareaSimple = 0;
		}
	});
	
	</script>
</body>
</html>