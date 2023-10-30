function selectregiones(){

	var id_region = $("#selectregionesid").val();

	$.ajax({
		url: "ajax/select.ajax.php",
		method: "POST",
		data: {
			"id": id_region
		},
		success: function(respuesta){

			$("#selectcomuna").html(respuesta);
		}
	})
}

