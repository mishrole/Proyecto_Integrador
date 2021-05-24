<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html lang="es" >
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
	
	<title>Inicia Sesión | Dogtor</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	
	<section id="login" class="mt-5 d-flex align-items-center justify-content-center mx-auto text-center">  	
    	 <div class="container mt-5">
	        <div class="row">
        		<c:if test="${requestScope.MENSAJE != null}">
			    	<div class="alert alert-danger fade in" id="success-alert">
			        	<a href="#" class="close" data-dismiss="alert">&times;</a>
			        	<strong>${requestScope.MENSAJE}</strong>
			    	</div>
		    	</c:if>
	            <div class="col-12 justify-content-center align-items-center d-flex">
	                <main class="col-10 col-md-6">
	                    <form id="id_form" action="acceder" method="POST">
	                      <h1 class="h3 mb-4 mt-4 text-center title__color font__semibold">Inicia Sesión</h1>
	                    
	                      <div class="form-group form-floating mb-3">
	                        <input type="email" class="form-control" id="id_email" name="email_usuario" placeholder="name@example.com" autocomplete="on" value="vendedor@gmail.com">
	                        <label for="id_email">Correo electrónico</label>
	                      </div>
	                      <div class="form-group form-floating mb-3">
	                        <input type="password" class="form-control" id="id_contrasena" name="contrasena_usuario" placeholder="Password" autocomplete="on" value="123">
	                        <label for="id_contrasena">Contraseña</label>
	                      </div>
	
	                      <button class="w-100 btn btn-lg btn__primary" type="submit" id="iniciar_sesion">Ingresar</button>
	                      <p class="text-center mt-3 font__regular title__color">¿Todavía no tienes una cuenta? <a href="nuevaCuenta" class="primary__color">Regístrate</a></p>
	                    </form>
	                  </main>
	            </div>
	        </div>
    	</div>
	
	</section>
   
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/global.js"></script>

	<script type="text/javascript">
		
	$(document).ready(function() {
		
		$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
		    setTimeout($("#success-alert").slideUp(500), 2000);
		});

		const btnRegister = $('#iniciar_sesion');
		
		$('#id_form').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				email_usuario: {
					selector: '#id_email',
					validators: {
						notEmpty: {
							message: 'El correo electrónico es obligatorio'
						}
					}
				},
				contrasena_usuario: {
					selector: '#id_contrasena',
					validators: {
						notEmpty: {
							message: 'La contraseña es obligatoria'
						}
					}
				}
			}
		});
		
	});
	
	</script>
	
</body>
</html>