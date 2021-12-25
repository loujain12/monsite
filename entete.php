<?php
session_start();
if(!isset($_SESSION["admin"])){
	header("location:login.php");
}
?>

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<ul class="nav">
	<li><img src="image/phenix.jpg" class="image1"></li>
	<li class="nav-item"> <a class="nav-link" href="index.html">home</a></li>
		<li class="nav-item"> <a class="nav-link" href="tel.html">accessoire telephonie</a></li>
		<li class="nav-item"> <a class="nav-link" href="pc.html">accessoire pc</a></li>
		<li class="nav-item"> <a class="nav-link" href="listaccessoir.php">panier</a></li>
		<li class="nav-item"> <a class="nav-link" href="logout.php">Logout <?=$_SESSION['admin']?></a></li>

	</ul>
