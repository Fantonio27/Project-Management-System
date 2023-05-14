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
            $SUB = $params['SUB'];
            $sql = "SELECT * FROM $SUB";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }else{
            $id = $params['ID'];
            $SUB = $params['SUB'];
            $sql = "SELECT * FROM $SUB WHERE EQID = $id";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetch(PDO::FETCH_ASSOC);
        }

        echo json_encode($users);
        break;
    case "POST":
        $user = json_decode( file_get_contents('php://input') );
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);

        $sub = $params['SUB'];
        $id = $params['ID'];
        
        $sql = "INSERT INTO $sub (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`) 
        VALUES ($id,:question,:a,:b,:c,:d,:ans)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':question', $user->Question);
        $stmt->bindParam(':a', $user->Choice_A);
        $stmt->bindParam(':b', $user->Choice_B);
        $stmt->bindParam(':c', $user->Choice_C);
        $stmt->bindParam(':d', $user->Choice_D);
        $stmt->bindParam(':ans', $user->Answer);

        if($stmt->execute()) {
            $response = true;
        } else {
            $response = false;
        }
        echo json_encode($response);
        break;

        break;
    case "PUT":
        $user = json_decode( file_get_contents('php://input') );
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);

        $SUB = $params['SUB'];

        $sql = "UPDATE $SUB 
        SET `Question`=:question,`Choice_A`=:a,`Choice_B`=:b,`Choice_C`=:c,`Choice_D`=:d,`Answer`=:ans 
        WHERE EQID = :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $user->EQID);
        $stmt->bindParam(':question', $user->Question);
        $stmt->bindParam(':a', $user->Choice_A);
        $stmt->bindParam(':b', $user->Choice_B);
        $stmt->bindParam(':c', $user->Choice_C);
        $stmt->bindParam(':d', $user->Choice_D);
        $stmt->bindParam(':ans', $user->Answer);

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
        $sub = $params['SUB'];

        $sql = "DELETE FROM $sub WHERE EQID = $id";

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
