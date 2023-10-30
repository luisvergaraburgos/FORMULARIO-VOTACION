<?php

require_once "../controladores/formularios.controlador.php";
require_once "../modelos/formularios.modelo.php";


$id = $_POST["id"]; 

$comunasdb = ModeloRegion::mdlTraercomunas($id);

foreach ($comunasdb as $key => $value) {
    
    echo '<option value="'.$value["id_comuna"].'">'.$value["nombre_comuna"].'</option>';
}





