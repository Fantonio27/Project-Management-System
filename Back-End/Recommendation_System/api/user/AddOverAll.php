<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();
    $user = json_decode( file_get_contents('php://input') );
    $sql = "INSERT INTO `overall_result`(`RID`, `MATH_OVERALL`, `SCIENCE_OVERALL`, `ENGLISH_OVERALL`, `READING_COMPREHENSION_OVERALL`, `LRN`) 
    VALUES (null,:Math,:Science,:English,:Reading,:lrn)";
    
    $stmt = $conn->prepare($sql);
        $stmt->bindParam(':Math', $user->Math); 
        $stmt->bindParam(':Science', $user->Science);
        $stmt->bindParam(':English', $user->English);
        $stmt->bindParam(':Reading', $user->Reading);
        $stmt->bindParam(':lrn', $user->lrn);
    if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
    
    echo json_encode($response);
    // echo basename($_SERVER['REQUEST_URI'])
?>