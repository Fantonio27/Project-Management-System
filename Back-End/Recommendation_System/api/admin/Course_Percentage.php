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
    
        $id = $params['cid'];
        $sql = "SELECT * FROM course_percentage WHERE CID = $id";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetch(PDO::FETCH_ASSOC);

        echo json_encode($users);
        break;
    case "POST":
        $user = json_decode( file_get_contents('php://input') );
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);
    
        $id = $params['cid'];

        $sql = "INSERT INTO `course_percentage`(`CPID`, `MATH`, `SCIENCE`, `ENGLISH`, `READING_COMPREHENSION`, `CID`) 
        VALUES (:cid,:m,:s,:e,:r,$id)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':cid', $user->CPID);
        $stmt->bindParam(':m', $user->MATH);
        $stmt->bindParam(':s', $user->SCIENCE);
        $stmt->bindParam(':e', $user->ENGLISH);
        $stmt->bindParam(':r', $user->READING_COMPREHENSION);

        if($stmt->execute()) {
            $response = true;
        } else {
            $response = false;
        }
        echo json_encode($response);
        break;
    case "PUT":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "UPDATE `course_percentage` SET `MATH`=:m,`SCIENCE`=:s,`ENGLISH`=:e,`READING_COMPREHENSION`=:r 
        WHERE CID = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->CID);
        $stmt->bindParam(':m', $user->MATH);
        $stmt->bindParam(':s', $user->SCIENCE);
        $stmt->bindParam(':e', $user->ENGLISH);
        $stmt->bindParam(':r', $user->READING_COMPREHENSION);

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

        $sql = "DELETE FROM course_percentage WHERE cid = $id";
 
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
