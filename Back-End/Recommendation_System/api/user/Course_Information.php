<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $sql = "SELECT * FROM course_information";
    // $a = $_SERVER['REQUEST_URI'];
    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);
    // $path = explode('/', $_SERVER['REQUEST_URI']);

        $sql .= " WHERE CID = :course";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':course', $params['CID']);
        // $stmt->bindParam(':pass', $params['pass']);
        $stmt->execute();
        $users = $stmt->fetch(PDO::FETCH_ASSOC);
    
    echo json_encode($users);
    // echo $params['pass'];
?>