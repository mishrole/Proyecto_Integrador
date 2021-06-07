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
	
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/dashboard.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<!-- Menu y Header requieren jQuery al inicio -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<title>Carrito | Dogtor</title>
</head>
<body class="background__light__gray">

    <main id="dashboard">
        <div class="container-fluid align-items-stretch">
		
		<!-- Header on XS, SM, and MD -->
		<jsp:include page="header.jsp" />
		<!-- Carrito de Compras -->
        <jsp:include page="carrito.jsp" />
            
            <div class="row">
                
                <!-- Menu on LG and XXL -->
                <jsp:include page="menu.jsp" />
                
                <!-- Dashboard Content -->
                <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-1 mt-5 menu__transition mx-auto">
                    <div class="content__body background__light__white menu__transition">
                        <div class="row justify-content-center">
                            <div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold">Carrito</p>
                            </div>
                            <div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
                                <div class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
                                    <input type="text" name="filtro_nombre_servicio" id="id_nombre_filtro" class="input__search title__color" placeholder="Buscar...">
                                    <i data-feather="search" class="icon__light"></i>
                                </div>
                                <div class="options__filter d-none d-lg-flex mx-2">
                                    <select name="select_time" id="id_select_time" class="select__time form-select">
                                        <option value="0">Este mes</option>
                                    </select>
                                </div>
                                <!-- <div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2">
                                    <i data-feather="message-square"></i>
                                </div> -->
                                <button id="btnCart" class="btn options__cart d-flex align-items-center mx-2">
                                    <i data-feather="shopping-cart"></i>
                                    <span class="dot__notification"></span>
                                </button>
                                <div id="btnProfile" class="options__profile mx-2">
                                    <img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
                                </div>
                        	</div>
                        
                        	<div class="content__alert row">
                            	<div class="col-12 mt-5 mb-2">
                            	
                                	<div class="row">
	                                   	<!-- Lista de Pedidos -->
	                                	<div class="col-12 col-lg-8 table-responsive">
	                                		<p class="font__subtitle title__color font__semibold my-3">Detalle de Compra</p>
	                                	
	                                		<table id="id_table_compra" class="table table-sm text-center">
	                                			<thead>
	                                				<tr>
	                                					<th scope="col"></th>
	                                					<th scope="col">Producto</th>
	                                					<th scope="col">Cantidad</th>
	                                					<th scope="col">Subtotal</th>
	                                					<th scope="col"></th>
	                                				</tr>
	                                			</thead>
	                                			<tbody class="align-middle">
	                                			</tbody>
	                                		</table>
	                                	</div>
	                                	
	                                	<!-- Cuerpo del Pedido -->
		                                <div class="col-12 col-lg-4">
											<p class="font__subtitle title__color font__semibold my-3">Resumen de Compra</p>
			                            	<table id="id_resume_compra" class="table table-sm text-center">
			                            		<thead>
			                            			<tr>
			                            				<th scope="col">Tipo</th>
			                            				<th scope="col">Costo</th>
			                            			</tr>
			                            		</thead>
			                            		<tbody class="align-middle">
			                            		</tbody>
			                            	</table>
			                            	<div id="id_comprar_container" class="d-flex justify-content-center align-items-center">
			                            		
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
		<div class="modal fade p-0" id="id_modal_RegistraPedido">
    		<div class="modal-dialog modal-xl">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="text-center primary__color"><b>Dogtor</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_registraPedido">
					                      
					                      <input type="text" id="id_cliente" name="codigo_usuario" value="${sessionScope.objUsuario.codigo_usuario}" class="d-none">
					                      
					                      <div class="form-group row">
					                    	<div class="col-12 mb-3">
					                    		<p class="font__subtitle title__color font__semibold m-0">Datos de Cliente</p>
					                    	</div>
					                      </div>
					                      
					                      <div class="form-group row">
					                      	
					                      	<div class="col-12 col-md-6 mb-3">
					                      		<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_email" name="email_usuario" value="${sessionScope.objUsuario.email_usuario}" readonly >
						                      		<label for="id_email">Email</label>
					                      		</div>
					                      	</div>
					                      	
					                      	<div class="col-12 col-md-3 mb-3">
					                      		<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_dni" name="dni_usuario" value="${sessionScope.objUsuario.dni_usuario}">
						                      		<label for="id_dni">DNI</label>
					                      		</div>
					                      	</div>
					                      	
					                      	<div class="col-12 col-md-3 mb-3">
					                      		<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_telefono" name="telefono_usuario" value="${sessionScope.objUsuario.telefono_usuario}" >
						                      		<label for="id_telefono">Teléfono</label>
					                      		</div>
					                      	</div>
					                      </div>
					                      
					                      <div class="form-group row">
					                    	<div class="col-12 mb-3">
					                    		<p class="font__subtitle title__color font__semibold m-0">¿Dónde recibirás tu pedido?</p>
					                    	</div>
					                      </div>
					                      
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
					                      		<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_direccion" name="direccion_usuario" value="${sessionScope.objUsuario.direccion_usuario}">
						                      		<label for="id_direccion">Dirección</label>
					                      		</div>
					                      	</div>
					                      	
					                      	<div class="col-12 col-md-6 mb-3">
					                      		<div class="form-floating">
						                      		<input type="text" class="form-control" id="id_referencia" name="referencia_usuario" value="${sessionScope.objUsuario.referencia_usuario}">
						                      		<label for="id_referencia">Referencia</label>
					                      		</div>
					                      	</div>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 mb-3">
					                    		<p class="font__subtitle title__color font__semibold m-0">Elige una fecha de entrega</p>
					                    	</div>
										  </div>
										  
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
					                      		<div class="form-floating">
													<input type="date" name="fecha_entrega" class="form-control" id="id_fecha_entrega">
													<label for="id_fecha_entrega">Fecha</label>
												</div>
					                      	</div>
					                      </div>
					                      
					                      <!-- 
					                      <div class="form-group row">
										  	<div class="col-12 mb-3">
					                    		<p class="font__subtitle title__color font__semibold">Pago en línea</p>
					                    	</div>
										  </div>
					                       -->
					                      <button class="w-100 btn btn-lg btn__primary" type="button" id="id_btn_registrar_pedido">Finalizar compra</button>
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
	
	    // Load icons
	    feather.replace();
	    
	    // Usuario actual
	 	const codigoUsuario = ${sessionScope.objUsuario.codigo_usuario};
		
	 	function obtenerDatosUsuario(usuario) {
	 	   $.getJSON("listaUsuarioPorId", {"codigo_usuario" : usuario}, function (lista) {
			    $('#id_dni').val(lista.dni_usuario);
			    $('#id_telefono').val(lista.telefono_usuario);
			    $('#id_email').val(lista.email_usuario);
			    $('#id_direccion').val(lista.direccion_usuario);
			    $('#id_referencia').val(lista.referencia_usuario);
	 	       
	 	   });
	 	}
	 	
	 	function listaDetalleCarritoPorUsuario(usuario) {
		    $("#id_table_compra tbody").empty();
	        
	        let subtotal = 0;
	        let costoEnvio = 0;
	        let totalPagar = 0;
	        
	        $.getJSON("listaCarritoPorUsuario", {"codigo_usuario" : usuario}, function (lista) {
	            
	            if(!lista.length > 0) {
	                costoEnvio = 0;
	                $("id_table_compra").empty();
	                $("#id_table_compra").parent().append("<p class='text-center font__bolder'>Tu cesta está vacía</p>");
	            } else {
	                costoEnvio = 5;
	            }
	            
	            $.each( lista, function( index, value ) {
	            	subtotal += value.producto.precio_producto * value.cantidad_carrito;
	            	
	            	let fila = document.createElement('tr');
	            	let thFoto = document.createElement('th');
	                thFoto.className = "align-middle";
	                let foto = document.createElement('img');
	                
	                let thNombre = document.createElement('th');
	                thNombre.className = 'font__regular';
	                let nombre = document.createElement('p');
	                nombre.className = "m-0";
	                nombre.style = 'font-size: 0.9rem; font-weight: 700';
	                
	                let thCantidad = document.createElement('th');
	                thCantidad.className = 'font__regular';
	                let cantidad = document.createElement('p');
	                cantidad.className = "px-3 m-0";
	                cantidad.style = 'font-size: 0.8rem';
	                
	                let divFlexCantidad = document.createElement('div');
	                divFlexCantidad.className = 'd-flex justify-content-center align-items-center';
	                
	                let btnSumaCantidad = document.createElement('button');
	                btnSumaCantidad.className = 'btn btn__clean';
	                btnSumaCantidad.type = 'button';
	                btnSumaCantidad.innerHTML = "+";
	                
	                let btnRestaCantidad = document.createElement('button');
	                btnRestaCantidad.className = 'btn btn__clean';
	                btnRestaCantidad.type = 'button';
	                btnRestaCantidad.innerHTML = "-";
                
	                let thPrecio = document.createElement('th');
	                thPrecio.className = 'font__regular primary__color';
	                let precio = document.createElement('p');
	                precio.className = "m-0";
	                precio.style = 'font-size: 0.8rem';
	                
	                let thEliminar = document.createElement('th');
	                let btnEliminarDetalle = document.createElement('button');
	                btnEliminarDetalle.className = 'btn btn__danger';
	                btnEliminarDetalle.style = 'font-size: 0.7rem';
	                btnEliminarDetalle.innerHTML = "Eliminar";
	                btnEliminarDetalle.type = 'button';
	                
	                foto.className = "img__table--mini";
	                foto.alt = value.producto.nombre_producto;
	                
	                if(value.producto.foto1_producto.length != 0) {
				        foto.src = "data:image/png;base64," + value.producto.foto1_producto;
				    } else {
				        foto.src = "../../images/noimage.png";
				    }
	                
	                nombre.innerHTML = value.producto.nombre_producto;
	                cantidad.innerHTML = value.cantidad_carrito;
	                precio.innerHTML = formatter.format(value.producto.precio_producto);
					
	                thFoto.append(foto);
	                thNombre.append(nombre);
	                divFlexCantidad.append(btnRestaCantidad, cantidad, btnSumaCantidad);
	                thCantidad.append(divFlexCantidad);
	                thPrecio.append(precio);
	                thEliminar.append(btnEliminarDetalle);
	                fila.append(thFoto, thNombre, thCantidad, thPrecio, thEliminar);
	                
	                btnSumaCantidad.onclick = function() {
	                    sumarProductoDetalleCarrito(value.producto.codigo_producto, value.cantidad_carrito);
	                }
	                
	                btnRestaCantidad.onclick = function() {
	                    restarProductoDetalleCarrito(value.producto.codigo_producto, value.cantidad_carrito);
	                }
	                
	                btnEliminarDetalle.onclick = function() {
	                    eliminarProductoDetalleCarrito(value.codigo_carrito);
	                }
	                
	                $("#id_table_compra tbody").append(fila);
	            });
	            
		        $('#id_resume_compra tbody').empty();
	            totalPagar = subtotal + costoEnvio;
	            
	            let filaSubtotal = document.createElement('tr');
	            let thSubtotalNombre = document.createElement('th');
	            thSubtotalNombre.innerHTML = 'Subtotal:';
	            thSubtotalNombre.className = 'font__regular';
	            let thSubtotalMonto = document.createElement('th');
	            thSubtotalMonto.innerHTML = formatter.format(subtotal);
	            thSubtotalMonto.className = 'font__regular';
	            filaSubtotal.append(thSubtotalNombre, thSubtotalMonto);
	            
	            let filaEnvio = document.createElement('tr');
	            let thEnvioNombre = document.createElement('th');
	            thEnvioNombre.innerHTML = 'Costo Envío:';
	            thEnvioNombre.className = 'font__regular';
	            let thEnvioMonto = document.createElement('th');
	            thEnvioMonto.innerHTML = formatter.format(costoEnvio);
	            thEnvioMonto.className = 'font__regular';
	            filaEnvio.append(thEnvioNombre, thEnvioMonto);
	            
	            let filaTotal = document.createElement('tr');
	            let thTotalNombre = document.createElement('th');
	            thTotalNombre.innerHTML = 'Total a pagar:';
	            let thTotalMonto = document.createElement('th');
	            thTotalMonto.innerHTML = formatter.format(totalPagar);
	            filaTotal.append(thTotalNombre, thTotalMonto);
	            
	            let btnComprar = document.createElement('button');
	            btnComprar.id = 'id_btn_comprar';
	            btnComprar.className = 'btn btn__primary';
	            btnComprar.type = 'button';
	            btnComprar.innerHTML = 'Ir a comprar';
	            
	            $('#id_comprar_container').empty();
	            
	            if(totalPagar > 0) {
	                $('#id_comprar_container').append(btnComprar);
	            }
	            
	            $('#id_btn_comprar').click(function() {
	                $('#id_modal_RegistraPedido').modal('show');
	                $('#id_cliente').val(codigoUsuario);
	        	 	obtenerDatosUsuario(codigoUsuario);
				});
 
	            $('#id_resume_compra tbody').append(filaSubtotal, filaEnvio, filaTotal);
	            
	        });
	 	}
	 	
		function agregarProductoCarrito(usuario, producto, cantidad) {
			
			$.ajax({
				type: "POST",
				url: "registraCarrito",
				data: {"codigo_usuario": usuario, "codigo_producto": producto, "cantidad_carrito": cantidad},
				success: function(data) {
				    listaCarritoPorUsuario(usuario);
				    listaDetalleCarritoPorUsuario(usuario);
					if(data.lista === undefined) {
					    mostrarMensaje(data.MENSAJE);
					}
				},
				error: function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
		}
	 	
	 	function sumarProductoDetalleCarrito(codigo_producto, cantidad_carrito) {
	 	    let nuevaCantidad = cantidad_carrito + 1;
			agregarProductoCarrito(codigoUsuario, codigo_producto, nuevaCantidad);
	 	}
	 	
	 	function restarProductoDetalleCarrito(codigo_producto, cantidad_carrito) {
			let nuevaCantidad = cantidad_carrito - 1;
			agregarProductoCarrito(codigoUsuario, codigo_producto, nuevaCantidad);
	 	}
	 	
	 	function eliminarProductoDetalleCarrito(codigo_carrito) {
	 	   $.ajax({
		        type: "POST",
		        url: "eliminaProductoCarrito",
		        data: {"codigo_carrito": codigo_carrito},
		        success: function(data) {
				    listaCarritoPorUsuario(codigoUsuario);
				    listaDetalleCarritoPorUsuario(codigoUsuario);
		            mostrarMensaje(data.MENSAJE);
		        },
		        error: function() {
		            mostrarMensaje(data.ERROR);
		        }
		    });
	 	}
		
		$(document).ready(function() {
		    listaDetalleCarritoPorUsuario(codigoUsuario);
		    
		    $('#id_form_registraPedido').bootstrapValidator({
				message: 'El valor no es válido',
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
					codigo_usuario: {
						selector: '#id_cliente',
						validators: {
							notEmpty: {
								message: '* Obligatorio'
							},
						}
					},
					dni_usuario: {
						selector: '#id_dni',
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
						selector: '#id_telefono',
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
						selector: '#id_email',
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
						selector: '#id_direccion',
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
						selector: '#id_referencia',
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
		    
		    $('#id_btn_registrar_pedido').click(function() {
		        var validator = $('#id_form_registraPedido').data('bootstrapValidator');
				validator.validate();
				
				var cliente =  $('#id_cliente').val();
				var dni = $('#id_dni').val();
				var telefono = $('#id_telefono').val();
				var email = $('#id_email').val();
				var direccion = $('#id_direccion').val();
				var referencia = $('#id_referencia').val();
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
							listaDetalleCarritoPorUsuario(codigoUsuario);
							listaCarritoPorUsuario(codigoUsuario);
						},
						error: function() {
							mostrarMensaje(MSG_ERROR);
						}
					});
				}
		    });
		    
			function limpiarRegistrarPedido() {
			    $('#id_fecha_entrega').val('');
			}
		});
    
	</script>
</body>
</html>