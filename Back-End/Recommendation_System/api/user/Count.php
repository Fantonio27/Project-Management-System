<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();
    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

    $sub = $params['SUBJECT'];
    $lrn = $params['LRN'];

    // $sql = "SELECT COUNT(*) AS count FROM save_answer WHERE SUBJECT = $sub AND LRN = $lrn AND VALUE != ''";
    $sql = "SELECT SUBJECT, COUNT(SUBJECT) as count FROM save_answer WHERE LRN = $lrn AND VALUE !='' GROUP BY SUBJECT";

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode($users);
    // echo basename($_SERVER['REQUEST_URI'])
?>