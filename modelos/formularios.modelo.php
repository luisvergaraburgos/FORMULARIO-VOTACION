<?php

require_once "Conexion.php";

class ModeloFormularios{

	/*=============================================
	Registro
	=============================================*/

	static public function mdlRegistro($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(nombre, alias, rut, email, id_region, id_com, id_cand, id_med) VALUES (:nombre, :alias, :rut, :email, :id_region, :id_com, :id_cand, :id_med)");

		$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":alias", $datos["alias"], PDO::PARAM_STR);
		$stmt->bindParam(":rut", $datos["rut"], PDO::PARAM_STR);
		$stmt->bindParam(":email", $datos["email"], PDO::PARAM_STR);
		$stmt->bindParam(":id_region", $datos["id_region"], PDO::PARAM_STR);
		$stmt->bindParam(":id_com", $datos["id_com"], PDO::PARAM_STR);
		$stmt->bindParam(":id_cand", $datos["id_cand"], PDO::PARAM_STR);
		$stmt->bindParam(":id_med", $datos["id_med"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			print_r(Conexion::conectar()->errorInfo());

		}

		$stmt->close();

		$stmt = null;	

	}

	/*=============================================
	Seleccionar Registros
	=============================================*/

	static public function mdlSeleccionarRegistros($tabla, $item, $valor){

		if($item == null && $valor == null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ");

			$stmt->execute();

			return $stmt -> fetchAll();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

			$stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt->execute();

			return $stmt -> fetch();
		}

		$stmt->close();

		$stmt = null;	

	}



}



class ModeloRegion {

	static public function mdlMostrarRegiones(){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM region");

		$stmt -> execute();

		return $stmt->fetchAll();

		$stmt->close();

		$stmt -> null;
	}



	static public function mdlTraerComunas($id_region){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM comuna WHERE id_region = $id_region");

		$stmt -> execute();

		return $stmt->fetchAll();

		$stmt->close();

		$stmt -> null;
	}
}

class ModeloCandidato {

	static public function mdlMostrarCandidatos(){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM candidatos");

		$stmt -> execute();

		return $stmt->fetchAll();

		$stmt->close();

		$stmt -> null;
	}
}

class ModeloMedio {

	static public function mdlSeleccionarMedio(){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM medio");

		$stmt -> execute();

		return $stmt->fetchAll();

		$stmt->close();

		$stmt -> null;
	}
}

