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
	<link rel="stylesheet" type="text/css" href="css/simditor.css" />
	<!-- Menu y Header requieren jQuery al inicio -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script>    (function(b,c){
		var e=document.createElement('link');e.rel='stylesheet',
		e.type='text/css',e.href='https://chatboxlive.blahbox.net/static/css/main.css',
		document.getElementsByTagName('head')[0].appendChild(e);            
		var f=document.createElement('script');f.onload=function(){
			var g;
			if(c)g='previewInit';
			else{var h=document.createElement('div');g='cbinit',
			h.id='cbinit',document.body.append(h)}
			console.log(document.querySelector('#'+g)),
			chatbox.initChat(document.querySelector('#'+g),b,c)},
			f.src='https://chatboxlive.blahbox.net/static/js/chat-lib.js',
			document.getElementsByTagName('head')[0].appendChild(f)})('ab7d3a9240710522e9679288da71e81b', 0);          
	</script>
	<title>Home | Dogtor</title>
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
                                <p class="font__title title__color font__semibold m-0">Resumen</p>
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
                        
                         <div class="content__statistics row mt-4">
                            <div class="col-12 col-md-6 mt-2 mb-2">
                                <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start">
                                    <p class="card__light__title">Pr?xima Cita</p>
                                    <p class="font__title title__color font__semibold m-0">12/06/2021</p>
                                    <p class="font__title title__color font__semibold m-0">3:40PM a 4:50PM</p>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 mt-2 mb-2">
                                <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start">
                                    <p class="card__light__title">?ltimo Pedido</p>
                                    <p class="font__title title__color font__semibold m-0">29/05/2021</p>
                                    <p class="font__title title__color font__semibold m-0">En curso</p>
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

	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
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
	    
	    var usuarioActual = ${sessionScope.objUsuario.codigo_usuario};
    
	</script>
</body>
</html>