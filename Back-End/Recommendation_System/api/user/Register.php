<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $user = json_decode( file_get_contents('php://input') );
    $sql = "INSERT INTO student_information(STUDENT_FIRSTNAME, STUDENT_LASTNAME, LRN, EMAIL_ADDRESS, PASSWORD, SHS_TRACK, EXAM_STATUS, ACCOUNT_CREATED, ACCOUNT_STATUS) 
    VALUES(:fname, :lname, :lrn,:email,:password,'', 'Not taken yet', :created_at, 'ACTIVE')";

    $stmt = $conn->prepare($sql);
    $created_at = date('Y-m-d');
    $stmt->bindParam(':fname', $user->FirstName);
    $stmt->bindParam(':lname', $user->LastName);
    $stmt->bindParam(':lrn', $user->LRN);
    $stmt->bindParam(':email', $user->Email);
    $stmt->bindParam(':password', $user->Password);
    $stmt->bindParam(':created_at', $created_at);

    if($stmt->execute()) {
        $response = ['status' => 1, 'message' => 'Record created successfully.'];
    } else {
        $response = ['status' => 0, 'message' => 'Failed to create record.'];
    }
    echo json_encode($response);
    // echo $params['pass'];
?>