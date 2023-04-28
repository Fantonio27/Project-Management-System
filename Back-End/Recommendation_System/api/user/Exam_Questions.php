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
        $result =  $params['RESULT'];

        $sql = "SELECT * FROM exam_result WHERE LRN = $lrn";
        // $sql = "SELECT SUBJECT, COUNT(SUBJECT) as count FROM save_answer GROUP BY SUBJECT";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchaLL(PDO::FETCH_ASSOC);

        if($fetch === [] || $fetch[0]['MATH_SCORE'] === 0){
            $subject = "Math";
            $limit = 30;
            $sub = "eq_math";
        }else if ($fetch[0]['SCIENCE_SCORE'] === 0){
            $subject = "Science";
            $limit = 30;
            $sub = "eq_science";
        }else if ($fetch[0]['ENGLISH_SCORE'] === 0){
            $subject = "English";
            $limit = 20;
            $sub = "eq_english";
        }else if ($fetch[0]['READING_COMPREHENSION_SCORE'] === 0){
            $subject = "Reading_Comprehension";
            $limit = 20;
            $sub = "eq_reading_comprehension";
        }else{
            echo("Finish");
        }

        if($result === "ALL"){
            $sql = "SELECT * FROM $sub";
            // -- ORDER BY RAND()
            // -- LIMIT $limit";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetchaLL(PDO::FETCH_ASSOC);
            echo json_encode($users);
        }else{
            echo json_encode($subject);
        }
        break;
    case "POST":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);

        $lrn =  $params['LRN'];

        $sql = "SELECT COUNT(*) As count FROM exam_result ";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchaLL(PDO::FETCH_ASSOC);

        $count = $fetch[0]['count'];
        $sql = "INSERT INTO `exam_result`(`ERID`, `MATH_SCORE`, `ENGLISH_SCORE`, `SCIENCE_SCORE`, `READING_COMPREHENSION_SCORE`, `TOTAL_SCORE`, `EXAM_RESULT`, `LRN`, `DATE`) 
        VALUES (:id,'0','0','0','0','0','',$lrn,:date)";

        $stmt = $conn->prepare($sql);
        $created_at = date('Y-m-d');
        $idcreate =  "ERID_".$count;
        $stmt->bindParam(':id', $idcreate);
        $stmt->bindParam(':date', $created_at);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        // echo json_encode($response);
        break;
    case "PUT":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);

        $lrn =  $params['LRN'];
        $sub =  $params['SUBJECT'];

        $sql = "SELECT MATH_SCORE + ENGLISH_SCORE + SCIENCE_SCORE + READING_COMPREHENSION_SCORE AS RESULT
        FROM exam_result WHERE LRN = $lrn";

        // $sql = "SELECT SUBJECT, COUNT(SUBJECT) as count FROM save_answer GROUP BY SUBJECT";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchaLL(PDO::FETCH_ASSOC);

        if($sub === "Math"){
            $val = "MATH_SCORE";
        }else if($sub === "Science"){
            $val = "SCIENCE_SCORE";
        }else if($sub === "English"){
            $val = "ENGLISH_SCORE";
        }else{
            $val = "READING_COMPREHENSION_SCORE";
        }
        $sql = "UPDATE `exam_result` 
        SET `MATH_SCORE`='',
        `SCIENCE_SCORE`='',
        `MATH_SCORE`='',
        `ENGLISH_SCORE`='',

        `TOTAL_SCORE`= $fetch[0][RESULT] WHERE LRN = $lrn";

        $stmt = $conn->prepare($sql);

        if($stmt->execute()) {
            $response = ['status' => 1, 'message' => 'Record created successfully.'];
        } else {
            $response = ['status' => 0, 'message' => 'Failed to create record.'];
        }
        echo json_encode($response);
        break;
    }
?>