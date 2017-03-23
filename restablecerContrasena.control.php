<?php

  require_once("libs/template_engine.php");
  require_once("models/registro.model.php");

  function run(){
    $datos= array();
    $datos["mostrarErrores"] = false;
    $datos["errores"] = array();
    $datos["password"]="";
    $datos["txtPasswordCnf"]="";
    $codUsuario=$_GET["usuarioCodigo"];

    if(isset($_POST["btnGuardar"])){
      $password = $_POST["password"];
      $passwordCnf = $_POST["txtPasswordCnf"];

      if($password == $passwordCnf){
        $password=md5($password);

        actualizarRegistro($codUsuario,$password);

        header("Location:index.php?page=usuarios");
        //}
      }else{
        $datos["mostrarErrores"] = true;
        $datos["errores"][]=array("errmsg"=>"Contraseñas no coinciden");
      }
    }
  renderizar("restablecerContrasena",array("usuarioCodigo"=>$codUsuario));
    }
  run();
?>
