<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

    $lrn =  $params['LRN'];

    $sql = "SELECT * FROM overall_result WHERE LRN = $lrn";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode($users);
?>