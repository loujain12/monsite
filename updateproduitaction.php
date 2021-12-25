<?php
if(!isset([$_POST["nom_produit"]]))
	header("location:listaccessoir.php");
$connex=new PDO("mysql:host=localhost:3306;dbname=monsite","root","");
$Rq=("UPDATE `produit` SET `nom_produit`=:nom_produit,
						`image`=:image,
						`description`=:description,
						`prix`=:prix,
						`stock`=:stock
	WHERE `id`=:id");
$stm=$connex->prepare($Rq);
$tab=array("id"=>$_POST['id'],
			"nom_produit"=>$_POST['nom_produit'],
			"image"=>$_POST['image'],
			"description"=>$_POST['description'],
			"prix"=>$_POST['prix']),
			"stock"=>$_POST['stock']);
$result=$stm->execute($tab);
if($result)
	header("location:listaccessoir.php?message=modification effectuer avec succes");
else
	header("location:listaccessoir.php?message".$stm->errorInfo()[2]);

?>