<?php
    header("content-type: application/json");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: *");

    // Localhost
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "hmp_uas";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
?>