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
	<title>Pedido | Dogtor</title>
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
				 <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-3 mt-5 menu__transition mx-auto">
                    
					<div id="alerta_dogtor"></div>
				
					<div class="content__body background__light__white menu__transition mt-4 mt-lg-0">
                        <div class="row justify-content-center align-items-center">
							<div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold m-0">Nuevo Pedido</p>
							</div>
							<div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
								<div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2"><i data-feather="message-square"></i></div>
								<div id="btnProfile" class="options__profile mx-2">
									<img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
								</div>
							</div>
							
							<div class="content__alert row">
								<div class="col-12 mt-4 mb-2">
									<form id="id_form_registraPedido">
										<div class="card__light">
											<div class="card__light__header d-flex justify-content-between my-3">
												<p class="font__subtitle title__color font__semibold">Información de Cliente</p>
											</div>
											<div class="card__light__body row">
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating">
															<input type="text" name="codigo_propietario" class="form-control" id="id_codigo_propietario" readonly>
															<label for="id_codigo_propietario">Código</label>
														</div>
													</div>
													<div class="col-12 col-md-6 mb-3">
														<div class="form-floating"><input type="text" name="email_usuario" class="form-control" id="id_email_propietario" readonly>
															<label for="id_email_propietario">Email</label>
														</div>
													</div>
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating"><input type="text" name="dni_usuario" class="form-control" id="id_dni_propietario" readonly>
															<label for="id_dni_propietario">DNI</label>
														</div>
													</div>
												</div>
												
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating"><input type="text" name="nombre_usuario" class="form-control" id="id_nombre_propietario" readonly>
															<label for="id_nombre_propietario">Nombre</label>
														</div>
													</div>
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating">
															<input type="text" name="apellido_usuario" class="form-control" id="id_apellido_propietario" readonly>
															<label for="id_apellido_propietario">Apellido de Cliente</label>
														</div>
													</div>
													<div class="col-12 col-md-3 mb-3">
														<div class="form-floating">
															<input type="text" name="telefono_usuario" class="form-control" id="id_telefono_propietario" readonly>
															<label for="id_telefono_propietario">Teléfono</label>
														</div>
													</div>
													<div class="col-12 col-md-3 mb-3">
														<div class="row align-itmes-center mx-auto">
															<button class="btn btn__clean" type="button" data-toggle="modal" id="id_btnModal_BuscarCliente" data-bs-content="Selecciona a un cliente" data-bs-toggle="popover" data-target="#id_modal_BuscarCliente"><i data-feather="search"></i>Buscar Cliente</button>
														</div>
													</div>
												</div>
												
												<div class="form-group row align-items-center mx-auto">
													<div class="col-12 col-md-4 mb-3">
														<div class="form-floating">
															<input type="text" name="direccion_usuario" class="form-control" id="id_direccion_propietario">
															<label for="id_direccion_propietario">Dirección</label>
														</div>
													</div>
													<div class="col-12 col-md-4 mb-3">
														<div class="form-floating">
															<input type="text" name="referencia_usuario" class="form-control" id="id_referencia_propietario">
															<label for="id_referencia_propietario">Referencia</label>
														</div>
													</div>
													
													<div class="col-12 col-md-4 mb-3">
					                      				<div class="form-floating">
															<input type="date" name="fecha_entrega" class="form-control" id="id_fecha_entrega">
															<label for="id_fecha_entrega">Fecha</label>
														</div>
					                      			</div>
												</div>
												
												<div class="card__light__header d-flex justify-content-between my-3">
													<p class="font__subtitle title__color font__semibold">Información de Producto</p>
												</div>
												
												<div class="form-group row justify-content-center align-items-center mx-auto">
													<div class="col-12 mb-3">
														<div class="row align-items-center mx-auto justify-content-end">
															<button class="btn btn__clean col-3" type="button" data-toggle="modal" id="id_btnModal_BuscarProducto" data-target="#id_modal_BuscarProducto"><i data-feather="search"></i>Buscar Producto</button>
														</div>
													</div>
												</div>
												
												<div class="row justify-content-center align-items-center mx-auto">
													<div class="col-12 table-responsive">
													
													<table class="table table-sm" id="id_table_carrito">
														<thead>
													    <tr>
													      <th scope="col"></th>
													      <th scope="col"></th>
													      <th scope="col"></th>
													      <th scope="col"></th>
													    </tr>
													  </thead>
													  <tbody class="background__title">
													  </tbody>
													</table>
													
													<div class="card-footer text-end">
														<div class="row justify-content-between">
															<div id="id_table_total"></div>
														</div>
														
													</div>
													</div>
												</div>
												
												<div class="form-group row justify-content-center align-items-center mx-auto">
													<div class="form-floating text-center">
														<button class="btn btn__primary" type="button" id="btnRegistrarPedido">Registrar Pedido</button>
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

			
		<!-- Modal de Búsqueda de Productos -->
		<div class="modal fade p-0" id="id_modal_BuscarProducto">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Buscar Producto</b></h1>
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
													<div class="form-floating">
														<input type="text" id="id_producto_filtro" name="filtro_nombre_producto" class="form-control">
														<label for="id_producto_filtro">Nombre de Producto</label>
													</div>
												</div>
												<div class="col-3 mb-3 justify-content-center mx-auto d-flex">
													<button class="btn btn-primary" type="button" id="filtra_producto"><i data-feather="search"></i>Buscar</button>
												</div>
											</div>
										</form>
										
										<div class="card__light__body row justify-content-center">
	                                    	<!-- Products Container -->
	                                    	<div class="row justify-content-left" id="shopContainer"></div>
                                    	</div>
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
	
    function generarListaProductos() {
        
        const nombre_producto = $('#id_producto_filtro').val();
        const productsContainer = $('#shopContainer');
       	productsContainer.empty();
        
        $.getJSON("listaProductoPorNombre", {"nombre_producto": nombre_producto}, function(lista) {
            if(lista.length > 0) {
                
                $.each(lista, function(index, producto) {
                    
	                const divContainer = document.createElement('div');
                    divContainer.className = 'col-12 col-sm-6 col-md-6 col-lg-3 p-2';
                    
                    const divCard = document.createElement('div');
                    divCard.className = 'card__light text-center card h-100';
                    
                    const divCardImageContainer = document.createElement('div');
                    divCardImageContainer.className = 'col-12 p-1';
                 
                    const cardImage = document.createElement('img');
                    cardImage.className = 'card__image--cover card-img-top';
                    cardImage.alt = producto.nombre_producto;
                    cardImage.src = "../../images/noimage.png";
                    
                    if(producto.foto1_producto.length > 0) {
                        cardImage.src = producto.foto1_producto;
                    }
                    
                    const divCardTitleContainer = document.createElement('div');
                    divCardTitleContainer.className = 'card-body';
                    
                    const cardTitle = document.createElement('p');
                    cardTitle.innerHTML = producto.nombre_producto;
                    
                    const cardPrice = document.createElement('p');
                    cardPrice.innerHTML = formatter.format(producto.precio_producto);
                    cardPrice.className = 'm-0 font__subtitle font__semibold';
                    
                    const cardCantidad = document.createElement('input');
                    cardCantidad.className = 'form-control text-center mt-3';
                    cardCantidad.type = 'text';
                    cardCantidad.value = '1';
                    
                    cardCantidad.onkeydown = function(e) {
                        if((e.keyCode >= 48 && e.keyCode <=57) || (e.keyCode >= 96 && e.keyCode <=105) || e.keyCode === 8){ 
                            return true;
                        } else {
                            return false;
                        }
                    }

                    const divCardActionContainer = document.createElement('div');
                    divCardActionContainer.className = 'card-footer card-footer--clean';
                    
                    const cardButton = document.createElement('button');
                    cardButton.className = 'btn btn__clean my-1';
                    cardButton.type = 'button';
                    cardButton.innerHTML = 'Añadir al carrito';
                    
                    const codigoCliente = $('#id_codigo_propietario').val();
                    
                    cardButton.onclick = function() {
                        console.log(cardCantidad);
                        console.log(cardCantidad.value);
                       if(cardCantidad.value <= producto.stock_producto) {
                           agregarProductoCarrito(codigoCliente, producto.codigo_producto, cardCantidad.value);
                       } else {
                           mostrarMensaje("La cantidad no puede ser mayor al stock");
                       }
                    }
                    
                    divCardActionContainer.append(cardButton);
                    divCardTitleContainer.append(cardTitle, cardPrice, cardCantidad);
                    divCardImageContainer.append(cardImage);
                    divCard.append(divCardImageContainer, divCardTitleContainer, divCardActionContainer);
                    divContainer.append(divCard);
                    productsContainer.append(divContainer);
                    
                });
                
            } else {
                const divContainer = document.createElement('div');
                divContainer.className = 'col-12 p-2 text-center';
             
                const cardTitle = document.createElement('p');
                cardTitle.innerHTML = 'Sin productos disponibles';
                
                divContainer.append(cardTitle);
                productsContainer.append(divContainer);
            }
        });
    }
    
	function listaCarritoPorUsuario(usuario) {

	    $("#id_table_carrito tbody").empty();
        $('#id_table_total').empty();
	    
        $.getJSON("listaCarritoPorUsuario", {"codigo_usuario" : usuario}, function (lista) {
            
            console.table(lista);

            let totalPagar = 0;
            
            $.each( lista, function( index, value ) {
                
                totalPagar += value.producto.precio_producto * value.cantidad_carrito;
                
                let tr = document.createElement('tr');
                let thFoto = document.createElement('th');
                thFoto.className = "align-middle";
                let foto = document.createElement('img');
                
                let thNombre = document.createElement('th');
                thNombre.className = 'font__regular';
                let nombre = document.createElement('p');
                nombre.className = "m-0";
                nombre.style = 'font-size: 0.9rem; font-weight: 700';
                let cantidad = document.createElement('p');
                cantidad.className = "m-0";
                cantidad.style = 'font-size: 0.8rem';
                
                let thPrecio = document.createElement('th');
                thPrecio.className = 'font__regular primary__color';
                let precio = document.createElement('p');
                precio.className = "m-0";
                precio.style = 'font-size: 0.8rem';
                
                let thEliminar = document.createElement('th');
                let btnEliminar = document.createElement('button');
                btnEliminar.className = 'btn btn__danger';
                btnEliminar.style = 'font-size: 0.7rem';
                btnEliminar.innerHTML = "Eliminar";
                btnEliminar.type = 'button';
                
                foto.className = "img__table--mini";
                foto.alt = value.producto.nombre_producto;
                
                if(value.producto.foto1_producto.length != 0) {
			        foto.src = value.producto.foto1_producto;
			    } else {
			        foto.src = "../../images/noimage.png";
			    }
                
                nombre.innerHTML = value.producto.nombre_producto;
                cantidad.innerHTML = "Cantidad: " + value.cantidad_carrito;
                precio.innerHTML = formatter.format(value.producto.precio_producto);
				
                thFoto.append(foto);
                thNombre.append(nombre, cantidad);
                thPrecio.append(precio);
                thEliminar.append(btnEliminar);
                tr.append(thFoto, thNombre, thPrecio, thEliminar);
                
                btnEliminar.onclick = function() {
                    eliminarProductoCarrito(value.codigo_carrito);
                }
                
                $('#id_table_carrito tbody').append(tr);
			});
            
            if(lista.length > 0) {
                $('#id_table_total').append("<p>Subtotal: <span class='font__semibold'>"+formatter.format(totalPagar)+"</span></p><p>Costo de Envío: <span class='font__semibold'>" + formatter.format("5")+"</span></p><p>Total a Pagar: <span class='font__semibold'>"+ formatter.format(totalPagar + 5) + "</span></p>");
            } else {
                $('#id_table_total').empty();
                $('#id_table_carrito tbody').append("<p class='text-center font__bolder'>Tu cesta está vacía</p>");
            }
            
            
        });

    }
    
	function agregarProductoCarrito(usuario, producto, cantidad) {
		
		$.ajax({
			type: "POST",
			url: "registraCarrito",
			data: {"codigo_usuario": usuario, "codigo_producto": producto, "cantidad_carrito": cantidad},
			success: function(data) {
			    listaCarritoPorUsuario(usuario);
				mostrarMensaje(data.MENSAJE);
			},
			error: function() {
				mostrarMensaje(MSG_ERROR);
			}
		});
	}
	
	function eliminarProductoCarrito(codigo_carrito) {
	    
	    const codigoCliente = $('#id_codigo_propietario').val();
	    
	    $.ajax({
	        type: "POST",
	        url: "eliminaProductoCarrito",
	        data: {"codigo_carrito": codigo_carrito},
	        success: function(data) {
	            listaCarritoPorUsuario(codigoCliente);
	            mostrarMensaje(data.MENSAJE);
	        },
	        error: function() {
	            mostrarMensaje(data.ERROR);
	        }
	    });
	}
	
		function mostrarAlerta(mensaje) {
		    $('#alerta_dogtor').empty();
			const alerta = '<div class="alert alert-warning alert-dismissible fade show" id="alert" role="alert">' 
			+ mensaje + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
			$('#alerta_dogtor').append(alerta);
			$('#alert').show();
		}
	
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
	                                    + '\',\''
	                                    + row.dni_usuario
	                                    + '\',\''
	                                    + row.telefono_usuario
	                                    + '\',\''
	                                    + row.direccion_usuario
	                                    + '\',\''
	                                    + row.referencia_usuario
	                                    + '\')"><i data-feather="user-check"></i></button>';
	                            return btnSeleccionar
	                        },className : 'text-center mx-auto'
	                    },
					],
					"drawCallback": function( settings ) {
			            feather.replace();
				     }
              });

            $('#id_table_propietario').DataTable().columns.adjust().draw();
        }

        function listarUsuarioPorNombreYRol(nombre) {
            $.getJSON("listaUsuarioPorNombreYRol", {"nombre_usuario" : nombre, "codigo_rol_usuario": 2}, function (lista) {
                agregarGrillaPropietarios(lista);
            });
        }

        function seleccionarPropietario(codigo, nombre, apellido, email, dni, telefono, direccion, referencia) {
            $('#id_codigo_propietario').val(codigo);
            $('#id_nombre_propietario').val(nombre);
            $('#id_apellido_propietario').val(apellido);
            $('#id_email_propietario').val(email);
            $('#id_dni_propietario').val(dni);
            $('#id_telefono_propietario').val(telefono);
            $('#id_direccion_propietario').val(direccion);
            $('#id_referencia_propietario').val(referencia);
            $('#id_modal_BuscarCliente').modal("hide");
            listaCarritoPorUsuario(codigo);
        }

        $(document).ready(function () {

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
			
	        /*
	        const btnMostrarRegistrarCliente = $('#id_btnModal_RegistrarCliente');
	        const modalRegistrarCliente = $('#id_modal_RegistrarCliente');
	
	        btnMostrarRegistrarCliente.click(function () {
	            modalBuscarCliente.modal("hide");
	            modalRegistrarCliente.modal("show");
	        });
	        
	        */
	
	        // Productos
	        const btnMostrarBuscarProducto = $('#id_btnModal_BuscarProducto');
	        const modalBuscarProducto = $('#id_modal_BuscarProducto');
	
	        btnMostrarBuscarProducto.click(function () {
	            
	            if($('#id_codigo_propietario').val().length > 0) {
	                generarListaProductos();
	                modalBuscarProducto.modal("show");
	            } else {
	                mostrarMensaje("Debe seleccionar a un cliente");
	            }
	            
	        });
	
	        const btnFilterProducto = $('#filtra_producto');
	
	        btnFilterProducto.click(function () {
	            generarListaProductos();
	        });
	        
 			function limpiarRegistrarPedido() {
 	 			$('#id_codigo_propietario').val('');
 	            $('#id_nombre_propietario').val('');
 	            $('#id_apellido_propietario').val('');
 	            $('#id_email_propietario').val('');
 	            $('#id_dni_propietario').val('');
 	            $('#id_telefono_propietario').val('');
 	            $('#id_direccion_propietario').val('');
 	            $('#id_referencia_propietario').val('');
 	            $('#id_fecha_entrega').val('');
 	            $('#id_table_total').empty();
 	          	$('#id_table_carrito tbody').empty();
                $('#id_table_carrito tbody').append("<p class='text-center font__bolder'>Tu cesta está vacía</p>");
	        }
 			
 			$('#id_form_registraPedido').bootstrapValidator({
				message: 'El valor no es válido',
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
					codigo_usuario: {
						selector: '#id_codigo_propietario',
						validators: {
							notEmpty: {
								message: '* Obligatorio'
							},
						}
					},
					dni_usuario: {
						selector: '#id_dni_propietario',
						validators: {
							notEmpty: {
								message: '* Obligatorio'
							},
							regexp: {
							    regexp: /^[0-9]{8}$/,
							    message: 'Ingrese DNI válido'
							}
						}
					},
					telefono_usuario: {
						selector: '#id_telefono_propietario',
						validators: {
							notEmpty: {
								message: '* Obligatorio'
							},
							regexp: {
							    regexp: /^[0-9]{9}$/,
							    message: 'Teléfono de 9 dígitos'
							}
						}
					},
					email_usuario: {
						selector: '#id_email_propietario',
						validators: {
							notEmpty: {
								message: '* Obligatorio'
							},
							regexp: {
							    regexp: /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/,
							    message: 'Ingrese un email válido'
							        
							}
						}
					},
					direccion_usuario: {
						selector: '#id_direccion_propietario',
						validators: {
							notEmpty: {
								message: '* Obligatorio'
							},
							regexp: {
							    regexp: /^[0-9a-zñáéíóúü.# ]{5,}$/i,
							    message: 'Mínimo 5 caracteres'
							}
						}
					},
					referencia_usuario: {
						selector: '#id_referencia_propietario',
						validators: {
							notEmpty: {
								message: '* Obligatorio'
							},
							regexp: {
							    regexp: /^[0-9a-zñáéíóúü.# ]{5,}$/i,
							    message: 'Mínimo 5 caracteres'
							}
						}
					},
					fecha_entrega: {
						selector: '#id_fecha_entrega',
						validators: {
							notEmpty: {
								message: '* Obligatorio'
							},
						}
					},
				}
			});
	        
	        // Registrar Pedido
	        
	        const btnRegistrarPedido = $('#btnRegistrarPedido');
	
	        btnRegistrarPedido.click(function() {
	            
	            var validator = $('#id_form_registraPedido').data('bootstrapValidator');
				validator.validate();
	            
				var cliente =  $('#id_codigo_propietario').val();
				var dni = $('#id_dni_propietario').val();
				var telefono = $('#id_telefono_propietario').val();
				var email = $('#id_email_propietario').val();
				var direccion = $('#id_direccion_propietario').val();
				var referencia = $('#id_referencia_propietario').val();
				var fecha = $('#id_fecha_entrega').val();
				
				if(validator.isValid()) {
				    $.ajax({
						type: 'POST',
						data: {"codigo_usuario": cliente, "direccion_usuario": direccion, "referencia_usuario": referencia, "telefono_usuario": telefono, "dni_usuario": dni, "fecha_entrega": fecha},
						url: 'registraPedido',
						success: function(data) {
						    $('#id_modal_RegistraPedido').modal('hide');
							mostrarMensaje(data.MENSAJE);
							limpiarRegistrarPedido();
							validator.resetForm();
						},
						error: function() {
							mostrarMensaje(MSG_ERROR);
						}
					});
				}
	        });
	       

	    });
    </script>
</body>
</html>