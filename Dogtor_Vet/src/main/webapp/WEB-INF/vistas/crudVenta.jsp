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
					<div class="content__body background__light__white menu__transition">
						<div class="row justify-content-center">
							<div class="content__body__title col-4">
								<p class="font__title title__color font__semibold">Nueva Reserva de Venta</p>
							</div>
							<div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
								<div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2"><i data-feather="message-square"></i></div>
								<div id="btnProfile" class="options__profile mx-2">
									<img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
								</div>
							</div>
							
							<div class="content__alert row">
								<div class="col-12 mt-4 mb-2">
									<form id="id_form_registra" >
										<div class="card__light">
											<div class="card__light__header d-flex justify-content-between my-3">
												<p class="font__subtitle title__color font__semibold">Información del Cliente</p>
												<input type="text" name="codigo_vendedor" class="form-control" id="id_codigo_vendedor" readonly>
											</div>
											<div class="card__light__body row">
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating"><input type="text" name="codigo_cliente" class="form-control" id="id_codigo_cliente" readonly>
															<label for="id_codigo_cliente">Código</label>
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
															<button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_BuscarCliente" data-target="#id_modal_BuscarCliente"><i data-feather="search"></i>Buscar Cliente</button>
														</div>
													</div>
												</div>
												
												<div class="card__light__header d-flex justify-content-between my-3">
													<p class="font__subtitle title__color font__semibold">Información de Producto</p>
												</div>
												
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 col-md-2 mb-3">
														<div class="form-floating">
															<input type="text" name="codigo_producto" class="form-control" id="id_codigo_producto" readonly>
															<label for="id_codigo_producto">Código</label>
														</div>
													</div>
													<div class="col-12 col-md-5 mb-3">
														<div class="form-floating">
															<input type="text" name="nombre_producto" class="form-control" id="id_nombre_producto" readonly>
															<label for="id_nombre_producto">Nombre del Producto</label>
														</div>
													</div>
													
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating">
															<input type="text" name="precio_producto" class="form-control" id="id_precio_producto" readonly>
															<label for="id_precio_producto">Precio</label>
														</div>
													</div>
													
													<div class="col-12 col-md-2 mb-3">
														<div class="form-floating">
															<input type="text" name="stock_producto" class="form-control" id="id_stock_producto" readonly>
															<label for="id_stock_producto">Stock</label>
														</div>
													</div>
													<div class="col-12 col-md-2 mb-3">
														<div class="form-floating">
															<input type="text" name="cantidad" class="form-control" id="id_producto_cantidad">
															<label for="id_producto_cantidad">Cantidad</label>
														</div>
													</div>
													
												</div>

												
												<div class="form-group row align-items-center justify-content-center mx-auto">
													<div class="col-12 col-md-6 mb-3">
														<div class="row align-items-center mx-auto">
															<button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_BuscarProducto" data-target="#id_modal_BuscarProducto"><i data-feather="search"></i>Buscar producto</button>
														</div>
									
													</div>
														<div class="col-12 col-md-6 mb-3">
														<div class="row align-items-center mx-auto">
															<button class="btn btn__primary" type="button" id="id_btnAgregarProducto"><i data-feather="plus"></i>Agregar producto</button>
														</div>
														
													</div>
													
												</div>
												
												<div class="col-12 table-responsive">
                                            <table id="id_table_productosSeleccionados" class="fontmin display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="backgroundtitle">
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Nombre</th>
                                                        <th>Precio</th>
                                                        <th>Cantidad</th>
                                                        <th>Subtotal</th>
                                                        <th>Acción</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="id_table_boleta_body"></tbody>
                                            </table>
                                        </div >
                                        	
                                        	<div class="col-12 mb-3">
                                        	
                                        	<div class="d-flex align-items-center justify-content-center">
                                        		<div class="col-12 col-md-6 mb-3">
														<div class="row align-items-center mx-auto">
															<button class="btn btn__primary" type="button" id="id_btnRegistrarProducto">Registrar producto</button>
														</div>
														
													</div>
                                        	</div>
                                        	
                                        	</div>
												
											</div>
										</div>
										


