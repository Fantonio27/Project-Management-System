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
    
        $fetch =  $params['FETCH'];
        
        if($fetch === "'IA'"){
            $lrn =  $params['LRN'];
            $sql = "SELECT * FROM interest_assessment_result WHERE LRN = $lrn";
        }else if($fetch === "'EX'"){
            $lrn =  $params['LRN'];
            $sql = "SELECT * FROM exam_result WHERE LRN = $lrn";
        }else{
            $ia =  strtoupper($params['IA']);
            $subject =  strtoupper($params['SUBJECT']);
            $sql = "SELECT * 
            FROM `course_information` 
            INNER JOIN course_percentage on course_percentage.CID = course_information.CID";
            // -- WHERE course_percentage.$subject >= '30' AND (course_information.INTEREST = 'Health Science' OR course_information.INTEREST = 'Education & Training')";
            if($ia === "'R AND S'" || $ia === "'S AND R'"){
                $sql .= " WHERE course_percentage.$subject. >= 30 AND (course_information.INTEREST = 'Health Science' OR course_information.INTEREST = 'Human Service' OR course_information.INTEREST = 'Law & Public Safety')";
            }else if($ia === "R AND E" || $ia === "'R AND E'"){
                $sql .= " WHERE course_percentage.$subject >= 30 AND (course_information.INTEREST = 'Arts & Communications' OR course_information.INTEREST = 'Hospitality & Tourism')";
            }else if($ia === "'I AND S'"|| $ia === "'S AND I'"){
                $sql .= " WHERE course_percentage.$subject >= 30 AND (course_information.INTEREST = 'Health Science' OR course_information.INTEREST = 'Education & Training')";
            }else if($ia === "I AND R" || $ia === "'R AND I'"){
                $sql .= " WHERE course_percentage.$subject >= '30' AND (course_information.INTEREST = 'Agriculture' OR course_information.INTEREST = 'Health Science' OR course_information.INTEREST = 'Information Technology' OR course_information.INTEREST = 'Science, Technology, Math')";
            }else if($ia === "A AND S" || $ia === "'S AND A'"){
                $sql .= " WHERE course_percentage.$subject >= '30' AND (course_information.INTEREST = 'Education & Training' OR course_information.INTEREST = 'Arts & Communications' OR course_information.INTEREST = 'Marketing & Sales')";
            }else if($ia === "A AND R" || $ia === "'R AND A'"){
                $sql .= " WHERE course_percentage.$subject >= '30' AND (course_information.INTEREST = 'Arts & Communications' OR course_information.INTEREST = 'Education & Training')";
            }else if($ia === "S AND E" || $ia === "'E AND S'"){
                $sql .= " WHERE course_percentage.$subject >= '30' AND (course_information.INTEREST = 'Government' OR course_information.INTEREST = 'Marketing & Sales' OR course_information.INTEREST = 'Law & Public Safety')";
            }else if($ia === "E AND C"|| $ia === "'C AND E'"){
                $sql .= " WHERE course_percentage.$subject >= '30' AND (course_information.INTEREST = 'Business & Management' OR course_information.INTEREST = 'Finance')";
            }else if($ia === "E AND A"|| $ia === "'A AND E'"){
                $sql .= " WHERE course_percentage.$subject >= '30' AND (course_information.INTEREST = 'Arts & Communications' OR course_information.INTEREST = 'Marketing & Sales')";
            }else if($ia === "C AND R"|| $ia === "'R AND C'"){
                $sql .= " WHERE course_percentage.$subject >= '30' AND (course_information.INTEREST = 'Architecture & Construction' OR course_information.INTEREST = 'Manufacturing' OR course_information.INTEREST = 'Transportation')";
            }
            // $sql = "SELECT course_information.CID, course_information.COURSE_NAME, ia_result.IAQID, course_percentage.MATH, course_percentage.SCIENCE, 
            // course_percentage.ENGLISH, course_percentage.READING_COMPREHENSION
            // FROM ia_result
            // INNER JOIN course_information ON ia_result.IAQID=course_information.IAQID
            // INNER JOIN course_percentage ON course_information.cid  = course_percentage.cid 
            // WHERE ia_result.LRN = $lrn
            // ORDER BY course_percentage.$sub ASC";
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
        $score = $score + 1;
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