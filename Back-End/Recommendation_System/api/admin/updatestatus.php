<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $sql = "UPDATE `student_information` SET `ACCOUNT_STATUS`=:val WHERE LRN = :lrn";

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':lrn', $params['lrn']);
        $stmt->bindParam(':val', $params['val']);
        $stmt->execute();
        $users = $stmt->fetch(PDO::FETCH_ASSOC);

    // if(password_verify($curr, $users[0]['PASSWORD'])){
    //     echo json_encode ($users);
    // }else{
    //     echo json_encode (0);
    // }
    echo json_encode($users);

?>