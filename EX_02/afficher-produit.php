<?php
function connect_to_database(){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $databasename = "basetest01";

    try{
        $pdo=new PDO("mysql:host=$servername;dbname=$databasename", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        echo "Vous êtes connectés à la base de données !";
        return $pdo;
    }
    catch(PDOException $e){
        echo "Vous n'êtes pas connectés: " .$e->getMessage();
    }
}


$pdo = connect_to_database();

$query=$pdo->query("SELECT * FROM `produit`")->fetchAll();

echo '<ul>';
foreach($query as $user){
    echo '<li>'.$user['nom'].'</li>';
}
echo '</ul>';

?>