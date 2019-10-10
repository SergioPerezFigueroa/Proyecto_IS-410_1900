<?php

class Validar{

	private $Estudiante;
	private $Curso;
	private $Registro; 



	public function __construct ($Estudiante, $Curso, $Registro){
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
