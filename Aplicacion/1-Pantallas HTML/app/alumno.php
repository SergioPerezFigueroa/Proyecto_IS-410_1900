<?php 

class GestionAlumno {

	public static function insertarAlumno($conexion, $alumno){

		$usuarioInsertado = false;

		if (isset($conexion)){

			try{

				$sql = "INSERT INTO usuarios (idpersona, nombre, apellido, pais, email, edad, sexo, telefono, direccion, idalumno, empresa) values (:idpersona, :nombre, :apellido, :pais, :email, :edad, :sexo, :telefono, :direccion, :idalumno, :empresa)";

				$sentencia = $conexion->prepare($sql);

				$idpersona = $alumno->getidpersona();
				$nombre = $alumno->getnombre();
				$apellido = $alumno->getapellido();
                $pais = $alumno->getpais();
                $email = $alumno->getemail();
				$edad = $alumno->getedad();
				$sexo = $alumno->getsexo();
                $telefono = $alumno->gettelefono();
                $direccion = $alumno->getdireccion();
				$idalumno = $alumno->getidalumno();
				$empresa = $alumno->getempresa();
				

				$sentencia->bindParam(':idpersona', $idpersona, PDO::PARAM_STR);
				$sentencia->bindParam(':nombre', $nombre, PDO::PARAM_STR);
				$sentencia->bindParam(':apellido', $apellido, PDO::PARAM_STR);
                $sentencia->bindParam(':pais', $pais, PDO::PARAM_STR);
                $sentencia->bindParam(':email', $email, PDO::PARAM_STR);
                $sentencia->bindParam(':edad', $edad, PDO::PARAM_STR);
                $sentencia->bindParam(':sexo', $sexo, PDO::PARAM_STR);
                $sentencia->bindParam(':telefono', $telefono, PDO::PARAM_STR);
                $sentencia->bindParam(':direccion', $direccion, PDO::PARAM_STR);
                $sentencia->bindParam(':idalumno', $idalumno, PDO::PARAM_STR);
                $sentencia->bindParam(':empresa', $empresa, PDO::PARAM_STR);
                

				$usuarioInsertado = $sentencia->execute();

				$usuarioInsertado = true;

			}
			catch(PDOException $e){
				print "ERROR". $e->getMessage();
			}
		}
		return $usuarioInsertado; //true o false
	}

?>