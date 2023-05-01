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
        $fetch =  $params['FETCH'];
        
        if($fetch === "'IA'"){
            $sql = "SELECT * FROM ia_result WHERE LRN = $lrn";
        }else if($fetch === "'EX'"){
            $sql = "SELECT * FROM exam_result WHERE LRN = $lrn";
        }else{
            $sub =  strtoupper($params['SUBJECT']);

            $sql = "SELECT course_information.CID, course_information.COURSE_NAME, ia_result.IAQID, course_percentage.MATH, course_percentage.SCIENCE, 
            course_percentage.ENGLISH, course_percentage.READING_COMPREHENSION
            FROM ia_result
            INNER JOIN course_information ON ia_result.IAQID=course_information.IAQID
            INNER JOIN course_percentage ON course_information.cid  = course_percentage.cid 
            WHERE ia_result.LRN = $lrn
            ORDER BY course_percentage.$sub ASC";
        }

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
        echo json_encode($users);
        break;
    case "POST":

        $sql = "SELECT COUNT(*) AS count FROM overall_result";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $score = json_encode($fetch[0]['count']);

        $user = json_decode( file_get_contents('php://input') );
        
        $sql = "INSERT INTO `overall_result`(`RID`, `ERID`, `IRID`, `RECOMMENDED_COURSE`, `LRN`, `DATE`) 
        VALUES ('RID_$score',:erid,:irid,:course,:lrn,:date)";

        $stmt = $conn->prepare($sql);
        $created_at = date('Y-m-d');
        $stmt->bindParam(':date', $created_at);
        $stmt->bindParam(':lrn', $user->lrn); 
        $stmt->bindParam(':course', $user->course);
        $stmt->bindParam(':irid', $user->irid);
        $stmt->bindParam(':erid', $user->erid);
    
        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
    
        break;
    case "PUT":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);
    
        $lrn =  $params['LRN'];

        $sql = "SELECT MATH_SCORE + SCIENCE_SCORE +ENGLISH_SCORE + READING_COMPREHENSION_SCORE AS TOTAL FROM `exam_result` 
        WHERE LRN = $lrn";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
        $score = json_encode($fetch[0]['TOTAL']);
    
        if($score >= 70){
            $status = "Passed";
        }else{
            $status = "Failed";
        }
        
        $sql = "UPDATE `exam_result` 
        SET TOTAL_SCORE = $score, EXAM_RESULT = '$status' WHERE LRN = $lrn";
        $stmt = $conn->prepare($sql);

        if($stmt->execute()) {
            $response = true;
        } else {
            $response = false;
        }
        echo json_encode($response);
        break;
}
?>