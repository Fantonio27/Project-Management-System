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
        $sql = "SELECT COUNT(*) as count FROM ia_result WHERE LRN = :lrn";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':lrn', $user->lrn);
        $stmt->execute();
        $countval = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $put = json_encode($countval[0]['count']);
        if($put == 0){
            $sql = "INSERT INTO `ia_result`(`IAR`, `DEPARTMENT`, `ANSWER`, `INTEREST`,`IAQID`, `LRN`, `DATE`) 
            VALUES ('IAR_$count',:field,:value,:interest,:id,:lrn,:date)";  
            $stmt = $conn->prepare($sql);
            $created_at = date('Y-m-d');
            $stmt->bindParam(':date', $created_at);
            $stmt->bindParam(':value', $user->value);
            $stmt->bindParam(':field', $user->field);
            $stmt->bindParam(':interest', $user->interest);
            $stmt->bindParam(':id', $user->id); 
            $stmt->bindParam(':lrn', $user->lrn);

            if($stmt->execute()) {
                $response = ['status' => 1, 'message' => 'Record created successfully.'];
            } else {
                $response = ['status' => 0, 'message' => 'Failed to create record.'];
            }
            echo json_encode($response);
        }

        echo json_encode($put);
        break;
    }
?>