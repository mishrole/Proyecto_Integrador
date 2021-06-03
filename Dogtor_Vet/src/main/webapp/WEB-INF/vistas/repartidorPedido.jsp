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
	<!-- <link rel="stylesheet" type="text/css" href="css/simditor.css" /> -->
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
                
                <!-- Menu on LG and XXL -->
                <jsp:include page="menu.jsp" />
                
                <!-- Dashboard Content -->
                <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-1 mt-5 menu__transition mx-auto">
                    <div class="content__body background__light__white menu__transition">
                        <div class="row justify-content-center">
                            <div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold">Pedido</p>
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
                                <div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2">
                                    <i data-feather="message-square"></i>
                                </div>
                                <div id="btnCart" class="options__message d-flex align-items-center d-none d-lg-flex mx-2">
                                    <i data-feather="shopping-cart"></i>
                                </div>
                                <div id="btnProfile" class="options__profile mx-2">
                                    <img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
                                </div>
                        	</div>
                        
	                        <div class="content__alert row">
	                            <div class="col-12 mt-4 mb-2">
	                            	<p class="font__subtitle title__color font__semibold my-3">Historial de Pedidos</p>
	                                <div class="row">
	                                
	                                	<!-- Lista de Pedidos -->
	                                	<div class="col-12 col-lg-4 border__right" id="id_pedido_lista"></div>
	                                	
	                                	<!-- Cuerpo del Pedido -->
		                                <div class="col-12 col-lg-8">
			                            	<div id="id_pedido_contenido" class="py-3 px-2"></div>
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
		
    </div>

	<!-- <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>-->
	<!-- <script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>-->
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<!-- <script type="text/javascript" src="js/bootstrapValidator.js"></script> -->
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
	 	const listaPedidos = $('#id_pedido_lista');
	 	const contenidoPedidos = $('#id_pedido_contenido');
	 	
		function cambiarEstadoPedido(codigo_pedido, codigo_estado_pedido) {
			mostrarMensajeConfirmacion("¿Desea modificar el pedido?", accionEstadoPedido, null, {codigo_pedido, codigo_estado_pedido});
		}
		
		function accionEstadoPedido(data) {

			let nuevoEstado = "";
			
			if(data.codigo_estado_pedido > 0 && data.codigo_estado_pedido < 4) {
			    nuevoEstado = data.codigo_estado_pedido + 1;
			}
			
			$.ajax({
				type: "POST",
				url: "actualizaEstadoPedido",
				data: {"codigo_pedido": data.codigo_pedido, "codigo_estado_pedido": nuevoEstado},
				success: function(data) {
				    generarListaPedidos(codigoUsuario);
					mostrarMensaje(data.MENSAJE);
				},
				error: function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
			
		}
		
	 	
	 	function generarCuerpoPedidos(pedido) {
	 	    
	 		contenidoPedidos.empty();
	 		
 		 	var cards = document.getElementsByClassName("orders__list");
            console.log(cards);
	 	   
			var fechaSolicitud = new Date(pedido.fecha_solicitud_pedido);
			var fechaEntrega = new Date(pedido.fecha_entrega_pedido);
    
			const divBodyContainer = document.createElement('div');
			divBodyContainer.className = 'ms-2';
  
 			const pOrderNumber = document.createElement('p');
			pOrderNumber.innerHTML = "Pedido #"+pedido.codigo_pedido + "<br />" + (new Date(fechaSolicitud)).toISOString().split('T')[0];
			pOrderNumber.className = "font__semibold";

			const pOrderDate = document.createElement('p');
			pOrderDate.className = "m-0";
			pOrderDate.innerHTML = "Fecha de Entrega: "+ (new Date(fechaEntrega)).toISOString().split('T')[0];
			
			const cardTotal = document.createElement('p');
			cardTotal.className = "m-0";
			cardTotal.innerHTML = "Total del pedido: " + formatter.format(pedido.monto_pedido);
			
			const cardClient = document.createElement('p');
			cardClient.className = "m-0";
			cardClient.innerHTML = "Cliente: " + pedido.usuarioCliente.nombre_usuario + " " + pedido.usuarioCliente.apellido_usuario + "<br /> Correo: " + pedido.usuarioCliente.email_usuario;
			
			const cardBtnContainer = document.createElement('div');
			cardBtnContainer.className = 'my-2';
			
            let btnAction = document.createElement('button');
            let btnColor = pedido.codigo_estado_pedido + 1;
            
            btnAction.className = 'btn btn__status-' + btnColor;
            
            if(pedido.codigo_estado_pedido === 1) {
                btnAction.innerHTML = 'Marcar empaquetado';
            } else if(pedido.codigo_estado_pedido === 2) {
                btnAction.innerHTML = 'Marcar recorrido';
            } else if (pedido.codigo_estado_pedido === 3) {
                btnAction.innerHTML = 'Marcar entrega';
            } else {
                btnAction = "";
            }
            
            btnAction.onclick = () => {
                cambiarEstadoPedido(pedido.codigo_pedido, pedido.codigo_estado_pedido);
            }
            
            cardBtnContainer.append(btnAction);
			divBodyContainer.append(pOrderNumber, pOrderDate, cardTotal, cardClient, cardBtnContainer);
  
			// Cuerpo de Pedidos
  			contenidoPedidos.append(divBodyContainer);
	 	}
	    
		function generarListaPedidos(usuario) {
		    $.getJSON("listaPedidoPorRepartidor", {"codigo_repartidor": usuario}, function(lista) {
		        if(lista.length > 0) {
		            
		            listaPedidos.empty();
		            
		            $.each( lista, function(index, pedido) {
		                const divCard = document.createElement('div');
		                divCard.className = "card border__bottom orders__list";
		                
		                const cardBody = document.createElement('div');
		                cardBody.className = "card-body";
		                
		                const cardRow = document.createElement('div');
		                cardRow.className = "row align-items-center order__action";
		                
		                const cardFlex = document.createElement('div');
		                cardFlex.className = "d-flex";
		                
		                const cardStatus = document.createElement('p');
		                cardStatus.className = "order__status status-" + pedido.codigo_estado_pedido;
		                cardStatus.innerHTML = pedido.estadoPedido.nombre_estado_pedido;
		                
		                const cardOrderNumber = document.createElement('p');
		                cardOrderNumber.className = "font__semibold m-0";
		                cardOrderNumber.innerHTML = "Pedido #"+pedido.codigo_pedido;
		                
		                var fechaSolicitud = new Date(pedido.fecha_solicitud_pedido);
		                var fechaEntrega = new Date(pedido.fecha_entrega_pedido);
		                
		                const cardOrderDate = document.createElement('p');
		                cardOrderDate.className = "m-0";
		                cardOrderDate.innerHTML = (new Date(fechaSolicitud)).toISOString().split('T')[0];
		                
		                cardFlex.append(cardStatus);
		                cardRow.append(cardFlex, cardOrderNumber, cardOrderDate);
		                cardBody.append(cardRow);
		                divCard.append(cardBody);
	                
		                // Lista de Pedidos
		                listaPedidos.append(divCard);
		                
		                divCard.onclick = function() {
		                    $(".orders__list").removeClass('active');
	                    	this.setAttribute("class", "card border__bottom orders__list active");
		                    generarCuerpoPedidos(pedido);
	                    }
		                
		            });
		            
		            // Cargar primer pedido por defecto
		            generarCuerpoPedidos(lista[0]);
		            $('.orders__list').first().addClass('active');
		            
			    }
	        });

	    }

	    $(document).ready(function() {
	        generarListaPedidos(codigoUsuario);
           
		});
	    
	   
	</script>
</body>
</html>