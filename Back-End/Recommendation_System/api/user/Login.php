<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $sql = "SELECT * FROM student_information WHERE LRN = :lrn";

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

        // $sql .= " WHERE LRN = :lrn AND PASSWORD = :pass";
        $curr = $params['pass'];
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':lrn', $params['lrn']);
        // $stmt->bindParam(':pass', $params['pass']);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if(password_verify($curr, $users[0]['PASSWORD'])){
        echo json_encode ($users);
    }else{
        echo json_encode (0);
    }
    // echo password_verify($password, $curr);

?>