<?php
	if(!isset($_GET['id']))
		header("location:listaccessoir.php");
	$connex=new PDO("mysql:host=localhost:3306;dbname=monsite","root","");
	$rq = "SELECT `id`, `nom_produit`, `image`, `description`, `prix`, `stock`
	FROM `produit`
	where id=:id";
	$r=$connex->prepare($rq);
	$tab=array("id"=>$_GET['id']);
	$r->execute($tab);
	$p=$r->fetchAll();
	if(count($p)==0)
		header("location:listaccessoir.php");
	$produit = $p[0];
	?>
	<form method="POST" action="updateproduitaction.php">
<td><input type="hidden" name="id" value="<?=$produit["id"];?>" /></td>
<table>
	<tr>
		<th>nom_produit</th>
		<td><input type="text" name="nom" value="<?=$produit["nom_produit"];?>" /></td>
	</tr>
	<tr>
		<th>image</th>
		<td><input type="text" name="image" value="<?=$produit["image"];?>"  /></td>
	</tr>
	
	
	<tr>
		<th>Description</th>
		<td>
			<textarea name="description" rows="10" cols="50"><?=$produit["description"];?></textarea>
		</td>
	</tr>
	<tr>
		<th>prix</th>
		<td><input type="text" name="prix" value="<?=$produit["prix"];?>"  /></td>
	</tr>
	<tr>
		<th>stock</th>
		<td><input type="text" name="stock" value="<?=$produit["stock"];?>"  /></td>
	</tr>
	<tr>
		<th></th>
		<td><input type="submit" name="modifier" value="modifier"/></td>
	</tr>
</table>	
</form>