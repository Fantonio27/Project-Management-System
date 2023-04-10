<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    // $sql = "SELECT * FROM course_information";
    // $stmt = $conn->prepare($sql);
    // $stmt->execute();
    // $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // echo json_encode($users);

$method = $_SERVER['REQUEST_METHOD'];
switch($method) {
    case "GET":
        $sql = "SELECT * FROM course_information";

        $url = basename($_SERVER['REQUEST_URI']);
        if($url === "Course_Information.php"){
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }else{
            $url_components = parse_url($_SERVER['REQUEST_URI']);
            parse_str($url_components['query'], $params);
            $sql .= " WHERE CID = :cid ";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':cid', $params['cid']);
            $stmt->execute();
            $users = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        // echo ;
        // $path = explode('/', $_SERVER['REQUEST_URI']);
        // if(isset($path[3]) && is_numeric($path[3])) {
        //     $sql .= " WHERE LRN = :lrn";
        //     $stmt = $conn->prepare($sql);
        //     $stmt->bindParam(':lrn', $path[3]);
        //     $stmt->execute();
        //     $users = $stmt->fetch(PDO::FETCH_ASSOC);
        // }else {
        //     $stmt = $conn->prepare($sql);
        //     $stmt->execute();
        //     $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        // }

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
        $sql = "UPDATE users SET name= :name, email =:email, mobile =:mobile, updated_at =:updated_at WHERE id = :id";
        $stmt = $conn->prepare($sql);
        $updated_at = date('Y-m-d');
        $stmt->bindParam(':id', $user->id);
        $stmt->bindParam(':name', $user->name);
        $stmt->bindParam(':email', $user->email);
        $stmt->bindParam(':mobile', $user->mobile);
        $stmt->bindParam(':updated_at', $updated_at);
 
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
