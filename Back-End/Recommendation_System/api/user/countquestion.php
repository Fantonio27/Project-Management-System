<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

    $part = $params['table'];

    if($part === "'Math'"){
        $table = "eq_math";
    }else if($part === "'Science'"){
        $table = "eq_science";
    }else if($part === "'English'"){
        $table = "eq_english";
    }else{
        $table = "eq_reading_comprehension";
    }

    $sql = "SELECT COUNT(*) AS COUNT FROM $table";

        $stmt = $conn->prepare($sql);
        // $stmt->bindParam(':lrn', $params['lrn']);
        $stmt->execute();
        $users = $stmt->fetch(PDO::FETCH_ASSOC);

    // if(password_verify($curr, $users[0]['PASSWORD'])){
    //     echo json_encode ($users);
    // }else{
    //     echo json_encode (0);
    // }
    echo json_encode($users['COUNT']);

?>