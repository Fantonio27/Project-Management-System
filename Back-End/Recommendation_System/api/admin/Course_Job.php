<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    // $sql = "SELECT * FROM course_information";
    // $stmt = $conn->prepare($sql);
    // $stmt->execute();
    // $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // echo json_encode($users);

$method = $_SERVER['REQUEST_METHOD'];
switch($method) {
    case "GET":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);
    
        $cid = $params['cid'];

        $sql = "SELECT * FROM course_information_job WHERE CID = $cid";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        echo json_encode($users);
        break;
    case "POST":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "INSERT INTO `course_information_job`(`CIJID`, `JOB_NAME`, `INFORMATION`, `CID`) 
        VALUES (:id,:jname,:info,:cid)";

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->CIJID);
        $stmt->bindParam(':jname', $user->JOB_NAME);
        $stmt->bindParam(':info', $user->INFORMATION);
        $stmt->bindParam(':cid', $user->CID);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
        break;

    case "PUT":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);
    
        $CID = $params['cid'];

        $user = json_decode( file_get_contents('php://input'));
        $sql = "UPDATE `course_information_job` SET `JOB_NAME`=:name,`INFORMATION`=:info
        WHERE CID = $CID AND CIJID = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->CIJID);
        $stmt->bindParam(':name', $user->JOB_NAME);
        $stmt->bindParam(':info', $user->INFORMATION);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);
        break;

    case "DELETE":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);
    
        $id = $params['id'];
        $sql = "DELETE FROM course_information_job WHERE CID = $id";
 
        $stmt = $conn->prepare($sql);
 
        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record deleted successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to delete record.'];
        }
        echo json_encode($response);
        break;
}

?>
