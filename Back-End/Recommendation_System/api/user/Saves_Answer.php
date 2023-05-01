<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    // $sql = "SELECT COUNT(*) as total FROM `save_answer` ";
    // $stmt = $conn->prepare($sql);
    // $stmt->execute();
    // $save = $stmt->fetchaLL(PDO::FETCH_ASSOC);
    // $total = $save[0]["total"];
    // echo json_encode($total );
    // $user = json_decode( file_get_contents('php://input'));
    // $sql = "SELECT COUNT(*) as totalid FROM save_answer WHERE EQID = :eqid";
    // $stmt = $conn->prepare($sql);
    // $stmt->bindParam(':eqid', $user->id);
    // $stmt->execute();
    // $eq = $stmt->fetchaLL(PDO::FETCH_ASSOC);

    // $EQID = $eq[0]["totalid"]
    // echo json_encode($EQID);


    // echo ( $params['ID']);
    // echo $sql;
$method = $_SERVER['REQUEST_METHOD'];
switch($method) {
    case "GET":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);
        $id =  $params['ID'];
        $fetch =  $params['FETCH'];

        if($fetch === "EACH"){
            $sql = "SELECT * FROM save_answer WHERE EQID = $id";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetch(PDO::FETCH_ASSOC);
            
            echo json_encode($users);
        }else{
            $sql = "SELECT COUNT(*) AS count FROM save_answer WHERE SUBJECT = $id";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $subject = $stmt->fetch(PDO::FETCH_ASSOC);
            
            echo json_encode($subject);
        }

        break;

    case "POST":
            $user = json_decode( file_get_contents('php://input') );

            $sql = "SELECT COUNT(*) as count FROM save_answer WHERE EQID = :eqid";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':eqid', $user->id);
            $stmt->execute();
            $fetch = $stmt->fetch(PDO::FETCH_ASSOC);

            $count = json_encode($fetch['count']);
            if($count === "0"){
                $sql = "INSERT INTO `save_answer`(`SAID`, `SUBJECT`,`VALUE`, `ANSWER`, `EQID`, `LRN`) 
                VALUES (null,:sub,:value,:answer,:eqid, :lrn)";
            
                $stmt = $conn->prepare($sql);
                // $created_at = "SAID_10";
                // $stmt->bindParam(':said', $created_at);
                $stmt->bindParam(':sub', $user->subject); 
                $stmt->bindParam(':value', $user->value);
                $stmt->bindParam(':answer', $user->answer);
                $stmt->bindParam(':eqid', $user->id);
                $stmt->bindParam(':lrn', $user->lrn);
            
                if($stmt->execute()) {
                    $response = ['status' => 1, 'message' => 'Record created successfully.'];
                } else {
                    $response = ['status' => 0, 'message' => 'Failed to create record.'];
                }
                echo json_encode($response);
            }
            break;

    case "PUT":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "UPDATE `save_answer` SET `VALUE`= :value WHERE EQID = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->id);
        $stmt->bindParam(':value', $user->value);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);
        break;

    case "DELETE":
        $sql = "DELETE FROM users WHERE id = :id";
        $path = explode('/', $_SERVER['REQUEST_URI']);

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $path[3]);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record deleted successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to delete record.'];
        }
        echo json_encode($response);
        break;
}
?>