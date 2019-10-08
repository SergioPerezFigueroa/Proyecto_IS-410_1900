<?php 

    class Alumno(){
        private $idpersona;
        private $nombre;
        private $apellido;
        private $pais;
        private $email;
        private $edad;
        private $sexo;
        private $telefono;
        private $direccion;        
        private $idalumno;
        private $empresa;



    public function __construct(
        $idpersona,
        $nombre,
        $apellido,
        $pais,
        $email,
        $edad,
        $sexo,
        $telefono,
        $direccion,
        $idalumno,
        $empresa
    ){
        $this->idpersona = $idpersona;
        $this->nombre = $nombre;
        $this->apellido = $apellido;
        $this->pais = $pais;
        $this->email = $email;
        $this->edad = $edad;
        $this->sexo = $sexo;
        $this->telefono = $telefono;
        $this->direccion = $direccion;
        $this->idalumno = $idalumno;
        $this->empresa = $empresa;
    }


    
    public function getidpersona(){
        return $this->idpersona;
    }

    public function getnombre(){
        return $this->nombre;
    }

    public function getapellido(){
        return $this->apellido;
    }

    public function getpais(){
        return $this->pais;
    }

    public function getemail(){
        return $this->email;
    }

    public function getedad(){
        return $this->edad;
    }

    public function getsexo(){
        return $this->sexo;
    }

    public function gettelefono(){
        return $this->telefono;
    }

    public function getdireccion(){
        return $this->direccion;
    }

    public function getidalumno(){
        return $this->idalumno;
    }

    public function getempresa(){
        return $this->empresa;
    }
    


        










    }








?>