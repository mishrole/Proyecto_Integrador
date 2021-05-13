
// Crear e insertar mensaje de error después del elemento indicado

function createErrorMessage (element, message, name) {
	
	if($('#'+name+'ErrorMessage').length < 1) {
		const errorMessage = document.createElement('div');
		errorMessage.className = 'invalid-feedback d-block';
		errorMessage.id = name + 'ErrorMessage';
		errorMessage.innerHTML = message;
		element.parent().after(errorMessage);
	}
	
}

function createInlineErroMessage (element, message, name) {
	
	if($('#'+name+'ErrorMessage').length < 1) {
		const errorMessage = document.createElement('div');
		errorMessage.className = 'invalid-feedback d-block';
		errorMessage.id = name + 'ErrorMessage';
		errorMessage.innerHTML = message;
		element.after(errorMessage);
	}
	
}

// Validar si el Select no tiene una opción esperada

function validateSelect (element, selectedIndex, name) {
	
	if(selectedIndex === 0 || selectedIndex === undefined) {
		createErrorMessage(element, '* Este campo es obligatorio', name);
	} else {
		if(selectedIndex > 0) {
			$('#'+name+'ErrorMessage').remove();
		}
	}
}

// Validar si el Textarea no contiene un mínimo de 3 caracteres

function validateTextarea (element, count, name) {
	
	if(!(count >= 3)) {
		createErrorMessage(element, '* Este campo es obligatorio', name);
	} else if(count > 100) {
		$('#'+name+'ErrorMessage').remove();
		createErrorMessage(element, '* Maximo 100 caracteres', name);
	} else {
		$('#'+name+'ErrorMessage').remove();
	}

}