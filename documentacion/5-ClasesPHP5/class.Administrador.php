<?php

error_reporting(E_ALL);

/**
 * modelo sin título - class.Administrador.php
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
 * include Curso
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Curso.php');

/**
 * include Persona
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Persona.php');

/* user defined includes */
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:000000000000089B-includes begin
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:000000000000089B-includes end

/* user defined constants */
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:000000000000089B-constants begin
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:000000000000089B-constants end

/**
 * Short description of class Administrador
 *
 * @access public
 * @author firstname and lastname of author, <author@example.org>
 */
class Administrador
    /* multiple generalisations not supported by PHP: */
    /* extends Persona,
            Persona,
            Persona */
{
    // --- ASSOCIATIONS ---
    // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd : 

    // --- ATTRIBUTES ---

    /**
     * Short description of attribute NombreCurso
     *
     * @access public
     * @var String
     */
    public $NombreCurso = null;

    /**
     * Short description of attribute Instructor
     *
     * @access public
     * @var Instructor
     */
    public $Instructor = null;

    /**
     * Short description of attribute
     *
     * @access public
     * @var Integer
     */
    public $ = null;

    // --- OPERATIONS ---

    /**
     * Short description of method CrearCurso
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return mixed
     */
    public function CrearCurso()
    {
        // section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008B7 begin
        // section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008B7 end
    }

    /**
     * Short description of method EliminarCurso
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return mixed
     */
    public function EliminarCurso()
    {
        // section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008B9 begin
        // section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008B9 end
    }

    /**
     * Short description of method ModificarCurso
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return mixed
     */
    public function ModificarCurso()
    {
        // section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008BB begin
        // section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008BB end
    }

} /* end of class Administrador */

?>