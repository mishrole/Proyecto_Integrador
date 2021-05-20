<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!-- Dashboard (Active Session) -->

<c:if test="${sessionScope.objMenus != null && requestScope['javax.servlet.forward.servlet_path'] != '/'}">

   <!-- Menu on LG and XXL -->
   <nav id="menuSidebarLarge" class="d-none col-md-2 dashboard__menu menu__transition d-lg-flex flex-column justify-content-between align-items-center">

       <div class="menu__fixed fixed-top menu__transition">
           <div class="menu__header d-flex justify-content-between">
               <a class="font__max primary__color link__light font__bolder" href="./">
                   <div class="chevron__marker d-flex justify-content-lg-start justify-content-center">
                       <p class="d-none d-lg-block">
                           Dogtor
                       </p>
                   </div>
               </a>

               <button class="btn" id="menuChevron" aria-label="Toggle side menu">
                   <i class="primary__color" data-feather="chevrons-left"></i>
               </button>
               <div></div>
           </div>

           <div class="menu__body d-flex flex-column my-5 pe-lg-4 menu__transition">
               <ul class="menu__body__list">

                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/homeAdministrador">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="homeAdministrador">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="grid"></i>
                               </p>
                               <p class="d-none d-lg-block">Inicio</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/verVenta">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="verVenta">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="dollar-sign"></i>
                               </p>
                               <p class="d-none d-lg-block">Ventas</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/verProducto">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="verProducto">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="shopping-bag"></i>
                               </p>
                               <p class="d-none d-lg-block">Producto</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/verPedido">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="verPedido">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="package"></i>
                               </p>
                               <p class="d-none d-lg-block">Pedidos</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/verServicio">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="verServicio">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="zap"></i>
                               </p>
                               <p class="d-none d-lg-block">Servicios</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/verCita">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="verCita">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="calendar"></i>
                               </p>
                               <p class="d-none d-lg-block">Citas</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/verUsuario">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="verUsuario">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="users"></i>
                               </p>
                               <p class="d-none d-lg-block">Usuarios</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/verMascota">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="verMascota">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="github"></i>
                               </p>
                               <p class="d-none d-lg-block">Mascotas</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/verConfig">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="configMenu">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="settings"></i>
                               </p>
                               <p class="d-none d-lg-block">Config</p>
                           </div>
                       </a>
                   </li>
               </ul>
           </div>
       </div>

   </nav>
</c:if>

<script>

//var menusUsuario = [];
/*
$('.active').removeClass('active');
<c:forEach var="x" items="${sessionScope.objMenus}">
	//menusUsuario.push(${x.ruta_enlace});
	    if(window.location.pathname === '/'+${x.ruta_enlace}) {
    		$('#'+${x.ruta_enlace}).addClass('active');
    	}
	    console.log(${x.ruta_enlace});
</c:forEach>*/

function colorearMenuActivo() {
	$('.active').removeClass('active');
	
	var menuUsuario = document.querySelectorAll('.marker');
	
	for(i = 0; i < menuUsuario.length; i++) {
	    console.log(menuUsuario[i].getAttribute('id'));
	    if(window.location.pathname === '/'+menuUsuario[i].getAttribute('id')) {
	        menuUsuario[i].classList.add('active')
	    }
	}
	/*
	let opciones = ['homeAdministrador', 'verUsuario', 'verProducto', 'verServicio', 'verMascota', 'homeCliente'];
	
	opciones.forEach(function(value, index) {
    	if(window.location.pathname === '/'+value) {
    		$('#'+value).addClass('active');
    	}
	});
	*/
	//var menus = ${sessionScope.objMenus};
	//console.log(menusUsuario)
	}
	
	// Activar estado del menu según pathname
	$(document).ready(function() {
	
	    colorearMenuActivo();
		
	});
</script>