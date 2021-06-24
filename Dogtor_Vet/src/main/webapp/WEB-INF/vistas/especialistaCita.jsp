
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="Cache-Control" content="private" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>

<title>DOGTOR</title>
</head>
<body>

<div class="container" style="margin-top: 5%"><h4>Lista Citas</h4></div>

<div class="container" style="margin-top: 1%">

	 <div class="col-md-23" >  
	 
				  	
		     
					<div class="row" style="height: 70px">
					
						<div class="col-md-2" >
								<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text"/>
						</div>
						<div class="col-md-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">FILTRA</button>
						</div>
						<div class="col-md-4">
							<button type="button" data-toggle='modal'  data-target="#id_div_modal_registra"  class='btn btn-success' style="width: 150px">REGISTRA</button>
						</div>
					</div>
					
					<div class="row" > 
						<div class="col-md-12" >
								<div class="content" >
						
									<table id="id_table" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th style="width: 10%">Codigo</th>
												<th style="width: 10%">Fecha Solicitud</th>
												<th style="width: 10%">Fecha Programada</th>
												<th style="width: 10%">Codigo Servicio</th>
												<th style="width: 10%">Codigo Propietario</th>
												<th style="width: 10%">Codigo Mascota</th>
												<th style="width: 10%">Estado Cita</th>
												<th style="width: 10%">Motivo</th>
												<th style="width: 10%">Actualiza</th>
												<th style="width: 10%">Elimina </th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>	
									
								</div>	
						</div>
					</div>
		  </div>
		  
		  <!-- MODAL DE REGISTRAR -->
		  
		  <div class="modal fade" id="id_div_modal_registra" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de Producto</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraCrudProducto" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos del Producto</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre del producto" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_serie">Serie</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_serie" name="serie" placeholder="Ingrese la serie" type="text" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_precio">Precio</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_precio" name="precio" placeholder="Ingrese el precio '0.00'" type="text" />
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_stock">Stock</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_stock" name="stock" placeholder="Ingrese el Stock" type="text" />
		                                        </div>
		                                    </div>        
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_marca">Marca</label>
		                                        <div class="col-lg-5">
			                                         <select id="id_reg_marca" name="marca" class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div> 
											<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_pais">País</label>
		                                        <div class="col-lg-5">
			                                         <select id="id_reg_pais" name="pais" class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div> 
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRAR</button>
		                                        	<button type="button" class="btn btn-danger" id="id_btn_reg_cancelar">CANCELAR</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
		
		
		<!-- MODAL DE ACTUALIZAR -->
		
		
			 <div class="modal fade" id="id_div_modal_actualiza" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Producto</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudProducto" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos del Producto</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-5">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idProducto" type="text" maxlength="8"/>
		                                        </div>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_nombre">Nombre</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre del producto" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_serie">Serie</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_serie" name="serie" placeholder="Ingrese la serie" type="text" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_precio">Precio</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_precio" name="precio" placeholder="Ingrese el precio '0.00'" type="text" />
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_stock">Stock</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_stock" name="stock" placeholder="Ingrese el Stock" type="text" />
		                                        </div>
		                                    </div>        
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_marca">Marca</label>
		                                        <div class="col-lg-5">
			                                         <select id="id_act_marca" name="marca" class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div> 
											<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_pais">País</label>
		                                        <div class="col-lg-5">
			                                         <select id="id_act_pais" name="pais" class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div> 
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_actualiza">ACTUALIZA</button>
		                                        	<button type="button" class="btn btn-danger" id="id_btn_act_cancelar">CANCELAR</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
		
		
		
		 <div class="modal fade" id="idModalElimina" >
					<div class="modal-dialog" style="width: 60%">
				 	
				 	<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="padding: 35px 50px">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4><span class="glyphicon glyphicon-ok-sign"></span> Eliminar Producto</h4>
						</div>
				
						  <div class="modal-footer">
						    <button type="button" id="idBtnElimina" name="modalDe" class="btn btn-primary">ELIMINAR</button>
						    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						  </div>
					</div>
				</div>
				</div>
		
		
		
		
	
	
</div>

<script type="text/javascript">

