<?php 
//Trae los datos de html
include_once 'config.php';
include_once 'conexion.php';
include_once 'certificado.php';
include_once 'Repositorioertificado.php';
include_once 'ValidadorRegistro.php';

Conexion::abrirConexion();

$validador = new ValidadorRegistro($_POST['Estudiante'], $_POST['Registro'], ($_POST['Curso']), Conexion::obtenerConexion());

if ($validador->RegistroValido()) {
	# code...

	$Registro = new Usuario('', $validador->obtenerEstudiante(), $validador->obtenerNumeroDeRegisto(), $validador->obtenerCurso(), '1');

	$insertar_Certificado= RepositorioCertificado::insertarRegistro(Conexion::obtenerConexion(), $Registro);

	if ($insertar_Certificado) {
		# code...
		echo "insertado";
	}
	else{
		echo 'no insertado';
	}
}
else{

	$error = array(
		'errorNombre' => $validador->obtenerErrorNombre(),
		'errorEmail'  => $validador->obtenerErrorEmail(),
		'errorP1'  => $validador->obtenerErrorPassword1(),
		'errorP2'  => $validador->obtenerErrorPassword2()
	);

	echo json_encode($error);
}

Conexion::cerrarConexion();

?>