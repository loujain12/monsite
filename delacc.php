<?php
if(isset($_GET["id"])){
$connex=new PDO("mysql:host=localhost:3306;dbname=monsite","root","");
$rq="delete from produit where id=:id";
$stm=$connex->prepare($rq);
$produit=array("id"=>$_GET["id"]);
$R=$stm->execute($produit);
if($R)//trajaaa
	header("location:listaccessoir.php?Message=supression effectuer avec sucess");
}
?>