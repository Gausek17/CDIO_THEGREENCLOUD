<?php

$sql = "SELECT * FROM medicion WHERE id_parcela='2'";
$res = mysqli_query($conexion, $sql);

while ($fila = mysqli_fetch_assoc($res)) {
    array_push($salida, $fila);
}
$http_code = 200;