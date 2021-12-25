<?php
if(isset($_POST['login'],$_POST['mdp'])){
		$connex=new PDO("mysql:host=localhost:3306;dbname=monsite","root","");
$Rq="SELECT `id_membre`, `login`, `mdp`, `nom`, `sexe`, `email` FROM `admin`
	WHERE  login=:login AND mdp=:mdp";
$stm=$connex->prepare($Rq);
$tab=array("login"=>$_POST["login"],
			"mdp"=>$_POST["mdp"]);
$r=$stm->execute($tab);
$admin=$stm->fetchAll(PDO::FETCH_ASSOC);
var_dump($admin);
//exit;
if(count($admin)==1){
	session_start();
	
	$_SESSION['admin']=$admin[0]['nom'];
	header("location:listaccessoir.php");
}
}

//header("location:login.php");
?>