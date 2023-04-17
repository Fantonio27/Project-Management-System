<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();
    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

    $sql="";
    $result = $params['result'];
    if($result == "Entrance Exam Results"){
        $sql .= "SELECT * FROM exam_result";
    }else if ($result == "Interest Assessment Results"){
        $sql .= "SELECT * FROM interest_assessment_result";
    }else if ($result == "OverAll Results"){
        $sql .= "SELECT * FROM overall_result";
    }

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode($users);
    // echo basename($_SERVER['REQUEST_URI'])
?>