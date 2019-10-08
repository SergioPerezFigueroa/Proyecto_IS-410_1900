<?php
class ValidarUsuario{
    private $usuario;
    private $error;


    public function __construct($Certificado, $conexion)


    $error="";
    if(!$this->variable_inicializada($Certificado)){

        $this->usuario= null; 
        $this->eror= "sus datos ingresados no son correctos";

    }else {
        $this->usuario= RepositorioUsuario::obtenercertificado($Certificado,$conexion);

    }

    //variables contiene datos 
    private function variable_inicializada($variable){
        if(isset($variable && empty($variable))){
        return false 
        }else{
            return true ; 
        }
        
    } 


}



?>