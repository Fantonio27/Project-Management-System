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
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }else{
            $id = $params['ID'];
            $sql = "SELECT * FROM exam_informations WHERE EID = $id";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetch(PDO::FETCH_ASSOC);
        }

        echo json_encode($users);
        break;
    case "POST":
        break;
    case "PUT":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "UPDATE `exam_informations` SET `INSTRUCTION`=:ins,
        `TIMELIMIT_MINUTE`=:min,`TIMELIMIT_SECOND`=:sec WHERE EID = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->EID);
        $stmt->bindParam(':ins', $user->INSTRUCTION);
        $stmt->bindParam(':min', $user->TIMELIMIT_MINUTE);
        $stmt->bindParam(':sec', $user->TIMELIMIT_SECOND);

        if($stmt->execute()) {
            $response = true;
        } else {
            $response = false;
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
