<?php

error_reporting(E_ALL);

/**
 * modelo sin título - class.Cliente.php
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
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:000000000000089F-includes begin
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:000000000000089F-includes end

/* user defined constants */
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:000000000000089F-constants begin
// section -64--88-0-16-39cce6ef:16d03080f9b:-8000:000000000000089F-constants end

/**
 * Short description of class Cliente
 *
 * @access public
 * @author firstname and lastname of author, <author@example.org>
 */
class Cliente
    /* multiple generalisations not supported by PHP: */
    /* extends Persona,
            Persona */
{
    // --- ASSOCIATIONS ---
    // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd : 

    // --- ATTRIBUTES ---

    /**
     * Short description of attribute TipodePago
     *
     * @access public
     * @var boleam
     */
    public $TipodePago = null;

    /**
     * Short description of attribute Identificacion
     *
     * @access public
     * @var String
     */
    public $Identificacion = null;

    // --- OPERATIONS ---

    /**
     * Short description of method setTipodePago
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @param  boleam TipodePago
     * @return mixed
     */
    public function setTipodePago( boleam $TipodePago)
    {
        // section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008A7 begin
        // section -64--88-0-16-39cce6ef:16d03080f9b:-8000:00000000000008A7 end
    }

} /* end of class Cliente */

?>