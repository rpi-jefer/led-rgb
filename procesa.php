<?php
$val_rojo=$_POST['val_rojo'];
$val_verde=$_POST['val_verde'];
$val_azul=$_POST['val_azul'];


if($val_rojo<>'')
{
	file_put_contents('red.txt',$val_rojo);
}
if($val_verde<>'')
{
	file_put_contents('green.txt',$val_verde);	
}
if($val_azul<>'')
{
	file_put_contents('blue.txt',$val_azul);	
}
	
?>

