<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);
    
    $sub =  $params['SUBJECT'];

    $sql = "SELECT * FROM exam_informations WHERE SUBJECT =  $sub";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode($users);
?>