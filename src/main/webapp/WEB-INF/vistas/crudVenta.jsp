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
	<title>Home | Dogtor</title>
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
                                <p class="font__title title__color font__semibold">Resumen</p>
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
                                <div id="btnProfile" class="options__profile mx-2">
                                    <img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
                                </div>
                        </div>

                        <div class="content__alert row">
                            <div class="col-12 mt-4 mb-2">
                                <div class="card__light">
                                    <div class="card__light__header d-flex justify-content-between my-3">
                                        <p class="font__subtitle title__color font__semibold">Alerta de Stock</p>
                                        <!-- <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraServicio" data-target="#id_modal_RegistraServicio">
                                        	<i data-feather="plus"></i>Nuevo</button> -->
                                    </div>
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaServicio">
											<input type="text" id="id_elimina" name="codigo_servicio" class="d-none">
											<input type="text" id="id_visibilidad_elimina" name="codigo_visibilidad" class="d-none">
										</form>
                                        <div class="col-12 table-responsive">
                                            <table id="id_table" class="font__min display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="background__title">
                                                    <tr>
														<th>#</th>
														<th>Nombre</th>
														<th>Descripción</th>
														<th>Precio</th>
														<th>Stock</th>
														<th>Serie</th>
														<th>Fotos</th>
														<th>Marca</th>
														<th>Categoría</th>
														<th>Proveedor</th>
														<!--<th>Estado</th>-->
														<th>Opciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                        </div>
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

	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<!-- <script type="text/javascript" src="js/bootstrapValidator.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <!-- Custom JS -->
    <script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	<script type="text/javascript" src="js/menuDashboard.js"></script>

	<script type="text/javascript">
	
    // Load icons
    feather.replace();
    
    function agregarGrilla(lista) {
		 $('#id_table').DataTable().clear();
		 $('#id_table').DataTable().destroy();
		 $('#id_table').DataTable({
				data: lista,
				searching: false,
				ordering: true,
				processing: true,
				pageLength: 6,
				lengthChange: false,
				responsive: true,
				columns:[
					{data: "codigo_producto"},
					{data: "nombre_producto"},
					{data: "descripcion_simple_producto"},
					{data: "precio_producto"},
					{data: "stock_producto"},
					{data: "serie_producto"},
					{data: function(row, type, val, meta) {
					    var foto1, foto2, foto3 = "";
					    
					    if(row.foto1_producto != null || row.foto1_producto != "") {
					        foto1 = "<img src='data:image/png;base64," +row.foto1_producto+ "' class='img__table--mini' alt='Pet image'>";
					    } else {
					        foto1 = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
					    }
					    
					    if(row.foto2_producto != null || row.foto2_producto != "") {
					        foto2 = "<img src='data:image/png;base64," +row.foto2_producto+ "' class='img__table--mini' alt='Pet image'>";
					    } else {
					        foto2 = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
					    }
					    
					    if(row.foto3_producto != null || row.foto3_producto != "") {
					        foto3 = "<img src='data:image/png;base64," +row.foto3_producto+ "' class='img__table--mini' alt='Pet image'>";
					    } else {
					        foto3 = "<img src='../../images/noimage.png' class='img__table--mini' alt='Pet image'>";
					    }
						
						return foto1 + foto2 + foto3;
					}, className: 'text-center mx-auto float-center'},
					{data: "marca.nombre_marca"},
					{data: "categoria.nombre_categoria_producto"},
					{data: "proveedor.nombre_proveedor"},
					{data: function(row, type, val, meta){
					    var btnSolicitarProveedor = '<button type="button" class="btn btn-info btn-sm mx-1" onclick="solicitar(\'' + row.codigo_producto + '\')"><i data-feather="send"></i> Solicitar</button>';
						
						return btnSolicitarProveedor;
					},className:'text-center mx-auto'},												
				]                                                   
		    });
		 	
		 	// Reload icons
		    feather.replace();
		 	
		 	$('#id_table').DataTable().columns.adjust().draw();
		}
    
		function solicitar(codigo_producto) {
			alert('Solicitud enviada. Código de producto: ' + codigo_producto );
		}
    
		function listarProductosDatatable(nombre) {
	        $.getJSON("listaProductoPorNombre", {"nombre_producto": nombre}, function(lista) {
	            agregarGrilla(lista);
	        });
	    }
		
	
	$(document).ready(function() {
		// Mostrar productos al cargar la página
		listarProductosDatatable("");
	});
	</script>
</body>
</html>