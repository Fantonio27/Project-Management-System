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
    
        $fetch =  $params['FETCH'];
        
        if($fetch === "'ALL'"){
            $sql = "SELECT * FROM ia_questions";
        }else if($fetch === "'EACH'"){
            $id =  $params['ID'];
            $sql = "SELECT * FROM ia_questions WHERE IAQID = $id";
        }

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode($users);
        
        // if($users.length)
        break;
    case "POST":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "INSERT INTO `ia_questions`(`IAQID`, `QUESTION`, `HIP`, `IAIID`) VALUES (:id,:question,:hip,'')";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->IAQID);
        $stmt->bindParam(':question', $user->QUESTION);
        $stmt->bindParam(':hip', $user->HIP);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);
        break;
    case "PUT":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "UPDATE `ia_questions` SET `QUESTION`=:question,`HIP`=:hip WHERE IAQID = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->IAQID);
        $stmt->bindParam(':question', $user->QUESTION);
        $stmt->bindParam(':hip', $user->HIP);

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
    
        $sql = "DELETE FROM ia_questions WHERE IAQID = $id";

        $stmt = $conn->prepare($sql);

        if($stmt->execute()) {
            $response = true;
        } else {
            $response = false;
        }
        echo json_encode($response);
        break;
}
?>