<!-- Modal Mensaje -->	
		  <div class="modal fade" id="idMensaje" >
			<div class="modal-dialog" style="width: 60%">

				<div class="modal-content">
				<div class="modal-header" style="padding: 20px 20px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Mensaje</h4>
				</div>
				<div  id="idMensajeTexto" class="modal-body" style="padding: 30px 30px;align-content: center;">
					
			    </div>
			</div>
			</div>
		</div>
		
</form>
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
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Buscar Clientes</b></h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12 col-md-10">
										<form id="id_form_buscaCliente">
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-9 mb-3">
													<div class="form-floating"><input type="text" id="id_cliente_filtro" name="filtro_nombre_usuario" class="form-control">
														<label for="id_cliente_filtro">Nombre del Cliente</label>
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
						
					<div class="modal-footer justify-content-between align-items-center">
						<button class="btn btn-primary" type="button" id="id_btnModal_RegistrarCliente"><i data-feather="plus"></i>Nuevo Cliente</button>
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
									<main class="col-12 col-md-10">
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
		<div class="modal fade p-0" id="id_modal_BuscarProducto">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Buscar Productos</b></h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12 col-md-10">
										<form id="id_form_buscaMascota">
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-9 mb-3">
													<div class="form-floating"><input type="text" id="id_mascota_filtro" name="filtro_nombre_producto" class="form-control">
														<label for="id_mascota_filtro">Nombre del Producto</label>
													</div>
												</div>
												<div class="col-3 mb-3">
													<button class="btn btn-primary" type="button" id="filtra_mascota"><i data-feather="search"></i>Buscar</button>
												</div>
											</div>
											
											<div class="row justify-content-center align-items-center mx-auto">
												<div class="col-12 table-responsive">
													<table id="id_table_producto" class="font__min display responsive no-footer text-center table table-borderless dataTable">
														<thead class="background__title">
															<tr>
																<th>#</th>
																<th>Nombre</th>
																<th>Precio</th>
																<th>Stock</th>
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
	
	$(document).ready(function() {
		
		$('#id_codigo_vendedor').val(${sessionScope.objUsuario.codigo_usuario});
		
		
		//Se añade los productos a la tabla
		$.getJSON("listaSeleccion",{}, function (data){
			$.each(data, function(index, item){
				$('#id_table_boleta_body').append("<tr><td>" +item.codigo_producto + "</td><td>" +item.nombre_producto + "</td><td>" +item.precio_producto + "</td><td>" +item.stock_producto + "</td><td>" +item.cantidad + "</td><td>" +item.totalParcial + "</td><td><button type='button' onclick='f_elimina_seleccion(" + item.codigo_producto +");' class='btn btn-default' aria-label='Left Align' ><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></button></td></tr>");                     
			});
		});
		
	});
	
	
	
	
	
	
		var selectedDistrito, selectedColor, selectedSexo, selectedRaza, selectedEspecie;
	
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
        
        function agregarGrillaProducto(lista) {
    		//console.log(lista)
    		 $('#id_table_producto').DataTable().clear();
    		 $('#id_table_producto').DataTable().destroy();
    		 $('#id_table_producto').DataTable({
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
    					{data: "precio_producto"},
    					{data: "stock_producto"},
    					{data: function(row, type, val, meta){
    						var btnSeleccionarProducto ='<button type="button" class="btn btn-info btn-sm mx-1" onclick="seleccionarProducto(\'' + row.codigo_producto +
    								'\',\'' + row.nombre_producto +
    								'\',\'' + row.precio_producto +
    								'\',\'' + row.stock_producto +
    				
    								'\')"><i data-feather="user-check"></i></button>';
    								
    						
    						return btnSeleccionarProducto;
    					},className:'text-center mx-auto'},												
    				]                                                   
    		    });
    		 	
    		 	// Reload icons
    		    feather.replace();
    		 	
    		 	$('#id_table_producto').DataTable().columns.adjust().draw();
    		}
        
        function listarUsuarioPorNombreYRol(nombre) {
            $.getJSON("listaUsuarioPorNombreYRol", {"nombre_usuario" : nombre, "codigo_rol_usuario": 2}, function (lista) {
                agregarGrillaPropietarios(lista);
            });
        }
        function listaProductoPorNombre(nombre) {
	        $.getJSON("listaProductoPorNombre", {"nombre_producto": nombre}, function(lista) {
	            agregarGrillaProducto(lista);
	        });
	    }
        
        function seleccionarPropietario(codigo, nombre, apellido, email) {
            $('#id_codigo_cliente').val(codigo)
            $('#id_nombre_propietario').val(nombre)
            $('#id_apellido_propietario').val(apellido)
            $('#id_email_propietario').val(email)
            $('#id_modal_BuscarCliente').modal("hide");
        }
        function seleccionarProducto(codigo, nombre, precio, stock) {
			$('#id_codigo_producto').val(codigo);
			$('#id_nombre_producto').val(nombre);
			$('#id_precio_producto').val(precio);
			$('#id_stock_producto').val(stock);
			$('#id_modal_BuscarProducto').modal("hide");
        }
        
        
        
        
        
      //Al pulsar el botón agregar
    	$("#id_btnAgregarProducto").click(function (){
    		var var_pro = $("#id_codigo_producto").val();
    		var var_can = $("#id_producto_cantidad").val();
    		var var_stk = $("#id_stock_producto").val();
    		
    		//Validar duplicados
    		var yaExiste = false;
    		$("#id_table_boleta_body tr").each(function() {
    			if($(this).find('td:eq(0)').html() == var_pro){
    				yaExiste = true;
    			}
    		});
    		
    			var var_nom = $("#id_nombre_producto").val();
    			var var_pre = $("#id_precio_producto").val();
    			
    					
    			//limpiar la tabla
    			$("#id_table_boleta_body").empty();
    				
    			var jsonParam = {"codigo_producto":var_pro,"nombre_producto":var_nom,"precio_producto":var_pre,"stock_producto":var_stk,"cantidad":var_can};
    			
    			$.ajax({
    				url:  'agregarSeleccion',
    				type: 'POST',
    				dataType:'json',
    				data: jsonParam,
    				success:function(data){
    					console.log(data);
    					if(data != null){
    						$.each(data, function(index, item){
    							$('#id_table_boleta_body').append("<tr><td>" +item.codigo_producto + "</td><td>" +item.nombre_producto + "</td><td>" +item.precio_producto + "</td><td>" +item.cantidad + "</td><td>" +item.totalParcial + "</td><td><button type='button' onclick='f_elimina_seleccion(" + item.codigo_producto +");' class='btn btn-default' aria-label='Left Align' ><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></button></td></tr>");
    						});
    						
    					}else
    						//swal("Error al agregar la selección del producto","","error");
    						return false;
    					},
    				error: function (jqXhr) { 
    					//swal("Error en la conexión","","error");
    				}
    		   });	
    		
    				
    			//limpia las cajas de texto
    			$("#id_codigo_producto").val("");
    			$("#id_nombre_producto").val("");
    			$("#id_precio_producto").val("");
    			$("#id_stock_producto").val("");
    			$("#id_producto_cantidad").val("");
    		
    	});
  
   //////////////////   
    	//Al pulsar el botón agregar
    	$("#id_btnRegistrarProducto").click(function (){
    		var var_cli = $("#id_codigo_cliente").val();
    	
    		
    		var var_ape = $("#id_apellido_propietario").val();
    		var var_nom = $("#id_nombre_propietario").val();
    		var var_nom_com =  var_nom + ' ' + var_ape;
    		
    		var var_count = 0;
    		$("#id_table_boleta_body tr").each(function() {
    			var_count = var_count + 1;
    		});
    		
    		var jsonParam = {"codigo_cliente":var_cli,"nombre_usuario":var_nom_com};

			$.ajax({
				url:  'registraBoleta',
				type: 'POST',
				dataType:'json',
				data: jsonParam,
				success:function(data){
					if(data.texto != "-1"){
						
						$("#id_table_boleta_body").empty();
						$("#id_codigo_cliente").val("-1");
						$("#id_nombre_propietario").val("");
						$("#id_apellido_propietario").val("");
					}else
						//swal("Error al agregar la Boleta","","error");
						return false;
					},
				error: function (jqXhr) { 
					//swal("Error en la conexión","","error");
				}
		   });	
    	});
    	
      
    
   
      
    	function muestraProducto(){
    		var var_producto = $("#id_mascota_filtro").val();

    		//limpiar la tabla
    		$("#id_table_producto tbody").empty();
    		
    		//Se añade los clientes a la tabla
    		$.getJSON("cargaProducto",{"filtro":var_producto}, function (data){
    			$.each(data, function(index, item){
    				$('#id_table_producto').append("<tr><td>" +item.codigo_producto + "</td><td>" +item.nombre_producto + "</td><td>" +item.precio_producto + "</td><td>" +item.stock_producto + "</td><td><button type='button' class='btn btn-default' aria-label='Left Align' onclick=\"f_seleccione_producto('"+ item.codigo_producto+"','"+ item.nombre_producto+"','"+ item.precio_producto+"','"+ item.stock_producto+"');\" ><span class='glyphicon glyphicon-ok' aria-hidden='true'></span></button></td></tr>");
    			});
    		});
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
            
		const selectMarca = $('#select_marca');
		const selectCategoria = $('#select_categoria_producto');
		const selectProveedor = $('#select_proveedor');
		const textareaSimple = $('#id_descripcion_simple');
            
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
			
			
			
			
	        /*const btnRegister = $('#registrar_cita');
	        const btnModalRegister = $('#id_btnModal_RegistraCita');
	        const modalRegister = $('#id_modal_RegistraCita');*/
	
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
	        const btnMostrarBuscarMascota = $('#id_btnModal_BuscarProducto');
	        const modalBuscarMascota = $('#id_modal_BuscarProducto');
	
	        btnMostrarBuscarMascota.click(function () {
	            modalBuscarMascota.modal("show");
	        });
	
	        const btnFilterMascota = $('#filtra_mascota');
	
	        btnFilterMascota.click(function () {
	        	
	            var nombre = $('#id_mascota_filtro').val();
	            	listaProductoPorNombre(nombre);
	            
	        });
	
	        const btnMostrarRegistrarMascota = $('#id_btnModal_RegistrarMascota');
	        const modalRegistrarMascota = $('#id_modal_RegistrarMascota');
	
	        btnMostrarRegistrarMascota.click(function () {
	            modalBuscarMascota.modal("hide");
	            modalRegistrarMascota.modal("show");
	        });
	    });
        
        
        
      //Al pulsar selecciona producto
    	function f_seleccione_producto(id,nombre,precio,stock){
    		$("#id_codigoproducto").val(id);
    		$("#id_nombre_producto").val(nombre);
    		$("#id_precio_producto").val(precio);
    		$("#id_stock_producto").val(stock);
    		$("#id_modal_BuscarProducto").modal("hide");
    	}
        
        
    	//Al pulsar el botón eliminar
    	function f_elimina_seleccion(id){	
    		//limpiar la tabla
    		$("#id_table_boleta_body").empty();
    			
    		//Se añade los clientes a la tabla
    		$.getJSON("eliminaSeleccion",{"codigo_producto":id}, function (data){
    			$.each(data, function(index, item){
    				$('#id_table_boleta_body').append("<tr><td>" +item.codigo_producto + "</td><td>" +item.nombre_producto + "</td><td>" +item.precio_producto + "</td><td>" +item.stock_producto + "</td><td>" +item.cantidad + "</td><td>" +item.totalParcial + "</td><td><button type='button' onclick='f_elimina_seleccion(" + item.codigo_producto +");' class='btn btn-default' aria-label='Left Align' ><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></button></td><tr>");
    			});
    		});
    		
    		//limpia las cajas de texto
    		$("#id_codigo_producto").val("-1");
    		$("#id_nombre_producto").val("");
    		$("#id_precio_producto").val("");
    		$("#id_stock_producto").val("");
    		
    	}
    		
        
    </script>
</body>
</html>