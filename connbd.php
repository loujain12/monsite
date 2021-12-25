 <?php
try{

$connex=new PDO("mysql:host=localhost:3306;dbname=monsite","root",""); 

}catch (PDOException $e)
{
	die ('erreur'.$e->getmessage());
}
 
 

 
 
 ?>