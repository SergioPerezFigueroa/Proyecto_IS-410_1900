<?php

class Matricula{

	private $$codigo_matricula;
	private $codigo_alumno;
	private $codigo_seccion;
	
	

	public function __construct ($codigo_matriculacodigo_matricula, $codigo_alumno, $codigo_seccion){
		$this->cod_matricula = $codigo_matricula;
		$this->cod_alumno = $codigo_alumno;
		$this->codigo_seccion = $codigo_seccion;
	
	}

	public function obtenerCodigo_matricula(){
		return $this->cod_matricula;
	}

	public function obtenerCodigo_alumno(){
		return $this->cod_alumno;
	}

	public function obtenerCodigo_seccion(){
		return $this->codigo_seccion;
	}


	}

	

}

?>