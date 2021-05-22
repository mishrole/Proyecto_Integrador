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
               
               <c:forEach var="x" items="${sessionScope.objMenus}">
               		<li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="${x.ruta_enlace}">
                           <div class="marker d-flex justify-content-lg-start justify-content-center" id="${x.ruta_enlace}">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="${x.icono_enlace}"></i>
                               </p>
                               <p class="d-none d-lg-block">${x.descripcion_enlace}</p>
                           </div>
                       </a>
                   	</li>
				</c:forEach>
				<li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="logout">
                           <div class="marker d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="log-out"></i>
                               </p>
                               <p class="d-none d-lg-block">Salir</p>
                           </div>
                       </a>
                </li>
               </ul>
           </div>
       </div>

   </nav>
</c:if>

<script>

	function colorearMenuActivo() {
		$('.active').removeClass('active');
		
		var menuUsuario = document.querySelectorAll('.marker');
		
		for(i = 0; i < menuUsuario.length; i++) {
		    if(window.location.pathname === '/'+menuUsuario[i].getAttribute('id')) {
		        menuUsuario[i].classList.add('active');
		    }
		}
	}
	
	$(document).ready(function() {
	 	// Activar estado del menu según pathname
	    colorearMenuActivo();
	});
</script>