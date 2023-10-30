<div class="d-flex justify-content-center ">

	<form class="p-5 bg-light" method="post">
		<div class="form-group">
			<label for="nombre">Nombre y Apellido:</label>
			<div class="input-group">

				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fas fa-user"></i>
					</span>
				</div>

				<input type="text" class="form-control" id="nombre" name="registroNombre" required>

			</div>
		</div>

		<div class="form-group">
			<label for="alias">Alias:</label>
			<div class="input-group">

				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fas fa-user"></i>
					</span>
				</div>

				<input type="text" class="form-control" id="alias" name="registroAlias" required>

			</div>
		</div>

		<div class="form-group">
			<label for="rut">Rut:</label>
			<div class="input-group">

				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fas fa-address-card"></i>
					</span>
				</div>

				<input type="text" class="form-control" id="rut" name="registroRut" required>

			</div>

		</div>

		<div class="form-group">

			<label for="email">Email:</label>

			<div class="input-group">

				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fas fa-envelope"></i>
					</span>
				</div>

				<input type="email" class="form-control" id="email" name="registroEmail" required>

			</div>

		</div>

		<div class="form-group">
			<label for="id_region">Región:</label>
			<div class="input-group">

				<div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fas fa-map"></i>
					</span>
				</div>

				<select class="custom-select" id="selectregionesid" name="registroRegion"
				onchange="selectregiones()" required>
				<option selected></option>
				<?php
				$regionesdb = ModeloRegion::mdlMostrarRegiones();

				foreach ($regionesdb as $key => $value) {
					echo '<option value="'.$value['id'].'">'.$value['nombre_region'].'</option>';
				}
				?>
			</select>

		</div>
	</div>

	<div class="form-group">
		<label for="id_com">Comuna:</label>
		<div class="input-group">

			<div class="input-group-prepend">
				<span class="input-group-text">
					<i class="fas fa-map"></i>
				</span>
			</div>

			<select class="custom-select" id="selectcomuna" name="registroComuna">
				<option value=""></option>
			</select>

		</div>
	</div>

	<div class="form-group">
		<label for="id_candidato">Candidato:</label>
		<div class="input-group">

			<div class="input-group-prepend">
				<span class="input-group-text">
					<i class="fas fa-user-tie"></i>
				</span>
			</div>

			<select class="custom-select" name="registroCandidato" required>
				<option selected></option>
				<?php
				$candidatosdb = ModeloCandidato::mdlMostrarCandidatos();

				foreach ($candidatosdb as $key => $value) {
					echo '<option value="'.$value['id_candidato'].'">'.$value['nombre_candidato'].'</option>';
				}
				?>
			</select>

		</div>


	</div>

	<div >
		 
		<label for="id_med">Como se enteró de Nosotros:</label></br>
		<div class="form-check-inline">
			<label class="form-check-label">
				<input type="checkbox" name="registroMedio" value="1" > Web <br>
			</label>
		</div>
		

		<div class="form-check-inline">
			<label class="form-check-label">
				<input type="checkbox" name="registroMedio" value="2" >  TV <br>
			</label>
		</div>

		<div class="form-check-inline">
			<label class="form-check-label">
				<input type="checkbox" name="registroMedio" value="3" > Redes Sociales <br>
			</label>
		</div>

		<div class="form-check-inline">
			<label class="form-check-label">
				<input type="checkbox" name="registroMedio" value="4" > Amigo <br>
			</label>
		</div>

	</div>


	<?php 

	$registro = ControladorFormularios::ctrRegistro();

	if($registro == "ok"){

		echo '<script>

		if ( window.history.replaceState ) {

			window.history.replaceState( null, null, window.location.href );

		}

		</script>';

		echo '<div class="alert alert-success">Haz votado exitosamente</div>';
	}
	if($registro == "error"){

		echo '<script>

		if ( window.history.replaceState ) {

			window.history.replaceState( null, null, window.location.href );

		}

		</script>';

		echo '<div class="alert alert-danger">Error, los datos proporcionados no son validos, por favor intentelo nuevamente</div>';

	}

	?>

	<br><button type="submit" id="boton" class="btn btn-primary btn-block">Votar</button></br>


</form>



</div>



