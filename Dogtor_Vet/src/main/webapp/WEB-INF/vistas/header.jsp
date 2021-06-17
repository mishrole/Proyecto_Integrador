<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<c:if test="${requestScope['javax.servlet.forward.servlet_path'] == '/'}">
	<!-- Landing Menu -->
    <nav class="navbar navbar-expand-lg navbar-light background__light__white fixed-top py-3">
        <div class="container">
            <a class="primary__color font__bolder font__max link__light" href="./">Dogtor</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
	            		<li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="#hero">Inicio</a>
	                    </li>
	                    <li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="#specialties">Especialidades</a>
	                    </li>
	                    <li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="#specialists">Especialistas</a>
	                    </li>
	                    <li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="#benefits">Beneficios</a>
	                    </li>
	                    <li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color" href="shop">Tienda</a>
	                    </li>
	                     <c:if test="${sessionScope.objRoles != null}">
					            <li class="nav-item">
			            			<a class="nav-link link-menu text-secondary-color" href="home">Panel</a>
			            		</li>
		                 </c:if>
                </ul>
                <div class="d-flex">
                    
                    <c:if test="${sessionScope.objMenus == null}">
                    	<a class="btn btn__clean" href="login">Iniciar Sesión</a>
	            	</c:if>
	            	
	            	<c:if test="${sessionScope.objMenus != null}">
	            		<a class="btn btn__clean" href="logout">Cerrar Sesión</a>
	            	</c:if>
                </div>
            </div>
        </div>
    </nav>
</c:if>

<c:if test="${requestScope['javax.servlet.forward.servlet_path'] == '/login' || requestScope['javax.servlet.forward.servlet_path'] == '/register' || requestScope['javax.servlet.forward.servlet_path'] == '/logout'}">
	<!-- Sign In & Register -->
    <nav class="navbar navbar-expand-lg navbar-light background__light__white fixed-top py-3">
        <div class="container">
            <a class="primary__color font__bolder font__max link__light" href="./">Dogtor</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                   <c:if test="${sessionScope.objRoles != null}">
		            <li class="nav-item">
            			<a class="nav-link link-menu text-secondary-color" href="home">Panel</a>
            		</li>
                   </c:if>
                </ul>
                <div class="d-flex">
                    
                    <c:if test="${sessionScope.objMenus == null}">
                    	<a class="btn btn__clean" href="login">Iniciar Sesión</a>
	            	</c:if>
	            	
	            	<c:if test="${sessionScope.objMenus != null}">
	            		<a class="btn btn__clean" href="logout">Cerrar Sesión</a>
	            	</c:if>
                </div>
            </div>

        </div>
    </nav>
</c:if>

<c:if test="${sessionScope.objMenus != null && requestScope['javax.servlet.forward.servlet_path'] != '/'}">
	<!-- Dashboard (Active Session) -->
	<!-- Menu on XS, SM, and MD -->
	<nav class="d-lg-none navbar navbar-expand-lg navbar-light fixed-top background__dark">
	    <div class="container-fluid">
	        <a class="font__max primary__color link__light font__bolder" href="./">Dogtor</a>
	        <button id="menuHamburger" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	            <span id="menuIconBtn"><i data-feather="menu"></i></span>
	        </button>
	    </div>
	</nav>

	<!-- Menu content on XS, SM, and MD -->
	<nav class="menu__sidebar collapse navbar-collapse d-lg-none" id="navbarNav">
	    <div class="container-fluid mt-5 pt-5">
	        <ul class="navbar-nav">
	        	<c:forEach var="x" items="${sessionScope.objMenus}">
					<li class="nav-item">
					    <a class="nav-link link-menu text-secondary-color" href="${x.ruta_enlace}">
					${x.descripcion_enlace}
						</a>
					</li>
				</c:forEach>
	        </ul>
			<div class="d-flex">
            	<c:if test="${sessionScope.objMenus == null}">
            		<a class="btn btn__clean" href="login">Iniciar Sesión</a>
     			</c:if>
     	
     			<c:if test="${sessionScope.objMenus != null}">
     				<a class="btn btn__clean" href="logout">Cerrar Sesión</a>
     			</c:if>
        	</div>
	    </div>
	</nav>
</c:if>