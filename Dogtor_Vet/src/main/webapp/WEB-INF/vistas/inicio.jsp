<!DOCTYPE html>
<html lang="es" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<title>Inicio Dogtor</title>
</head>
<body>

 <jsp:include page="header.jsp" />

    <section id="hero" class="mt-5 mb-5">
        <div class="container pt-5">
            <div class="row pt-5 pb-5">
                <div class="col-12 col-md-6 d-flex flex-column align-items-center justify-content-center">
                    <div class="col-10 mx-auto">
                        <h1 class="text-dark-color mb-3 fw-400">Disfruta de la mejor asistencia veterinaria</h1>
                        <h5 class="text-secondary-color fw-400">Atención en todo Lima Metropolitana</h5>
                    </div>
                    <div class="col-10 mx-auto mt-3">
                        <button class="btn btn-primary btn-generic pulse">Adquiere tu cita</button>
                    </div>
                </div>
                <div class="col-12 col-md-6 d-flex justify-content-center">
                    <div class="d-flex col-10 mx-auto">
                        <img src="../../images/doctors.svg" class="d-block w-100" alt="Doctores">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="specialties" class="mt-5 mb-5 pt-5">
        <div class="container">
            <div class="row pt-5 pb-5">
                <div class="col-12 col-md-7 d-flex justify-content-center">
                    <div class="d-flex col-11 mx-auto">
                        <img src="../../images/building.svg" class="d-block w-100" alt="Especialidades">
                    </div>
                </div>
                <div class="col-12 col-md-5 d-flex flex-column justify-content-center align-items-center mx-auto">
                    <h4 class="text-start text-primary-color-dark mb-5">Principales <br />Especialidades</h4>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item border-0 text-secondary-color fw-400">
                            <img src="../../images/zap.svg" alt="Nube" class="pe-3">
                            Cardiología
                        </li>
                        <li class="list-group-item border-0 text-secondary-color fw-400">
                            <img src="../../images/zap.svg" alt="Nube" class="pe-3">
                            Nutrición
                        </li>
                        <li class="list-group-item border-0 text-secondary-color fw-400">
                            <img src="../../images/zap.svg" alt="Nube" class="pe-3">
                            Odontología
                        </li>
                        <li class="list-group-item border-0 text-secondary-color fw-400">
                            <img src="../../images/zap.svg" alt="Nube" class="pe-3">
                            Oncología
                        </li>
                        <li class="list-group-item border-0 text-secondary-color fw-400">
                            <img src="../../images/zap.svg" alt="Nube" class="pe-3">
                            Traumatología
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section id="specialists" class="mt-5 mb-5 pt-5 bg-clean">
        <div class="container">
            <div class="row pt-5 pb-5 align-items-center justify-content-center">
                <div class="col-12 d-flex flex-column align-items-center justify-content-center">
                    <h3 class="text-start text-dark-color mb-2">Control veterinario efectivo</h3>
                    <h5 class="text-start text-secondary-color mb-5 fw-400">Conoce a nuestros especialistas</h5>
                </div>
                <div class="row col-8 col-md-6 text-center">
                    <div class="col-12 col-md-3 p-2">
                        <img src="../../images/favatar.svg" alt="Persona" class="d-block w-100 specialist__profile__image"
                            data-bs-toggle="popover" data-bs-placement="bottom" data-bs-trigger="hover focus"
                            data-bs-title="<p class='text-center m-0 p-0'>Jane Doe</p>" data-bs-html="true"
                            data-bs-content="<b>Cardiología</b><br /><div class='row'><div class='col-5'>Lun, Mar, Jue, y Vie</div><div class='col-7'>9AM - 1PM<br/>2PM - 6PM</div></div>">
                    </div>
                    <div class="col-12 col-md-3 p-2">
                        <img src="../../images/mavatar.svg" alt="Persona" class="d-block w-100 specialist__profile__image"
                            data-bs-toggle="popover" data-bs-placement="bottom" data-bs-trigger="hover focus"
                            data-bs-title="<p class='text-center m-0 p-0'>John Doe</p>" data-bs-html="true"
                            data-bs-content="<b>Nutrición</b><br /><div class='row'><div class='col-5'>Mie, Jue, Vie, y Sab</div><div class='col-7'>8AM - 1PM<br/>2PM - 5PM</div></div>">
                    </div>
                    <div class="col-12 col-md-3 p-2">
                        <img src="../../images/favatar.svg" alt="Persona" class="d-block w-100 specialist__profile__image"
                            data-bs-toggle="popover" data-bs-placement="bottom" data-bs-trigger="hover focus"
                            data-bs-title="<p class='text-center m-0 p-0'>Jane Doe</p>" data-bs-html="true"
                            data-bs-content="<b>Odontología</b><br /><div class='row'><div class='col-5'>Lun, Mier, Vie, y Dom</div><div class='col-7'>8AM - 2PM<br/>4PM - 6PM</div></div>">
                    </div>
                    <div class="col-12 col-md-3 p-2">
                        <img src="../../images/mavatar.svg" alt="Persona" class="d-block w-100 specialist__profile__image"
                            data-bs-toggle="popover" data-bs-placement="bottom" data-bs-trigger="hover focus"
                            data-bs-title="<p class='text-center m-0 p-0'>John Doe</p>" data-bs-html="true"
                            data-bs-content="<b>Oncología</b><br /><div class='row'><div class='col-5'>Mar, Mie, Jue, y Dom</div><div class='col-7'>8AM - 1PM<br/>2PM - 5PM</div></div>">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="benefits" class="mt-5 mb-5 pt-5">
        <div class="container">
            <div class="row pt-5 pb-5 align-items-center justify-content-center mx-auto">
                <div class="col-12 col-md-6 d-flex flex-column justify-content-center align-items-center mx-auto">
                    <h4 class="text-start text-primary-color-dark mb-5">Nuestros<br />Beneficios</h4>
                    <div class="col-12 col-md-10 col-lg-8 mx-auto">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item border-0 text-secondary-color fw-400">
                                <div class="row">
                                    <div class="col-2 pt-1">
                                        <img src="../../images/monitor.svg" alt="Monitor" class="p-2">
                                    </div>
                                    <div class="col-10">
                                        <p class="p-2 beneficios__title text-dark-color">Gestiona y programa tus citas a través de un
                                            panel interactivo</p>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item border-0 text-secondary-color fw-400">
                                <div class="row">
                                    <div class="col-2 pt-1">
                                        <img src="../../images/message.svg" alt="Mensaje" class="p-2">
                                    </div>
                                    <div class="col-10">
                                        <p class="p-2 beneficios__title text-dark-color">Resuelve tus dudas con el sistema de mensajería
                                            en tiempo real</p>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item border-0 text-secondary-color fw-400">
                                <div class="row">
                                    <div class="col-2 pt-1">
                                        <img src="../../images/file.svg" alt="Documento" class="p-2">
                                    </div>
                                    <div class="col-10">
                                        <p class="p-2 beneficios__title text-dark-color">Accede de manera ilimitada al historial de tus
                                            mascotas</p>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item border-0 text-secondary-color fw-400">
                                <div class="row">
                                    <div class="col-2 pt-1">
                                        <img src="../../images/shopping.svg" alt="Carrito de compras" class="p-2">
                                    </div>
                                    <div class="col-10">
                                        <p class="p-2 beneficios__title text-dark-color">Adquiere una amplia variedad de productos en
                                            nuestra Dogtor Shop</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-12 col-md-6 d-flex justify-content-center">
                    <div class="d-flex col-12 mx-auto">
                        <img src="../../images/services.svg" class="d-block w-100 transform-horizontal" alt="Beneficios">
                    </div>
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
		
		// Efecto de scroll en el menú
    	$('.scroll').on('click', function(e) {
    		e.preventDefault();
    		$('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top - 100}, 400, 'linear');
    	});
    	
		// Activar los popover de especialistas
		var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
        var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
            return new bootstrap.Popover(popoverTriggerEl)
        });
        
	});
	
	</script>
	
</body>
</html>