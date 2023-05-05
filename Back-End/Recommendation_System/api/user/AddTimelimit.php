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

        $lrn =  $params['LRN'];
        $sub =  $params['SUBJECT'];

        $sql = "SELECT * FROM `timelimit` WHERE LRN = $lrn AND SUBJECT = $sub";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode($users);

        break;
    case "POST":    
        $sql = "SELECT COUNT(*) AS COUNT FROM `timelimit`";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        $count = json_encode($fetch[0]['COUNT']);
        $count = $count + 1;
        $user = json_decode( file_get_contents('php://input') );

        $sql = "INSERT INTO `timelimit`(`SUBJECT`, `MINUTE`, `SECOND`, `EFID`,`LRN`) 
        VALUES (:sub,:minute,:second,:id,:lrn)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':sub', $user->sub); 
        $stmt->bindParam(':minute', $user->minute);
        $stmt->bindParam(':second', $user->second);
        $stmt->bindParam(':lrn', $user->lrn);
        $stmt->bindParam(':id', $user->id);
    
        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
        break;
    case "PUT":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "UPDATE `timelimit` 
        SET `MINUTE`=:minute,`SECOND`=:second WHERE LRN = :lrn AND SUBJECT = :sub";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':sub', $user->sub); 
        $stmt->bindParam(':minute', $user->minute);
        $stmt->bindParam(':second', $user->second);
        $stmt->bindParam(':lrn', $user->lrn);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);

        break;
}
?>