
// Crear e insertar mensaje de error para Selects

function createErrorMessage (element, message, name) {
	
	if($('#'+name+'ErrorMessage').length < 1) {
		const errorMessage = document.createElement('div');
		errorMessage.className = 'invalid-feedback d-block';
		errorMessage.id = name + 'ErrorMessage';
		errorMessage.innerHTML = message;
		element.parent().after(errorMessage);
	}
	
}

// Validar si el Select no tiene una opción esperada

function validateSelect (element, selectedIndex, name) {
	console.log(selectedIndex)
	
	if(selectedIndex === 0 || selectedIndex === undefined) {
		createErrorMessage(element, '* Este campo es obligatorio', name);
	} else {
		if(selectedIndex > 0) {
			$('#'+name+'ErrorMessage').remove();
		}
	}
}