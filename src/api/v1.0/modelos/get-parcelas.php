<?php
session_start();
$id_cliente = $_SESSION['usuario']['id_cliente'];
$consulta="SELECT p.id_parcela as id_parcela, p.color as color, p.nombre as nombre, pu.id_usuario 
	FROM permisos_usuarios pu 
    INNER JOIN parcela p 
    	on p.id_parcela = pu.id_parcela
    INNER JOIN campo
    	ON campo.id_campo = p.id_campo
   	WHERE campo.id_cliente = '$id_cliente'";

$res=mysqli_query($conexion,$consulta);

if($res==true){
    while ($fila = mysqli_fetch_assoc($res)) {
        array_push($salida, $fila);
    }
    $http_code= 200;
}else{
    $http_code= 400;
}
