<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);
    

        $sql = "UPDATE `student_information` SET `PASSWORD`=:pass WHERE LRN = :lrn";
        $stmt = $conn->prepare($sql);
        $hashpassword = password_hash($params['pass'], PASSWORD_DEFAULT);
        $stmt->bindParam(':lrn', $params['lrn']);
        $stmt->bindParam(':pass', $hashpassword);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);

?>