<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();
    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

    $lrn = $params['LRN'];

    $sql = "INSERT INTO `timelimit`(`TID`, `LRN`, `MATH_MINUTE`, `MATH_SECOND`, `SCIENCE_MINUTE`, `SCIENCE_SECOND`, `ENGLISH_MINUTE`, `ENGLISH_SECOND`, `READING_COMPREHENSION_MINUTE`, `READING_COMPREHENSION_SECOND`) 
    VALUES (null,$lrn,'','','','','','','','')";
    
    $stmt = $conn->prepare($sql);

    if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
    
    echo json_encode($response);
    // echo basename($_SERVER['REQUEST_URI'])
    
?>