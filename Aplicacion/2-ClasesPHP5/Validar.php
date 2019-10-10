<?php

class Validar{

	private $Estudiante;
	private $Registro;
	private $Instructor;
	private $Curso;
	

	public function __construct ($Estudiante, $Registro, $Instructor, $Curso){
		$this->Estudiante = $Estudiante;
		$this->Registro = $Registro;
		$this->Instructor = $Instructor;
		$this->Curso= $Curso;
	}

	public function obtenerEstudiante(){
		return $this->Estudiante;
	}

	public function obtenerNombreRegistro(){
		return $this->Registro;
	}

	public function obtenerInstructor(){
		return $this->Instructor;
	}

	public function obtenerCurso(){
		return $this->Curso;
	}

	

}

?>