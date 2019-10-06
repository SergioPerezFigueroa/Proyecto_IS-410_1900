<?php


class Persona{
   
  //Propiedades:
    private $Nombre;
    private $Apellido;
    private $IdPersona;
    private $Edad;
    private $Direccion;
    private $Nacionalidad;
    private $Correo;
    private $Password;
    private $Telefono;

    // Metodos

   //Constructor asi se crea un constructor de una clase
    
   function __construct($Nombre, $Apellido, $IdPersona, $Edad, $Direccion, $Nacionalidad, $Correo, $Password, $Telefono) {
       $this->Nombre = $Nombre;
       $this->Apellido = $Apellido;
       $this->IdPersona = $IdPersona;
       $this->Edad = $Edad;
       $this->Direccion = $Direccion;
       $this->Nacionalidad = $Nacionalidad;
       $this->Correo = $Correo;
       $this->Password = $Password;
       $this->Telefono = $Telefono;
   }

   
    
    public function imprimeNombre(){
        echo 'mi nombre es'.$this->getNombre().' '.$this->getApellido();
        
    }


    //metodos getters
    function getNombre() {
        return $this->Nombre;
    }

    function getApellido() {
        return $this->Apellido;
    }

    function getIdPersona() {
        return $this->IdPersona;
    }

    function getEdad() {
        return $this->Edad;
    }

    function getDireccion() {
        return $this->Direccion;
    }

    function getNacionalidad() {
        return $this->Nacionalidad;
    }

    function getCorreo() {
        return $this->Correo;
    }

    function getPassword() {
        return $this->Password;
    }

    function getTelefono() {
        return $this->Telefono;
    }

    function setNombre($Nombre) {
        $this->Nombre = $Nombre;
    }

    //metodos setters
    function setApellido($Apellido) {
        $this->Apellido = $Apellido;
    }

    function setIdPersona($IdPersona) {
        $this->IdPersona = $IdPersona;
    }

    function setEdad($Edad) {
        $this->Edad = $Edad;
    }

    function setDireccion($Direccion) {
        $this->Direccion = $Direccion;
    }

    function setNacionalidad($Nacionalidad) {
        $this->Nacionalidad = $Nacionalidad;
    }

    function setCorreo($Correo) {
        $this->Correo = $Correo;
    }

    function setPassword($Password) {
        $this->Password = $Password;
    }

    function setTelefono($Telefono) {
        $this->Telefono = $Telefono;
    }


    
} 

?>