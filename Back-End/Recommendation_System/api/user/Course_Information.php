<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

    $fetch =  $params['FETCH'];

    if($fetch === "JOB"){
        $cid =  $params['CID'];
        $sql = "SELECT * FROM course_information_job WHERE CID = $cid";
    }else 
    if($fetch === "'ALLDEP'"){
        $field =  $params['FIELD'];
        $sql = "SELECT * FROM course_information";
    }else if($fetch === "'EACHDEP'"){
        $field =  $params['FIELD'];
        $sql = "SELECT * FROM course_information WHERE FIELD = $field";
    }
    else{
        $cid =  $params['CID'];
        $sql = "SELECT * FROM course_information WHERE CID = $cid";
    }

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($users);

    // echo $params['pass'];
?>