<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();
    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

    $lrn = $params['LRN'];
    $sql = "SELECT * FROM `student_information` WHERE LRN = ";
    $stmt = $conn->prepare($sql);

    $stmt->execute();
    if($stmt->execute()) {
        $response = ['status' => 1, 'message' => 'Record created successfully.'];
    } else {
        $response = ['status' => 0, 'message' => 'Failed to create record.'];
    }
    
    echo json_encode($response);
    // echo basename($_SERVER['REQUEST_URI'])
    
?>