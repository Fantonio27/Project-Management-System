<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

$method = $_SERVER['REQUEST_METHOD'];
switch($method) {
    case "GET":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);
    
        $fetch = $params['FETCH'];
        if($fetch === "'SUBJECT'"){
            $sql = "SELECT * FROM exam_informations";
        }else{
            $sql = "SELECT * FROM $fetch";
        }

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($users);
        break;
    case "POST":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "INSERT INTO `course_information`(`CID`, `FIELD`, `ACRONYM`, `COURSE_NAME`, `INFORMATION`, `HEADER_PICTURE`, `IAQID`, `DATE_CREATED`, `DATE_UPDATED`) 
        VALUES (:cid,:field,:acro,:course,:info,:pic,'',:date,:date)";
        $stmt = $conn->prepare($sql);
        $updated_at = date('Y-m-d');
        $stmt->bindParam(':cid', $user->CID);
        $stmt->bindParam(':field', $user->FIELD);
        $stmt->bindParam(':acro', $user->ACRONYM);
        $stmt->bindParam(':course', $user->COURSE_NAME);
        $stmt->bindParam(':info', $user->INFORMATION);
        $stmt->bindParam(':pic', $user->HEADER_PICTURE);
        $stmt->bindParam(':date',  $updated_at);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);
        break;
    case "PUT":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "UPDATE `course_information` 
        SET `FIELD`=:field,`ACRONYM`=:acro,`COURSE_NAME`=:course,`INFORMATION`=:info,`HEADER_PICTURE`=:pic,`DATE_UPDATED`=:updated_at
        WHERE CID= :cid";
        $stmt = $conn->prepare($sql);
        $updated_at = date('Y-m-d');
        $stmt->bindParam(':cid', $user->CID);
        $stmt->bindParam(':field', $user->FIELD);
        $stmt->bindParam(':acro', $user->ACRONYM);
        $stmt->bindParam(':course', $user->COURSE_NAME);
        $stmt->bindParam(':info', $user->INFORMATION);
        $stmt->bindParam(':pic', $user->HEADER_PICTURE);
        $stmt->bindParam(':updated_at', $updated_at);

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

        $sql = "DELETE FROM course_information WHERE cid = $id";
 
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
