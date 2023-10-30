<?php  

require_once "../controladores/formularios.controlador.php";
require_once "../modelos/formularios.modelo.php";

/*=============================================
Clase de AJAX
=============================================*/

class AjaxFormularios{

    /*=============================================
    VALIDAR RUT EXISTENTE
    =============================================*/ 
    public $validarRut;

    public function ajaxValidarRut(){

        $item = "rut";
        $valor = $this->validarRut;

        $respuesta = ControladorFormularios::ctrSeleccionarRegistros($item, $valor);
        echo json_encode($respuesta); 
        
        
    }
}

/*=============================================
Objeto de AJAX que recibe la variable POST
=============================================*/

if(isset($_POST["validarRut"])){

    $valRut = new AjaxFormularios();
    $valRut -> validarRut = $_POST["validarRut"];
    $valRut -> ajaxValidarRut();
    
}


