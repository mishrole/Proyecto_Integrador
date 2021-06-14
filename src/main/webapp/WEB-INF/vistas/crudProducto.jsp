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
	<title>Producto | Dogtor</title>
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
                <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-3 mt-5 menu__transition mx-auto">
                    <div class="content__body background__light__white menu__transition mt-4 mt-lg-0">
                        <div class="row justify-content-center align-items-center">
                            <div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold m-0">Producto</p>
                            </div>
                            <div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
                                <div class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
                                    <input type="text" name="filtro_nombre_producto" id="id_nombre_filtro" class="input__search title__color" placeholder="Buscar...">
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
                                        <p class="font__subtitle title__color font__semibold">Lista de Productos</p>
                                        <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraProducto" data-target="#id_modal_RegistraProducto">
                                        	<i data-feather="plus"></i>Nuevo</button>
                                    </div>
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaProducto">
											<input type="text" id="id_elimina" name="codigo_producto" class="d-none">
											<input type="text" id="id_visibilidad_elimina" name="codigo_visibilidad" class="d-none">
										</form>
                                        <div class="col-12 table-responsive">
                                            <table id="id_table" class="font__min display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="background__title">
                                                    <tr>
														<th>#</th>
														<th>Nombre</th>
														<th>Descripción</th>
														<th>Precio</th>
														<th>Stock</th>
														<th>Serie</th>
														<th>Fotos</th>
														<th>Marca</th>
														<th>Categoría</th>
														<th>Proveedor</th>
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
   		<div class="modal fade p-0" id="id_modal_RegistraProducto">
    		<div class="modal-dialog modal-xl">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Registro de Producto</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_registra" method="POST" enctype="multipart/form-data">
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
											  	<div class="col-12 col-md-4 mb-3">
											  		<div class="form-floating">
								                      	<select class="form-select" id="select_marca" name="codigo_marca" aria-label="Default select example">
														  <option selected value="0">Seleccione Marca</option>
														</select>
														<label for="select_marca">Marca</label>
						                      		</div>
											  	</div>
											  	<div class="col-12 col-md-4 mb-3">
												  	<div class="form-floating">
								                      	<select class="form-select" id="select_categoria_producto" name="codigo_categoria_producto" aria-label="Default select example">
														  <option selected value="0">Seleccione Categoría</option>
														</select>
														<label for="select_categoria_producto">Categoría</label>
							                      </div>
											  	</div>
											  	<div class="col-12 col-md-4 mb-3">
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
					                      		<div class="form-floating">
													<textarea class="form-control" id="id_descripcion_simple" name="descripcion_simple_producto" rows="5"></textarea>
													<label for="id_descripcion_simple" class="form-label">Descripción Simple</label>
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
		                      
			                       			<div class="form-group row" >
					                     		<div class="col-12 col-md-4 mb-3">
					                     			<div class="form-floating">
					                      				<input type="file" class="form-control" id="id_foto1" name="foto1_producto">
					                     			</div>
					                     		</div>
					                     		<div class="col-12 col-md-4 mb-3">
					                     			<div class="form-floating">
					                      				<input type="file" class="form-control" id="id_foto2" name="foto2_producto">
					                     			</div>
					                     		</div>
					                     		<div class="col-12 col-md-4 mb-3">
					                     			<div class="form-floating">
					                      				<input type="file" class="form-control" id="id_foto3" name="foto3_producto">
					                     			</div>
					                     		</div>
			                     			 </div>
                      
					               			<button class="w-100 btn btn-lg btn-primary btn__primary" type="button" id="registrar_producto">Registrar</button>
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
    	
    	<div class="modal fade" id="id_modal_ActualizaProducto">
    		<div class="modal-dialog modal-xl">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Actualizar Producto</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_actualiza">
											<input type="text" id="id_producto_actualiza" name="codigo_producto" class="d-none">
					                    
										<div class="form-group row">
					                    	<div class="col-12 col-md-8 mb-3">
					                    		 <div class="form-floating">
							                      <input type="text" class="form-control" id="id_nombre_actualiza" name="nombre_producto" autocomplete="on" >
							                      <label for="id_nombre_actualiza">Nombre</label>
					                      		</div>
					                    	</div>
					                    	<div class="col-12 col-md-4 mb-3">
						                      	<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_serie_actualiza" name="serie_producto" autocomplete="on" >
						                      		<label for="id_serie_actualiza">Serie</label>
						                      </div>
					                      	</div>
					                    </div>
					                    
					                      <div class="form-group row">
					                      
										  	<div class="col-12 col-md-4 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_marca_actualiza" name="codigo_marca" aria-label="Default select example">
													  <option selected value="0">Seleccione Marca</option>
													</select>
													<label for="select_marca_actualiza">Marca</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-4 mb-3">
											  	<div class="form-floating">
							                      	<select class="form-select" id="select_categoria_producto_actualiza" name="codigo_categoria_producto" aria-label="Default select example">
													  <option selected value="0">Seleccione Categoría</option>
													</select>
													<label for="select_categoria_producto_actualiza">Categoría</label>
						                      </div>
										  	</div>
										  	<div class="col-12 col-md-4 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_proveedor_actualiza" name="codigo_proveedor" aria-label="Default select example">
													  <option selected value="0">Seleccione Proveedor</option>
													</select>
													<label for="select_proveedor_actualiza">Proveedor</label>
						                      </div>
					                      	</div>
										  </div>
										  
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-4 mb-3">
						                      	<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_precio_actualiza" name="precio_producto" autocomplete="on" >
						                      		<label for="id_precio_actualiza">Precio</label>
						                      </div>
					                      	</div>
					                      	<div class="col-12 col-md-4 mb-3">
						                      	<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_stock_actualiza" name="stock_producto" autocomplete="on" >
						                      		<label for="id_stock_actualiza">Stock</label>
						                      </div>
					                      	</div>
					                      	<div class="col-12 col-md-4 mb-3">
						                      	<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_pedido_actualiza" name="pedido_producto" autocomplete="on" >
						                      		<label for="id_pedido_actualiza">En Pedido</label>
						                      </div>
					                      	</div>
					                      </div>
					
					                      <div class="form-group row">
					                      	<div class="col-12 mb-3">
					                      		<div class="form-floating">
												<textarea class="form-control" id="id_descripcion_simple_actualiza" name="descripcion_simple_producto" rows="5"></textarea>
												<label for="id_descripcion_simple_actualiza" class="form-label">Descripción Simple</label>
					                      		</div>
					                      	</div>
					                      </div>
					                      
					                      <div class="form-group row">
					                      	<div class="col-12 mb-3">
					                      		<div class="form-floating">
					                      			 <textarea id="id_descripcion_html_actualiza" class="form-control" name="descripcion_html_producto">Escribe una descripción HTML</textarea>
					                      		</div>
					                      	</div>
					                      </div>
					                      
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-4 mb-3">
					                      		<div class="form-floating">
													<input type="file" class="form-control" id="id_foto1_actualiza" name="foto1_producto" />
								             	</div>
					                      	</div>
					                      	<div class="col-12 col-md-4 mb-3">
					                      		<div class="form-floating">
													<input type="file" class="form-control" id="id_foto2_actualiza" name="foto2_producto" />
								              	</div>
					                      	</div>
					                      	<div class="col-12 col-md-4 mb-3">
								              	<div class="form-floating">
								                	<input type="file" class="form-control" id="id_foto3_actualiza" name="foto3_producto" />
								              	</div>
					                      	</div>
					                      </div>
					                      
										    <button class="w-100 btn btn-lg btn-primary btn__primary" type="button" id="actualizar_producto">Actualizar</button>
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
	<script type="text/javascript" src="js/module.js"></script>
	<script type="text/javascript" src="js/hotkeys.js"></script>
	<script type="text/javascript" src="js/uploader.js"></script>
	<script type="text/javascript" src="js/simditor.js"></script>
	<script type="text/javascript" src="js/app.js"></script>

	<script type="text/javascript">

	var selectedMarcaActualiza, selectedCategoriaActualiza, selectedProveedorActualiza, countTextareaSimpleActualiza;
	
	function agregarGrilla(lista) {
		//console.log(lista)
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
					{data: "codigo_producto"},
					{data: "nombre_producto"},
					{data: "descripcion_simple_producto"},
					{data: function(row, type, val, meta) {
					    let precio = formatter.format(row.precio_producto);
					    return precio;
					}, className: 'text-center mx-auto'},
					{data: "stock_producto"},
					{data: "serie_producto"},
					{data: function(row, type, val, meta) {
					    
						var foto1, foto2, foto3 = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
					    
					    if(row.foto1_producto != null && row.foto1_producto != "" && row.foto1_producto.length != 0) {
					        foto1 = "<img src='" +row.foto1_producto+ "' class='img__table--mini' alt='Pet image'>";
					    } else {
					        foto1 = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
					    }
					    
					    if(row.foto2_producto != null && row.foto2_producto != "" && row.foto2_producto.length != 0) {
					        foto2 = "<img src='" +row.foto2_producto+ "' class='img__table--mini' alt='Pet image'>";
					    } else {
					        foto2 = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
					    }
					    
					    if(row.foto3_producto != null && row.foto3_producto != "" && row.foto3_producto.length != 0) {
					        foto3 = "<img src='" +row.foto3_producto+ "' class='img__table--mini' alt='Pet image'>";
					    } else {
					        foto3 = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
					    }
						
						return foto1 + foto2 + foto3;
					}, className: 'text-center mx-auto float-center d-flex justify-content-center'},
					{data: "marca.nombre_marca"},
					{data: "categoria.nombre_categoria_producto"},
					{data: "proveedor.nombre_proveedor"},
					{data: function(row, type, val, meta){
						var btnActualizarProducto ='<button type="button" class="btn btn-info btn-sm mx-1 btnModal_ActualizaProducto" onclick="editar(\'' + row.codigo_producto +
								'\',\'' + row.nombre_producto +
								'\',\'' + row.descripcion_simple_producto +
								'\',\'' + row.descripcion_html_producto +
								'\',\'' + row.precio_producto +
								'\',\'' + row.stock_producto +
								'\',\'' + row.pedido_producto +
								'\',\'' + row.serie_producto  +
								'\',\'' + row.foto1_producto +
								'\',\'' + row.foto2_producto +
								'\',\'' + row.foto3_producto +
								'\',\'' + row.codigo_marca +
								'\',\'' + row.codigo_categoria_producto +
								'\',\'' + row.codigo_proveedor +
								'\')"><i data-feather="edit-2"></i></button>';
								
						var btnEliminarProducto ='<button type="button" class="btn btn-danger btn-sm mx-1" onclick="eliminar(\'' + row.codigo_producto + '\')"><i data-feather="trash"></i></button>';

						return btnActualizarProducto + btnEliminarProducto;
					},className:'text-center mx-auto'},												
				]                                                   
		    });
		 	
		 	// Reload icons
		    feather.replace();
		 	
		 	$('#id_table').DataTable().columns.adjust().draw();
		}
		
		function listarProductosDatatable(nombre) {
	        $.getJSON("listaProductoPorNombre", {"nombre_producto": nombre}, function(lista) {
	            agregarGrilla(lista);
	        });
	    }
		/*
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
		*/
		
		function eliminar(codigo_producto) {
			mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar, null, codigo_producto);
			console.log("Código producto en eliminar "+ codigo_producto);
		}
		
		function accionEliminar(codigo_producto) {
			$('#id_elimina').val(codigo_producto);
			console.log("Código producto en accionEliminar "+ codigo_producto);
			$.ajax({
				type: "POST",
				url: "eliminaProducto",
				data: $('#id_form_elimina').serialize(),
				success: function(data) {
					agregarGrilla(data.lista);
					mostrarMensaje(data.MENSAJE);
				},
				error: function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
		}
		
		function editar(codigo_producto, nombre_producto, descripcion_simple_producto, descripcion_html_producto, precio_producto, stock_producto,
				pedido_producto, serie_producto, foto1_producto, foto2_producto, foto3_producto,codigo_marca,codigo_categoria_producto,codigo_proveedor) {
				
			selectedMarcaActualiza = codigo_marca;
			selectedCategoriaActualiza = codigo_categoria_producto;
			selectedProveedorActualiza = codigo_proveedor;
			countTextareaSimpleActualiza = descripcion_simple_producto;
			
			$('#id_producto_actualiza').val(codigo_producto);
			$('#id_nombre_actualiza').val(nombre_producto);
			$('#id_descripcion_simple_actualiza').val(descripcion_simple_producto);
			
			$('.simditor-body').empty();
			$('.simditor-body').append(descripcion_html_producto);
			
			$('#id_precio_actualiza').val(precio_producto);
			$('#id_stock_actualiza').val(stock_producto);
			$('#id_pedido_actualiza').val(pedido_producto);
			$('#id_serie_actualiza').val(serie_producto);
			$('#id_foto1_actualiza').val('');
			$('#id_foto2_actualiza').val('');
			$('#id_foto3_actualiza').val('');
			$('#select_marca_actualiza').val(codigo_marca);
			$('#select_categoria_producto_actualiza').val(codigo_categoria_producto);
			$('#select_proveedor_actualiza').val(codigo_proveedor);

			$('#id_modal_ActualizaProducto').modal("show");
		}
		
	$(document).ready(function() {
		
		// Mostrar productos al cargar la página
		listarProductosDatatable("");
		
		// Selects	
		
		const selectMarca = $('#select_marca');
		const selectCategoria = $('#select_categoria_producto');
		const selectProveedor = $('#select_proveedor');
		const textareaSimple = $('#id_descripcion_simple');
		
		const selectMarcaActualiza = $('#select_marca_actualiza');
		const selectCategoriaActualiza = $('#select_categoria_producto_actualiza');
		const selectProveedorActualiza = $('#select_proveedor_actualiza');
		const textareaSimpleActualiza = $('#id_descripcion_simple_actualiza');
		
		// Botones
		
		const btnRegister = $('#registrar_producto');
		const btnUpdate = $('#actualizar_producto');
		const btnFilter = $('#filtra_producto');
		const btnModalRegister = $('#id_btnModal_RegistraProducto');
		
		// Modals
		
		const modalRegister = $('#id_modal_RegistraProducto');
		
		// Simditor
		
		const editorRegistra = new Simditor(
		{
			textarea: $('#id_descripcion_html')
			//optional options
		});
		
		const editorActualiza = new Simditor({
			textarea: $('#id_descripcion_html_actualiza')
			//optional options
		});
				
		// Abrir Modal con Click
		
		btnModalRegister.click(function() {
			modalRegister.modal("show");
		});
		
		// Filtrar Producto por Nombre
		
		$('#id_nombre_filtro').keydown(function(e) {
		    if(e.key === 'Enter' || e.keyCode === 13) {
		        listarProductosDatatable($('#id_nombre_filtro').val());
		    }
		});
		
		// Get Marca
		
		function generarSelectMarca(idSelectMarca) {
			$.getJSON('listaMarca', function(data) {
				$.each( data, function( index, value ) {
					let option = document.createElement('option');
					option.value = value.codigo_marca;
					option.text = value.nombre_marca;
					idSelectMarca.append(option);
				});
			});
		}
		
		generarSelectMarca(selectMarca);
		generarSelectMarca(selectMarcaActualiza);
		
		// Get Categoria
		
		function generarSelectCategoria(idSelectCategoria) {
			$.getJSON('listaCategoriaProducto', function(data){
				  $.each( data, function( index, value ) {
					  let option = document.createElement('option');
					  option.value = value.codigo_categoria_producto;
					  option.text = value.nombre_categoria_producto;
					  idSelectCategoria.append(option);
				  });
			});
		}
		
		generarSelectCategoria(selectCategoria);
		generarSelectCategoria(selectCategoriaActualiza);
		
		// Get Proveedor
		
		function generarSelectProveedor(idSelectProveedor) {
			$.getJSON('listaProveedor', function(data) {
				$.each( data, function( index, value) {
					  let option = document.createElement('option');
					  option.value = value.codigo_proveedor;
					  option.text = value.nombre_proveedor;
					  idSelectProveedor.append(option);
				});
			});
		}
		
		generarSelectProveedor(selectProveedor);
		generarSelectProveedor(selectProveedorActualiza);
			
		var selectedMarca, selectedCategoria, selectedProveedor,countTextareaSimple;
		
		// Validar selects cuando cambie el option en Registrar
		
		selectMarca.change(function(e) {
			selectedMarca = e.target.selectedIndex;
			validateSelect(selectMarca, selectedMarca, 'marca');
		});

		selectCategoria.change(function(e) {
			selectedCategoria = e.target.selectedIndex;
			validateSelect(selectCategoria, selectedCategoria, 'categoria');
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
		
		// Validar selects cuando cambie el option en Actualizar
		
		selectMarcaActualiza.change(function(e) {
			selectedMarcarActualiza = e.target.selectedIndex;
			validateSelect(selectMarcaActualiza, selectedMarcaActualiza, 'marca');
		});

		selectCategoriaActualiza.change(function(e) {
			selectedCategoriaActualiza = e.target.selectedIndex;
			validateSelect(selectCategoriaActualiza, selectedCategoriaActualiza, 'categoria');
		});
		
		selectProveedorActualiza.change(function(e) {
			selectedProveedorActualiza = e.target.selectedIndex;
			validateSelect(selectProveedorActualiza, selectedProveedorActualiza, 'proveedor');
		});
		
		// Validar textarea simple
		textareaSimpleActualiza.on('keyup', function(e) {
			countTextareaSimpleActualiza = textareaSimple.val().trim().length;
			validateTextarea(textareaSimpleActualiza, countTextareaSimpleActualiza, 'textareaSimple');
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

		$('#id_form_actualiza').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				nombre_producto: {
					selector: '#id_nombre_actualiza',
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
					selector: '#id_serie_actualiza',
					validators : {
						notEmpty: {
							message: '* Obligatorio'
						},
					}
				},
				precio_producto: {
					selector: '#id_precio_actualiza',
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
					selector: '#id_stock_actualiza',
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
					selector: '#id_pedido_actualiza',
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
		
		/* Validar tamaño y extensión de imágenes */
		
		var maxFileSize = 2000000; // byte -> 2MB
		
		var foto1RegistroIsValid;
		var foto2RegistroIsValid;
		var foto3RegistroIsValid;
		
		var foto1ActualizaIsValid;
		var foto2ActualizaIsValid;
		var foto3ActualizaIsValid;
		
		$("#id_foto1").change(function() {
		    var file = $("#id_foto1").val();
		    var extension = file.split(".").pop().toLowerCase();
		    
			var fileSize = this.files[0].size;
			console.log(fileSize)
			
			if(fileSize <= maxFileSize && extension === "jpg" || extension === "png") {
			    foto1RegistroIsValid = true;
			} else {
			    modalRegister.modal("hide");
			    mostrarMensaje("Sólo archivos JPG o PNG de hasta 2MB");
			    foto1RegistroIsValid = false;
			}
		    
		});
		
		$("#id_foto2").change(function() {
		    var file = $("#id_foto2").val();
		    var extension = file.split(".").pop().toLowerCase();
		    
			var fileSize = this.files[0].size;
			
			if(fileSize <= maxFileSize && extension === "jpg" || extension === "png") {
			    foto2RegistroIsValid = true;
			} else {
			    modalRegister.modal("hide");
			    mostrarMensaje("Sólo archivos JPG o PNG de hasta 2MB");
			    foto1RegistroIsValid = false;
			}		    
		});
				
		$("#id_foto3").change(function() {
		    var file = $("#id_foto3").val();
		    var extension = file.split(".").pop().toLowerCase();
		    
			var fileSize = this.files[0].size;
			
			if(fileSize <= maxFileSize && extension === "jpg" || extension === "png") {
			    foto3RegistroIsValid = true;
			} else {
			    modalRegister.modal("hide");
			    mostrarMensaje("Sólo archivos JPG o PNG de hasta 2MB");
			    foto1RegistroIsValid = false;
			}
		});
		
		$("#id_foto1_actualiza").change(function() {
		    var file = $("#id_foto1_actualiza").val();
		    var extension = file.split(".").pop().toLowerCase();
		    
			var fileSize = this.files[0].size;
			
			if(fileSize <= maxFileSize && extension === "jpg" || extension === "png") {
			    foto1ActualizaIsValid = true;
			} else {
			    $("#id_modal_ActualizaProducto").modal("hide");
			    mostrarMensaje("Sólo archivos JPG o PNG de hasta 2MB");
			    foto1ActualizaIsValid = false;
			}
		});
		
		$("#id_foto2_actualiza").change(function() {
		    var file = $("#id_foto2_actualiza").val();
		    var extension = file.split(".").pop().toLowerCase();
		    
			var fileSize = this.files[0].size;
			
			if(fileSize <= maxFileSize && extension === "jpg" || extension === "png") {
			    foto2ActualizaIsValid = true;
			} else {
			    $("#id_modal_ActualizaProducto").modal("hide");
			    mostrarMensaje("Sólo archivos JPG o PNG de hasta 2MB");
			    foto2ActualizaIsValid = false;
			}    
		});
				
		$("#id_foto3_actualiza").change(function() {
		    var file = $("#id_foto3_actualiza").val();
		    var extension = file.split(".").pop().toLowerCase();
		    
			var fileSize = this.files[0].size;
			
			if(fileSize <= maxFileSize && extension === "jpg" || extension === "png") {
			    foto3ActualizaIsValid = true;
			} else {
			    $("#id_modal_ActualizaProducto").modal("hide");
			    mostrarMensaje("Sólo archivos JPG o PNG de hasta 2MB");
			    foto3ActualizaIsValid = false;
			}
		});
		
		// Registrar Producto
		
		btnRegister.click(function() {
			var validator = $('#id_form_registra').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectMarca, selectedMarca, 'marca');
			validateSelect(selectCategoria, selectedCategoria, 'categoria');
			validateSelect(selectProveedor, selectedProveedor, 'proveedor');
			
			// Validar textarea simple
			validateTextarea(textareaSimple, countTextareaSimple, 'textareaSimple');
			
			if(!foto1RegistroIsValid || !foto2RegistroIsValid || !foto3RegistroIsValid) {
			    mostrarMensaje("Seleccione imágenes JPG o PNG que no excedan los 2MB");
			}
			
			if(selectedMarca > 0 && selectedCategoria > 0 && selectedProveedor > 0 && countTextareaSimple >= 3 && countTextareaSimple <= 100 && validator.isValid() && foto1RegistroIsValid && foto2RegistroIsValid && foto3RegistroIsValid) {
				
				var form = $("#id_form_registra").serialize();
				var data = new FormData($("#id_form_registra")[0]);
				
				$.ajax({
					type: 'POST',
					data: data,
					enctype: 'multipart/form-data',
					url: '/registraProductoConFoto',
					processData: false,
					contentType: false,
					cache: false,
					success: function(data) {
						//agregarGrilla(data.lista);
						listarProductosDatatable("");
						$('#id_modal_RegistraProducto').modal("hide");
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
		
		// Actualizar producto
		
		btnUpdate.click(function() {
			var validator = $('#id_form_actualiza').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectMarcaActualiza, selectedMarcaActualiza, 'marca');
			validateSelect(selectCategoriaActualiza, selectedCategoriaActualiza, 'categoria');
			validateSelect(selectProveedorActualiza, selectedProveedorActualiza, 'proveeddor');
	
			// Validar textarea simple
			//validateTextarea(textareaSimpleActualiza, countTextareaSimpleActualiza, 'textareaSimple');

			if(!foto1ActualizaIsValid || !foto2ActualizaIsValid || !foto3ActualizaIsValid) {
			    mostrarMensaje("Seleccione imágenes JPG o PNG que no excedan los 2MB");
			}
			
			if(selectedMarcaActualiza > 0 && selectedCategoriaActualiza > 0 && selectedProveedorActualiza > 0 && validator.isValid() && foto1ActualizaIsValid && foto2ActualizaIsValid && foto3ActualizaIsValid) {
				
				var form = $("#id_form_actualiza").serialize();
				var data = new FormData($("#id_form_actualiza")[0]);
				
				$.ajax({
					type: 'POST',
					data: data,
					url: 'actualizaProductoConFoto',
					enctype: 'multipart/form-data',
					processData: false,
					contentType: false,
					cache: false,
					success: function(data) {
						listarProductosDatatable("");
						$('#id_modal_ActualizaProducto').modal("hide");
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
			$('#id_serie').val('');
			$('#select_marca')[0].selectedIndex = 0;
			$('#select_categoria_producto')[0].selectedIndex = 0;
			$('#select_proveedor')[0].selectedIndex = 0;
			$('#id_precio').val('');
			$('#id_stock').val('');
			$('#id_pedido').val('');
			$('#id_descripcion_simple').val('');
			$('#id_descripcion_html').val('');
			$('#id_foto1').val('');
			$('#id_foto2').val('');
			$('#id_foto3').val('');
			selectedMarca = 0;
			selectedCategoria = 0;
			selectedProveedor = 0;
			countTextareaSimple = 0;
		}
		
		function limpiarActualiza() {
			$('#id_producto_actualiza').val('');
			$('#id_nombre_actualiza').val('');
			$('#id_descripcion_simple_actualiza').val('');
			$('#id_descripcion_html_actualiza').val('');
			$('#id_precio_actualiza').val('');
			$('#id_stock_actualiza').val('');
			$('#id_pedido_actualiza').val('');
			$('#id_serie').val('');
			$('#id_foto1_actualiza').val('');
			$('#id_foto2_actualiza').val('');
			$('#id_foto3_actualiza').val('');
			$('#select_marca_actualiza')[0].selectedIndex = 0;
			$('#select_categoria_producto_actualiza')[0].selectedIndex = 0;
			$('#select_proveedor_actualiza')[0].selectedIndex = 0;
			selectedMarcaActualiza = 0;
			selectedCategoriaActualiza  = 0;
			selectedProveedorActualiza  = 0;
			countTextareaSimpleActualiza = 0;
			
		}

    });
	</script>
</body>
</html>