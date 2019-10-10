<?php

class Validar{

	private $Estudiante;
	private $Registro;

	private $Curso;
	



	public function __construct ($Estudiante, $Registro, $Curso){
		$this->Estudiante = $Estudiante;
		$this->Registro = $Registro;
		$this->Curso= $Curso;
	}

	public function obtenerEstudiante(){
		return $this->Estudiante;
	}

	public function obtenerNumeroDeRegistro(){
		return $this->Registro;
	}

	public function obtenerCurso(){
		return $this->Curso;
	}

	

}

?>