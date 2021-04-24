<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

 <nav class="navbar navbar-expand-lg navbar-light bg-light-custom">
    <div class="container">
        <a class="navbar-brand text-primary-color" href="./"><img src="../../images/logo.png" alt="Logo dogtor" width="200"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
            	<c:if test="${sessionScope.objMenus != null}">
            		<li class="nav-item">
                    	<a class="nav-link link-menu text-secondary-color" href="/">Web</a>
	                </li>
		            <c:forEach var="x" items="${sessionScope.objMenus}">
						<li class="nav-item">
		        			<a class="nav-link link-menu text-secondary-color" href="${x.ruta_enlace}">
		        				${x.descripcion_enlace}
		        			</a>
			        	</li>
		        	</c:forEach>
            	</c:if>
            	
            	<c:if test="${sessionScope.objMenus == null}">
            		<li class="nav-item">
                    	<a class="nav-link link-menu text-secondary-color" href="/">Inicio</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link link-menu text-secondary-color" href="nosotros">Nosotros</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link link-menu text-secondary-color" href="servicios">Servicios</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link link-menu text-secondary-color" href="tienda">Tienda</a>
	                </li>
            	</c:if>
            	
            </ul>
            <div class="d-flex">
            	<c:if test="${sessionScope.objMenus == null}">
            		<a class="btn btn-primary btn-singin" href="login">Iniciar Sesión</a>
            	</c:if>
            	
            	<c:if test="${sessionScope.objMenus != null}">
            		<a class="btn btn-primary btn-singin" href="logout">Cerrar Sesión</a>
            	</c:if>
            	
            	
        	</div>
        </div>
    </div>
  </nav>