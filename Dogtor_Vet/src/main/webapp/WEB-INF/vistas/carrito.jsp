<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<div id="carrito" class="cart__body" style="z-index: 10">
	<div class="card">
		<div class="card-body">
			<table class="table table-sm" id="id_table_carrito">
				<thead>
			    <tr>
			      <th scope="col"></th>
			      <th scope="col"></th>
			      <th scope="col"></th>
			      <th scope="col"></th>
			    </tr>
			  </thead>
			  <tbody class="background__title">
			  </tbody>
			</table>
		</div>
		<div class="card-footer text-end">
			<div class="row justify-content-between">
				<div id="id_table_total"></div>
				<button id="btnComprarAhora" class="btn btn__primary">Comprar ahora</button>
			</div>
			
		</div>
	</div>
</div>

<script type="text/javascript">
	var usuarioCarrito = ${sessionScope.objUsuario.codigo_usuario};
	
	$('#btnComprarAhora').click(function() {
	   window.location = '/cart'; 
	});
	
	function listaCarritoPorUsuario(usuario) {
	    
	    $("#id_table_carrito tbody").empty();
        $('#id_table_total').empty();
	    
        $.getJSON("listaCarritoPorUsuario", {"codigo_usuario" : usuario}, function (lista) {
            
            if(lista.length > 0) {
                $('#btnCart span').addClass('active');
            } else {
                $('#btnCart span').removeClass('active');
                $('#id_table_carrito tbody').append("<p class='text-center font__bolder'>Tu cesta está vacía</p>");
            }

            let totalPagar = 0;
            
            $.each( lista, function( index, value ) {
                
                totalPagar += value.producto.precio_producto * value.cantidad_carrito;
                
                let tr = document.createElement('tr');
                let thFoto = document.createElement('th');
                thFoto.className = "align-middle";
                let foto = document.createElement('img');
                
                let thNombre = document.createElement('th');
                thNombre.className = 'font__regular';
                let nombre = document.createElement('p');
                nombre.className = "m-0";
                nombre.style = 'font-size: 0.9rem; font-weight: 700';
                let cantidad = document.createElement('p');
                cantidad.className = "m-0";
                cantidad.style = 'font-size: 0.8rem';
                
                let thPrecio = document.createElement('th');
                thPrecio.className = 'font__regular primary__color';
                let precio = document.createElement('p');
                precio.className = "m-0";
                precio.style = 'font-size: 0.8rem';
                
                let thEliminar = document.createElement('th');
                let btnEliminar = document.createElement('button');
                btnEliminar.className = 'btn btn__danger';
                btnEliminar.style = 'font-size: 0.7rem';
                btnEliminar.innerHTML = "Eliminar";
                btnEliminar.type = 'button';
                
                foto.className = "img__table--mini";
                foto.alt = value.producto.nombre_producto;
                
                if(value.producto.foto1_producto.length != 0) {
			        foto.src = "data:image/png;base64," + value.producto.foto1_producto;
			    } else {
			        foto.src = "../../images/noimage.png";
			    }
                
                nombre.innerHTML = value.producto.nombre_producto;
                cantidad.innerHTML = "Cantidad: " + value.cantidad_carrito;
                precio.innerHTML = formatter.format(value.producto.precio_producto);
				
                thFoto.append(foto);
                thNombre.append(nombre, cantidad);
                thPrecio.append(precio);
                thEliminar.append(btnEliminar);
                tr.append(thFoto, thNombre, thPrecio, thEliminar);
                
                btnEliminar.onclick = function() {
                    eliminarProductoCarrito(value.codigo_carrito);
                }
                
                $('#id_table_carrito tbody').append(tr);
			});
            
            $('#id_table_total').append("<p>Subtotal: <span class='font__semibold'>"+formatter.format(totalPagar)+"</span></p>");
        });
    }
	
	function eliminarProductoCarrito(codigo_carrito) {
	    
	    $.ajax({
	        type: "POST",
	        url: "eliminaProductoCarrito",
	        data: {"codigo_carrito": codigo_carrito},
	        success: function(data) {
	            listaCarritoPorUsuario(usuarioCarrito);
	            mostrarMensaje(data.MENSAJE);
	        },
	        error: function() {
	            mostrarMensaje(data.ERROR);
	        }
	    });
	}
	
	$(document).ready(function() {
	    listaCarritoPorUsuario(usuarioCarrito);
	});
	
</script>