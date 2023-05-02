<?php
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: *");
    header("Access-Control-Allow-Methods: *");
    
    include 'DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $i;
$method = $_SERVER['REQUEST_METHOD'];
switch($method) {
    case "GET":
        $sql = "SELECT * FROM student_information";
        $path = explode('/', $_SERVER['REQUEST_URI']);
        if(isset($path[3]) && is_numeric($path[3])) {
            $sql .= " WHERE LRN = :lrn";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':lrn', $path[3]);
            $stmt->execute();
            $users = $stmt->fetch(PDO::FETCH_ASSOC);
        }else {
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }

        echo json_encode($users);
        break;
    case "POST":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "INSERT INTO student_information(STUDENT_FIRSTNAME, STUDENT_LASTNAME, LRN, EMAIL_ADDRESS, PASSWORD, SHS_TRACK, EXAM_STATUS, ACCOUNT_CREATED) 
        VALUES(:fname, :lname, :lrn,:email,:password,'', 'Not taken yet', :created_at)";

        $stmt = $conn->prepare($sql);
        $created_at = date('Y-m-d');
        $stmt->bindParam(':fname', $user->FirstName);
        $stmt->bindParam(':lname', $user->LastName);
        $stmt->bindParam(':lrn', $user->LRN);
        $stmt->bindParam(':email', $user->Email);
        $stmt->bindParam(':password', $user->Password);
        $stmt->bindParam(':created_at', $created_at);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
        break;

    case "PUT":
        $user = json_decode( file_get_contents('php://input') );
        $sql = "UPDATE `student_information` SET `STUDENT_FIRSTNAME`=:fname,
        `STUDENT_LASTNAME`=:lname,`EMAIL_ADDRESS`=:email,`PASSWORD`=:password,`SHS_TRACK`=:strand 
        WHERE LRN = :lrn";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':lrn', $user->LRN);
        $stmt->bindParam(':fname', $user->FirstName);
        $stmt->bindParam(':lname', $user->LastName);
        $stmt->bindParam(':email', $user->Email);
        $stmt->bindParam(':password', $user->Password);
        $stmt->bindParam(':strand', $user->SHSstrand);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record updated successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to update record.'];
        }
        echo json_encode($response);
        break;
}

?>