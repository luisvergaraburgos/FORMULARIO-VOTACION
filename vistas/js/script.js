$("#rut").change(function(){

	$(".alert").remove();

	var rut = $(this).val();

	var datos = new FormData();
	datos.append("validarRut", rut);

	$.ajax({

		url: "ajax/formularios.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success:function(respuesta){


			if(respuesta){

				$("#rut").val("");

				$("#rut").parent().after(`

					<div class="alert alert-warning">

					<b>ERROR:</b>

					Ya se gestiono un voto correspondiente a este RUT, gracias.
					</div>


					`);

			}
		}

	});


})



