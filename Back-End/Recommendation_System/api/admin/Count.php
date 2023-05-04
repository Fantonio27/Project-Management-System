<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();
    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

    $table = $params['table'];

    $sql .= "SELECT COUNT(*) AS count FROM $table";

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode($users[0]['count']);
    // echo basename($_SERVER['REQUEST_URI'])
?>