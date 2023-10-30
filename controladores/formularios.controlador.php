<?php  

class ControladorFormularios{

/*=============================================
Registro
=============================================*/

static public function ctrRegistro(){

	if(isset($_POST["registroNombre"])){

		if(preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["registroNombre"]) &&
		   preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/', $_POST["registroEmail"]) &&
		   preg_match('/^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{5,}$/', $_POST["registroAlias"]) &&
		   preg_match('/^[0-9]{7,8}-[0-9kK]{1}$/', $_POST["registroRut"])){

			$tabla = "registros";


			$datos = array("nombre" => $_POST["registroNombre"],
				           "alias" => $_POST["registroAlias"],
				           "rut" => $_POST["registroRut"],
				           "email" => $_POST["registroEmail"],
				           "id_region" => $_POST["registroRegion"],
				           "id_com" => $_POST["registroComuna"],
				           "id_cand" => $_POST["registroCandidato"],
				           "id_med" => $_POST["registroMedio"]);


			$respuesta = ModeloFormularios::mdlRegistro($tabla, $datos);

			return $respuesta;

		}else {

			$respuesta = "error";

			return $respuesta;
		}


	}

}


	/*=============================================
	Seleccionar Registros
	=============================================*/

	static public function ctrSeleccionarRegistros($item, $valor){

		$tabla = "registros";

		$respuesta = ModeloFormularios::mdlSeleccionarRegistros($tabla, $item, $valor);

		return $respuesta;

	}

}

























