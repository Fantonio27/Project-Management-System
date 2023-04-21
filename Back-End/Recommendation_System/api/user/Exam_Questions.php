<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);
    $sub =  $params['SUB'];

        $sql = "SELECT * FROM $sub";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchaLL(PDO::FETCH_ASSOC);
    
    echo json_encode($users);
?>