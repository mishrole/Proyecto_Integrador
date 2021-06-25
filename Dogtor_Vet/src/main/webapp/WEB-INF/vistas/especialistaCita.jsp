<jsp:include page="validarSesion.jsp" />
<!DOCTYPE html>
<html lang="esS" >
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
<title>Cita | DOGTOR</title>
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
                <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-3 mt-5 menu__transition mx-auto">
                    <div class="content__body background__light__white menu__transition mt-4 mt-lg-0">
                        <div class="row justify-content-center align-items-center">
                            <div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold m-0">Citas</p>
                            </div>
                            <div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
                                <div class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
                                    <input type="text" name="filtro_nombre_producto" id="id_nombre_filtro" class="input__search title__color" placeholder="Buscar...">
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
                                        <p class="font__subtitle title__color font__semibold">Lista de Citas</p>
                                    </div>
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaProducto">
											<input type="text" id="id_elimina" name="codigo_producto" class="d-none">
											<input type="text" id="id_visibilidad_elimina" name="codigo_visibilidad" class="d-none">
										</form>
                                        <div class="col-12 table-responsive">
                                            <table id="id_table" class="font__min display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="background__title">
                                                    <tr>
														<th>#</th>
														<th>Fecha Solicitud Cita</th>
														<th>Fecha Programada Cita</th>
														<th>Servicio</th>
														<th>Propietario</th>
														<th>Mascota</th>
														<th>Estado Cita</th>
														<th>Motivo Cita</th>
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
    	
    	<div class="modal fade" id="id_modal_ActualizaCita">
    		<div class="modal-dialog modal-xl">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Actualizar Estado de Cita</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_actualiza">
											<input type="text" id="id_cita_actualiza" name="codigo_cita" class="d-none">
											
					                      <div class="form-group row">
					                      
										  	<div class="col-12 col-md-4 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="id_estado_actualiza" name="codigo_estado_cita" aria-label="Default select example">
													  <option selected value="0">Seleccione Estado</option>
													</select>
													<label for="select_estado_actualiza">Estado Cita</label>
					                      		</div>
										  	</div>
										  	
					                      
										    <button class="w-100 btn btn-lg btn-primary btn__primary" type="button" id="actualizar_cita">Actualizar</button>
									     </form>
								      </main>
							       </div>
							      </div>
		    					</div>
		    				</div>
		    				<div class="modal-footer">
		    					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="id_btn_act_cancelar">Cerrar</button>
		    				</div>
    			</div>
    		</div>
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
	<script type="text/javascript" src="js/module.js"></script>
	<script type="text/javascript" src="js/hotkeys.js"></script>
	<script type="text/javascript" src="js/uploader.js"></script>
	<script type="text/javascript" src="js/simditor.js"></script>
	<script type="text/javascript" src="js/app.js"></script>

<script type="text/javascript">

//listar citas al cargar pagina
window.onload=function listar(){
	$.getJSON("listaCita", function (listado){
		agregarGrilla(listado);
	});
	
}

//limpia validaciones al cerrar modal de editar
$("#id_btn_act_cancelar").click(function(){
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
	validator.resetForm();
  $('#id_modal_ActualizaCita').modal("hide");
});

function agregarGrilla(lista){
	 $('#id_table').DataTable().clear();
	 $('#id_table').DataTable().destroy();
	 $('#id_table').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
			columns:[
				{data: "codigo_cita"},
				{data: "fecha_solicitud_cita"},
				{data: "fecha_programada_cita"},
				{data: "servicio.nombre_servicio"},
				{data: "cliente.nombre_usuario"},
				{data: "mascota.nombre_mascota"},
				{data: "estadocita.nombre_estado_cita"},
				{data: "motivo_cita"},
				{data: function(row, type, val, meta){
					var btnActualizarCita ='<button type="button" class="btn btn-info btn-sm mx-1 btnModal_ActualizaCita" onclick="editar(\'' + row.codigo_cita +
					'\',\'' + row.codigo_estado_cita +
					'\')"><i data-feather="edit-2"></i></button>';
					return btnActualizarCita;
				},className:'text-center'},													
			]                                     
	    });
	 
	// Reload icons
	    feather.replace();
	 	
	 	$('#id_table').DataTable().columns.adjust().draw();
}

function editar(id,nombre,estado,idPais){	
	$('#id_cita_actualiza').val(codigo_cita);
	$('#id_estado_actualiza').val(codigo_estado_cita);
	$('#id_modal_ActualizaCita').modal("show");
}

$("#actualizar_cita").click(function(){
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    
    if (validator.isValid()){
    	
        $.ajax({
            type: "POST",
            url: "actualizaEstadoCita", 
            data: $('#id_form_actualiza').serialize(),
            success: function(data){
          	  agregarGrilla(data.lista);
          	  $('#id_modal_ActualizaCita').modal("hide");
          	  mostrarMensaje(data.MENSAJE);
          	  validator.resetForm();
            },
            error: function(){
          	  mostrarMensaje(MSG_ERROR);
            }
          });
    }   
});

<script type="text/javascript">
$('#id_form_actualiza').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	
        "estado": {
    		selector : '#id_estado_actualiza',
            validators: {
            	notEmpty: {
                    message: 'El estado un campo obligatorio'
                },
            }
        },
    }   
});

</script>   		
</body>
</html>