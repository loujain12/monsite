<?php 


function insertion($id,$ref,$cat,$nom,$img,$desc,$prix,$stock)         

{

if(require("connbd.php"))
{
		$rq="INSERT INTO `produit`(`id_produit`, `reference`, `nom_produit`, `image`, `description`, `prix`, `stock`) VALUES 
		(:id,:ref,:nom,:img,:desc,:prix,:stock)";
	$stm=$connex->prepare($rq);
	$tab=array("reference"=>$_POST["reference"],"nom"=>$_POST["nom_produit"],
	"image"=>$_POST["image"],"description"=>$_POST["description"],
	"prix"=>$_POST["prix"],"stock"=>$_POST["stock"]);
	$r=$stm->execute($tab);
	$r->closeCursor();
}
}

function afficher()
{
	if(require("connbd.php"))
{
	$rq="select * from produit ORDER BY id DESC";
	$stm=$connex->prepare($rq);

	$r=$stm->execute();
	$data=$r->fetchAll(PDO::FETCH_OBJ);
	return $data;
	$req->closeCursor();  
}
}

function supprimer($id)
{
	if(require("connbd.php"))
	{
		
		$rq="delete * from produits where id=?";
	$stm=$connex->prepare($rq);
	$tab=array("id"=>$_GET["id"]);
$r=$stm->execute($tab);
$r->closeCursor();
	}
}







?>