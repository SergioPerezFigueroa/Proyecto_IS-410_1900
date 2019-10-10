<?php 

include_once 'RepositorioCertificado.php';

class ValidadorRegistro{

	private $Estudiante;
	private $Curso;
	private $Registro;

	private $errorEstudiante;
	private $errorCurso;
	private $errorRegistro;


	public function __construct($Estudiante, $Curso, $Registro, $conexion){

		$this->Estudiante="";
		$this->Curso="";
		$this->Registro="";

		$this->errorEstudiante= $this->validarEstudiante($Estudiante, $conexion);
		$this->errorCurso = $this->validarCurso($Curso, $conexion);
		$this->errorRegistro = $this-> validarRegistro($Registro,$conexion);
		/*
		
		$this->errorPassword2 = $this->validarPassword2($password1, $password2);

		if ($this->errorPassword1==="" && $this->errorPassword2==="") {
			$this->password = $password1;
			 validarRegistro
		}
		*/
	}

	private function variableIniciada($variable){

		if (isset($variable) && !empty($variable)){
			return true;
		}
		else{
			return false;
		}

	}

	private function validarEstudiante($Estudiante, $conexion){

		if(!$this->variableIniciada($Estudiante)){
			return "Ingrese un nombre del Estudiante por favor";
		}
		else{
			$this->Estudiante=$Estudiante;
		}

		if(strlen($Estudiante)<5){
			return "El nombre de usuario debe contener al menos 20 caracteres";
		}

		if(strlen($Estudiante)>50){
			return "El nombre de usuario no debe superar los 50 caracteres";
		}

		/*if(RepositorioCertificado::nombreExiste($conexion, $nombre)){
			return "El nombre ya está en uso, por favor ingrese otro nombre de usuario";
		}
		*/
		return "";
	}

	private function validarCurso($Curso, $conexion){

		if(!$this->variableIniciada($Curso)){
			return "Ingrese un nombre del Estudiante por favor";
		}
		else{
			$this->Curso=$Curso;
		}

		if(strlen($Curso)<5){
			return "El nombre de usuario debe contener al menos 5 caracteres";
		}

		if(strlen($Curso)>50){
			return "El nombre de usuario no debe superar los 50 caracteres";
		}

		/*if(RepositorioCertificado::nombreExiste($conexion, $nombre)){
			return "El nombre ya está en uso, por favor ingrese otro nombre de usuario";
		}
		*/
		return "";
	}


	private function validarRegistro($Registro,$conexion){

		if(!$this->variableIniciada($Registro)){
			return "Ingrese el NO. de Certificado  del estudiante Curso  por favor";
		}
		else{
			$this->Registro=$Registro;
		}

		if(strlen($Registro)<5){
			return "El No. de registro  minimo es de 5 caracteres verificar codigo";
		}
		if(strlen($Registro)>6){
			return "El No. de registro  maximo es de 6 caracteres verificar codigo";
		}

		if(RepositorioCertificado::CertificadoExisite($Registro,$conexion)){
			return "el certificado ya existe ingrese uno nuevo";
		}

		/*if(RepositorioCertificado::nombreExiste($conexion, $nombre)){
			return "El nombre ya está en uso, por favor ingrese otro nombre de usuario";
		}
		*/
		return "";
	}

	

	//GETTERS VARIABLES

	public function obtenerEstudiante(){
		return $this->Registro;
	}

	public function obtenerCurso(){
		return $this->Curso;
	}

	public function obtenerobtenerNumeroDeRegistro(){
		return $this->Registro;
	}

	//GETTERS ERRORES

	public function obtenerErrorEstudiante(){
		return $this->errorEstudiante;
	}

	public function obtenerErrorCurso(){
		return $this->errorCurso;
	}

	public function obtenerErrorRegistro(){
		return $this->obtenerErrorRegistro;
	}

	

	public function RegistroValido(){
		if ($this->errorEstudiante==="" && $this->errorCurso==="" && $this->errorRegistro==="") {
			return true;
		}
		else{
			return false;
		}
	}

}

?>