<?php

require 'class.Persona.php';

class Cliente extends Persona{
  
    //atributos
    public $id_alumno = null;
    public $empresa= null;

    //metodos
    
    function __construct($Nombre, $Apellido, $IdPersona, $Edad, $Direccion, $Nacionalidad, $Correo, $Password, $Telefono,$id_alumno, $empresa) {
       
       $this->Nombre = $Nombre;
       $this->Apellido = $Apellido;
       $this->IdPersona = $IdPersona;
       $this->Edad = $Edad;
       $this->Direccion = $Direccion;
       $this->Nacionalidad = $Nacionalidad;
       $this->Correo = $Correo;
       $this->Password = $Password;
       $this->Telefono = $Telefono;
       $this->id_alumno = $id_alumno;
       $this->empresa = $empresa;
    }

    
    public function DatosClientes(){
        
    }
            
    
    
    function getId_alumno() {
        return $this->id_alumno;
    }

    function getEmpresa() {
        return $this->empresa;
    }

    function setId_alumno($id_alumno) {
        $this->id_alumno = $id_alumno;
    }

    function setEmpresa($empresa) {
        $this->empresa = $empresa;
    }



}

?>