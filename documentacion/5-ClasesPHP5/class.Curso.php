<?php

error_reporting(E_ALL);

/**
 * modelo sin título - class.Curso.php
 *
 * $Id$
 *
 * This file is part of modelo sin título.
 *
 * Automatically generated on 10.09.2019, 23:00:10 with ArgoUML PHP module 
 * (last revised $Date: 2010-01-12 20:14:42 +0100 (Tue, 12 Jan 2010) $)
 *
 * @author firstname and lastname of author, <author@example.org>
 */

if (0 > version_compare(PHP_VERSION, '5')) {
    die('This file was generated for PHP 5');
}

/**
 * include Administrador
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Administrador.php');

/**
 * include Cliente
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Cliente.php');

/**
 * include Instructor
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Instructor.php');

/* user defined includes */
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008CA-includes begin
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008CA-includes end

/* user defined constants */
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008CA-constants begin
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008CA-constants end

/**
 * Short description of class Curso
 *
 * @access public
 * @author firstname and lastname of author, <author@example.org>
 */
class Curso
{
    // --- ASSOCIATIONS ---
    // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd : 

    // --- ATTRIBUTES ---

    /**
     * Short description of attribute NombreCurso
     *
     * @access public
     * @var String
     */
    public $NombreCurso = null;

    /**
     * Short description of attribute Codigo
     *
     * @access public
     * @var String
     */
    public $Codigo = null;

    /**
     * Short description of attribute Duracion
     *
     * @access public
     * @var date
     */
    public $Duracion = null;

    /**
     * Short description of attribute lugar
     *
     * @access public
     * @var String
     */
    public $lugar = null;

    /**
     * Short description of attribute Instructor
     *
     * @access public
     * @var String
     */
    public $Instructor = null;

    /**
     * Short description of attribute integrantes
     *
     * @access public
     * @var cliente
     */
    public $integrantes = null;

    /**
     * Short description of attribute Modalidad
     *
     * @access public
     * @var String
     */
    public $Modalidad = null;

    /**
     * Short description of attribute NumMaxIntegrantes
     *
     * @access public
     * @var Integer
     */
    public $NumMaxIntegrantes = null;

    // --- OPERATIONS ---

    /**
     * Short description of method GenerarCertificado
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return mixed
     */
    public function GenerarCertificado()
    {
        // section -64--88-1-109--440b6cd:16d0efb5958:-8000:0000000000000A1F begin
        // section -64--88-1-109--440b6cd:16d0efb5958:-8000:0000000000000A1F end
    }

    /**
     * Short description of method VerificarNotas
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return mixed
     */
    public function VerificarNotas()
    {
        // section -64--88-1-109--440b6cd:16d0efb5958:-8000:0000000000000A29 begin
        // section -64--88-1-109--440b6cd:16d0efb5958:-8000:0000000000000A29 end
    }

} /* end of class Curso */

?>