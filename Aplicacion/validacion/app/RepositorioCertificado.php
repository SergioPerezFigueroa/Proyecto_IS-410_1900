<?php 

class RepositorCertificado{

	public static function insertarCertificado($conexion, $Certificado){

		$CertificadoInsertado = false;

		if (isset($conexion)){

			try{

				$sql = "INSERT INTO validaciones_cursos (nombre_alumno, nombre_curso, codigo_Certificado) values (:Estudiante, :Curso, :Registro)";

				$sentencia = $conexion->prepare($sql);

				$Estudiante = $Certificado->obtenerEstudiante();
				$Curso= $Certificado->obtenerCurso();
				$Registro = $Certificado->obtenerNumeroDeRegistro();
				

				$sentencia->bindParam(':Estudiante', $Estudiante, PDO::PARAM_STR);
				$sentencia->bindParam(':Curso', $Curso, PDO::PARAM_STR);
				$sentencia->bindParam(':Registro', $Registro, PDO::PARAM_STR);
				

				$CertificadoInsertado = $sentencia->execute();

				$CertificadoInsertado = true;

			}
			catch(PDOException $e){
				print "ERROR". $e->getMessage();
			}
		}
		return $usuarioInsertado; //true o false
	}

	public static function obtenerCertificado($Registro, $conexion){

		$Certificado= null;

		if (isset($conexion)) {
			# code...
			try {

				include_once 'Certificado.php';
					
				$sql = "SELECT * FROM validaciones_cursos WHERE = codigo_Certificado:Registro";
				
				$sentencia = $conexion->prepare($sql);
				$sentencia->bindParam(':Registro', $Registro, PDO::PARAM_STR);
				$sentencia->execute();

				$resultado = $sentencia -> fetch();

				if (!empty($resultado)) {
					
					$Certificado = new Certificado($resultado['nombre_alumno'], $resultado['nombre_curso'], $resultado['codigo_Certificado']);
				}

			} catch (PDOException $e) {
				print "ERROR". $e -> getMessage();
				die();
			}
		}

		return $usuario;
	}

	public static function CertificadoExiste($Registro, $conexion){

		$CertificadoExiste = true;

		if(isset($conexion)){

			try{

				$sql = "SELECT * FROM validaciones_cursos WHERE = codigo_Certificado:Registro";

				$sentencia = $conexion->prepare($sql);

				$sentencia->bindParam(':Registro', $Registro, PDO::PARAM_STR);

				$sentencia->execute();

				$resultado = $sentencia->fetchAll();

				if(count($resultado)){
					$CertificadoExiste = true;
				}
				else{
					$CertificadoExiste = false;
				}

			}catch(PDOException $e){
				print "ERROR ". $e->getMessage();
			}

		}

		return $CertificadoExiste;
	}

	
	/*
	
	public static function emailExiste($conexion, $email){

		$emailExiste = true;

		if(isset($conexion)){

			try{

				$sql = "SELECT * FROM usuarios where usu_email = :email";

				$sentencia = $conexion->prepare($sql);

				$sentencia->bindParam(':email', $email, PDO::PARAM_STR);

				$sentencia->execute();

				$resultado = $sentencia->fetchAll();

				if(count($resultado)){
					$emailExiste = true;
				}
				else{
					$emailExiste = false;
				}

			}catch(PDOException $e){
				print "ERROR ". $e->getMessage();
			}

		}

		return $emailExiste;
	}
	*/
}

?>