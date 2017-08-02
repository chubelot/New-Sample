<?php

error_reporting( E_ALL ); 

    $host = 'localhost';
    $dbname = 'newdb';
    $username = 'root';
    $password = 'sansan11';


 
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
 
} catch (PDOException $pe) {
    die("Could not connect to the database $dbname :" . $pe->getMessage());
}

?>