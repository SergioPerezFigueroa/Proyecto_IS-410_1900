<?php 
//Trae los datos de html
include_once 'config.php';
include_once 'conexion.php';
include_once 'certificado.php';
include_once 'RepositorioCertificado.php';
include_once 'ValidadorRegistro.php';

Conexion::abrirConexion();

$validador = new ValidadorRegistro($_POST['Estudiante'], $_POST['Curso'], ($_POST['Registro']), Conexion::obtenerConexion());

if ($validador->RegistroValido()) {
	# code...

	$Certificado = new Certificado($validador->obtenerEstudiante(), $validador->obtenerNumeroDeRegisto(), $validador->obtenerCurso());

	$insertarCertificado= RepositorioCertificado::insertarCertificado(Conexion::obtenerConexion(), $Certificado);

	if ($insertarCertificado) {
		# code...
		echo "insertado";
	}
	else{
		echo 'no insertado';
	}
}
else{



	$error = array(
		'errorEstudiante' => $validador->obtenerErrorEstudiante(),
		'errorCurso'  => $validador->obtenerErrorCurso(),
		'errorRegistro'  => $validador->obtenerErrorRegistro(),
		
	);

	echo json_encode($error);
}

Conexion::cerrarConexion();

?>