//consulta por nombre
$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val();
	$.getJSON("consultaCrudProducto",{"filtro":fil}, function (lista){
		agregarGrilla(lista);
	});
});



/* Listado de productos en la tabla al cargar la página */
window.onload=function listar(){
	$.getJSON("listaCita", function (listado){
		agregarGrilla(listado);
	});
	
}

//BOTON CANCELAR DEL REGISTRAR(LIMPIAR VALIDACION Y CAMPOS)
$("#id_btn_reg_cancelar").click(function(){
	var validator = $('#id_form_registra').data('bootstrapValidator');
    
    limpiarFormulario();
	validator.resetForm();
    
    $('#id_div_modal_registra').modal("hide");
});


//limpia validaciones al cerrar modal de editar
$("#id_btn_act_cancelar").click(function(){
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
  
	validator.resetForm();
  
  $('#id_div_modal_actualiza').modal("hide");
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
				{data: "codigo_servicio"},
				{data: "codigo_propietario"},
				{data: "codigo_mascota"},
				{data: "codigo_estado_cita"},
				{data: "motivo_cita"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.codigo_cita + '\',\'' + row.fecha_solicitud_cita +'\',\'' + row.fecha_programada_cita  + '\',\'' + row.codigo_servicio + '\',\'' + row.codigo_propietario + '\',\'' + row.codigo_mascota + '\',\'' + row.codigo_estado_cita + '\',\'' + row.motivo_cita + '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.codigo_cita + '\')">Eliminar</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
}

/*limpiar el formulario*/

function limpiarFormulario(){	
		$('#id_reg_nombre').val('');
		$('#id_reg_serie').val('');
		$('#id_reg_precio').val('');
		$('#id_reg_stock').val('');
		$('#id_reg_marca').val(' ');
		$('#id_reg_pais').val(' ');
	}



 /*registrar*/
$("#id_btn_registra").click(function(){
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();
	    
	    if (validator.isValid()){
	    	
	    	   $.ajax({
	    	          type: "POST",
	    	          url: "registraCrudProducto", 
	    	          data: $('#id_form_registra').serialize(),
	    	          success: function(data){
	    	        	  agregarGrilla(data.lista);
	    	        	  $('#id_div_modal_registra').modal("hide");
	    	        	  mostrarMensaje(data.MENSAJE);
	    	        	  limpiarFormulario();
	    	        	  validator.resetForm();
	    	        	  
	    	          },
	    	          error: function(){
	    	        	  mostrarMensaje(MSG_ERROR);
	    	          }
	    	        });
	    }
	
        
});
 



/*actualizar*/


function editar(id,nombre,serie,precio, stock,idMarca,idPais){	
		$('#id_ID').val(id);
		$('#id_act_nombre').val(nombre);
		$('#id_act_serie').val(serie);
		$('#id_act_precio').val(precio);
		$('#id_act_stock').val(stock);
		$('#id_act_marca').val(idMarca);
		$('#id_act_pais').val(idPais);
		$('#id_div_modal_actualiza').modal("show");
	}



$("#id_btn_actualiza").click(function(){
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    
    if (validator.isValid()){
    	
        $.ajax({
            type: "POST",
            url: "actualizaCrudProducto", 
            data: $('#id_form_actualiza').serialize(),
            success: function(data){
          	  agregarGrilla(data.lista);
          	  $('#id_div_modal_actualiza').modal("hide");
          	  mostrarMensaje(data.MENSAJE);
          	  validator.resetForm();
            },
            error: function(){
          	  mostrarMensaje(MSG_ERROR);
            }
          });
    }
    
    
        
});


/*eliminar*/
 
 function eliminar(id){	
		mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
	}
	
	function accionEliminar(id){	
	    $.ajax({
	          type: "POST",
	          url: "eliminaCrudProducto", 
	          data: {"id":id},
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  mostrarMensaje(data.MENSAJE);
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	     });
	}
	
	
	
	
	$('#id_div_modal_registra').on('hide.bs.modal', function (e) {
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();
		
	    validator.resetForm();
		limpiarFormulario();
		
	});
	
	
	$('#id_div_modal_actualiza').on('hide.bs.modal', function (e) {
		var validator = $('#id_form_actualiza').data('bootstrapValidator');
	    validator.validate();
		
	    validator.resetForm();
		limpiarFormulario();
		
	});
	
	
	
	
	
	$('#id_form_registra').bootstrapValidator({
	    message: 'This value is not valid',
	    feedbackIcons: {
	        valid: 'glyphicon glyphicon-ok',
	        invalid: 'glyphicon glyphicon-remove',
	        validating: 'glyphicon glyphicon-refresh'
	    },
	    fields: {
	    	nombre: {
	    		selector : '#id_reg_nombre',
	            validators: {
	                notEmpty: {
	                    message: 'El nombre es un campo obligatorio'
	                },
	                stringLength :{
	                	message:'El nombre es de 5 a 200 caracteres',
	                	min : 3,
	                	max : 200
	                }
	            }
	        },
	       serie: {
		    	selector:'#id_reg_serie',   
		    		validators: {
		                notEmpty: {
		                    message: 'la serie es un campo obligatorio'
		                },
		                stringLength :{
		                	message:'El nombre es de 3 a 8 caracteres',
		                	min : 3,
		                	max : 8
		                }
		            } 
	         },   
	        precio: {
		    	selector:'#id_reg_precio',      
	              validators: {    
	                  notEmpty: {    
	                      message: 'Ingrese precio'    
	                  },  
	                  regexp: {
	                	  regexp: /^([0-9]+([.][0-9]{1,2})?)$/,    
	                      message: 'Ingrese números enteros o decimales'    
	                  }, 
	              }    
	          }, 
	        stock: {
		    	selector:'#id_reg_stock',       
	             validators: {    
	             	notEmpty: {    
	                     message: 'Ingrese stock'    
	                 },
						digits: {
                 		message:"Ingrese solo números enteros"
               		},
	             }    
	         },
	        marca: {
	    		selector : '#id_reg_marca',
	            validators: {
	                notEmpty: {
	                    message: 'La marca es un campo obligatorio'
	                },

	            }
	        },
	        pais: {
	    		selector : '#id_reg_pais',
	            validators: {
	            	notEmpty: {
	                    message: 'El país es un campo obligatorio'
	                },
	            }
	        },
	    	
	    }   
	});
	
	
	$('#id_form_actualiza').bootstrapValidator({
	    message: 'This value is not valid',
	    feedbackIcons: {
	        valid: 'glyphicon glyphicon-ok',
	        invalid: 'glyphicon glyphicon-remove',
	        validating: 'glyphicon glyphicon-refresh'
	    },
	    fields: {
	    	nombre: {
	    		selector : '#id_act_nombre',
	            validators: {
	                notEmpty: {
	                    message: 'El nombre es un campo obligatorio'
	                },
	                stringLength :{
	                	message:'El nombre es de 5 a 200 caracteres',
	                	min : 3,
	                	max : 200
	                }
	            }
	        },
	       serie: {
		    	selector:'#id_act_serie',   
		    		validators: {
		                notEmpty: {
		                    message: 'la serie es un campo obligatorio'
		                },
		                stringLength :{
		                	message:'El nombre es de 3 a 8 caracteres',
		                	min : 3,
		                	max : 8
		                }
		            } 
	         },   
	        precio: {
		    	selector:'#id_act_precio',      
	              validators: {    
	                  notEmpty: {    
	                      message: 'Ingrese precio'    
	                  },
	                  regexp: {
	                	  regexp: /^([0-9]+([.][0-9]{1,2})?)$/,    
	                      message: 'Ingrese números enteros o decimales'    
	                  },
	              }    
	          }, 
	        stock: {
		    	selector:'#id_act_stock',       
	             validators: {    
	             	notEmpty: {    
	                     message: 'Ingrese stock'    
	                 },      
	                 digits: {
	                 		message:"Ingrese solo números enteros"
	               		},    
	             }    
	         },
	        marca: {
	    		selector : '#id_act_marca',
	            validators: {
	                notEmpty: {
	                    message: 'La marca es un campo obligatorio'
	                },

	            }
	        },
	        pais: {
	    		selector : '#id_act_pais',
	            validators: {
	            	notEmpty: {
	                    message: 'El país es un campo obligatorio'
	                },
	            }
	        },
	    	
	    }   
	});



</script>   		
</body>
</html>