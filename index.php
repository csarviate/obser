<?php

require_once "controladores/plantilla.controlador.php";
require_once "controladores/usuarios.controlador.php";
require_once "controladores/coordinador.controlador.php";
require_once "controladores/profesor.controlador.php";
require_once "controladores/alumno.controlador.php";
require_once "controladores/consultas.controlador.php";

require_once "modelos/usuarios.modelo.php";
require_once "modelos/coordinador.modelo.php";
require_once "modelos/profesor.modelo.php";
require_once "modelos/alumno.modelo.php";
require_once "modelos/consultas.modelo.php";

$plantilla = new ControladorPlantilla();
$plantilla -> ctrPlantilla();
