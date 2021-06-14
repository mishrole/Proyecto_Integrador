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
	
	<link rel="stylesheet" href="css/dashboard.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<!-- Menu y Header requieren jQuery al inicio -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<title>Tienda | Dogtor</title>
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
                <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-3 mt-5 menu__transition mx-auto">
                    <div class="content__body background__light__white menu__transition mt-4 mt-lg-0">
                        <div class="row justify-content-center align-items-center">
                            <div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold m-0">Tienda</p>
                            </div>
                            <div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
                                <div class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
                                    <input type="text" name="filtro_nombre_producto" id="id_nombre_producto" class="input__search title__color" placeholder="Buscar...">
                                    <i data-feather="search" class="icon__light"></i>
                                </div>
                                <div class="options__filter d-none d-lg-flex mx-2">
                                    <select name="select_time" id="id_select_time" class="select__time form-select">
                                        <option value="0">Este mes</option>
                                    </select>
                                </div>
                                <!-- <div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2">
                                    <i data-feather="message-square"></i>
                                </div>-->
                                <button id="btnCart" class="btn options__cart d-flex align-items-center mx-2">
                                    <i data-feather="shopping-cart"></i>
                                    <span class="dot__notification"></span>
                                </button>
                                <div id="btnProfile" class="options__profile mx-2">
                                    <img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
                                </div>
                        </div>
                        
                        <div class="content__alert row">
                            <div class="col-12 mt-4 mb-2">
                                <div class="card__light border__white">
                                    <div class="card__light__header d-flex justify-content-between my-3">
                                        <p class="font__subtitle title__color font__semibold"></p>
                                        
                                    </div>
                                    <div class="card__light__body row justify-content-center">
                                    	<!-- Products Container -->
                                    	<div class="row justify-content-left" id="shopContainer"></div>
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
    
    <div class="container-fluid"></div>

	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <!-- Custom JS -->
    <script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	<script type="text/javascript" src="js/menuDashboard.js"></script>
	<script type="text/javascript" src="js/app.js"></script>

	<script type="text/javascript">
	
	    // Load icons
	    feather.replace();
	    
	    function generarListaProductos() {
	        
	        const nombre_producto = $('#id_nombre_producto').val();
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
	                    
	                    cardButton.onclick = function() {
	                        agregarProductoCarrito(${sessionScope.objUsuario.codigo_usuario}, producto.codigo_producto, cardCantidad.value);
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
		
		$(document).ready(function() {
		    generarListaProductos();
		});
    
	</script>
</body>
</html>