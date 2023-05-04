<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

$method = $_SERVER['REQUEST_METHOD'];
switch($method) {
    case "GET":
        $sql = "SELECT * FROM ia_questions";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        echo json_encode($users);
        break;
    case "POST":
        $sql = "SELECT COUNT(*) as count FROM ia_result";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $count = json_encode($fetch[0]['count']);
        $count = $count + 1;
        $user = json_decode( file_get_contents('php://input') );
        $sql = "INSERT INTO `interest_assessment_result`(`IARID`, `REALISTIC_SCORE`, `INVESTIGATIVE_SCORE`, `ARTISTIC_SCORE`, `SOCIAL_SCORE`, `ENTERPRISING_SCORE`, `CONVENTIONAL_SCORE`, `IA_RESULT`, `LRN`, `DATE`) 
        VALUES ('IARID_$count',:r,:i,:a,:s,:e,:c,:result,:lrn,:date)";
            $stmt = $conn->prepare($sql);
            $created_at = date('Y-m-d');
            $stmt->bindParam(':r', $user->r);
            $stmt->bindParam(':i', $user->i);
            $stmt->bindParam(':a', $user->a);
            $stmt->bindParam(':s', $user->s);
            $stmt->bindParam(':e', $user->e); 
            $stmt->bindParam(':c', $user->c);
            $stmt->bindParam(':result', $user->result);
            $stmt->bindParam(':lrn', $user->lrn);
            $stmt->bindParam(':date', $created_at);

            if($stmt->execute()) {
                $response = ['status' => 1, 'message' => 'Record created successfully.'];
            } else {
                $response = ['status' => 0, 'message' => 'Failed to create record.'];
            }
            echo json_encode($response);
        break;
    }
?>