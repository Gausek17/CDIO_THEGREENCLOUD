<?php
session_start();
$idCliente = $_SESSION['usuario']['id_cliente'];
$sql = 'SELECT * FROM `usuario` where id_cliente='.$idCliente;
$res = mysqli_query($conexion, $sql);

while ($fila = mysqli_fetch_assoc($res)) {
    array_push($salida, $fila);
}
$http_code = 200;