<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="css/dashboard.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        
    <title>¡Oops! | Dogtor </title>
</head>

<body class="background__light__white">

    <nav class="navbar navbar-expand-lg navbar-light background__light__white fixed-top">
        <div class="container">
            <a class="navbar-brand" href="./">
                <p class="primary__color font__bolder font__max">Dogtor</p>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item mx-lg-2">
                        
                    </li>
                    <li class="nav-item mx-lg-2">
                        
                    </li>
                    <li class="nav-item mx-lg-2">
                        
                    </li>
                    <li class="nav-item mx-lg-2">
                        
                    </li>
                    <li class="nav-item mx-lg-2">
                        
                    </li>
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

    <section id="hero" class="mt-5 mb-5 pt-5">
        <div class="container pt-5">
            <div class="row">
                <div class="col-12 d-flex flex-column align-items-between justify-content-center">
	                <img src="./images/error/notFound.svg" class="d-block w-100 my-4" width="300" height="300" alt="Error">
					<div class="d-flex flex-column align-items-center">
						<h1 class="font__max title__color font__semibold my-2">¡Oops! Parece que te has perdido</h1>
					    <a class="btn btn__primary my-2" href="/">Regresa a la web</a>
					</div>
                </div>
            </div>
        </div>
    </section>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- JavaScript Bundle with Popper -->
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
	
    <script type="text/javascript">

        // Librería de iconos
        feather.replace();
    </script>

</body>

</html>