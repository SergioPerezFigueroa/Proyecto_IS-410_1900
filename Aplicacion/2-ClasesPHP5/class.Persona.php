<?php

error_reporting(E_ALL);



if (0 > version_compare(PHP_VERSION, '5')) {
    die('This file was generated for PHP 5');
}


class Persona
{
    // --- ASSOCIATIONS ---


    // --- ATTRIBUTES ---

  
    private $Nombre = null;
    private $Apellido = null;
    private $ID = 0;
    private $Edad = null;
    private $Direccion = null;
    private $Nacionalidad = null;
    private $Correo = null;
    private $Password = null;
    private $Telefono = null;

    // --- OPERATIONS ---

   
    public function setNombre( String $Apellido)
    {
        $returnValue = null;
        return $returnValue;
    }

    public function getNombre(){
     
    }
    public function setEdad( String $Edad){
        
    }
    
    public function setApellido( String $Apellido){
        
    }

    public function setCorreo( String $Correo){
       
    }

   
    public function getApellido(){      
    }

   
    public function setID($ID){
     
    }

    public function getID(){
       
    }

  

    public function getCorreo(){
        
    }

    
  

   
    public function getEdad(){
        
    }

   
    public function setNacionalidad(){
      
    }

    
    public function getNacionalidad(){
        
    }

} 

?>