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

        if($fetch === [] || $fetch[0]['MATH_SCORE'] === -1){
            $subject = "Math";
            $limit = 30;
            $sub = "eq_math";
        }else if ($fetch[0]['SCIENCE_SCORE'] === -1){
            $subject = "Science";
            $limit = 30;
            $sub = "eq_science";
        }else if ($fetch[0]['ENGLISH_SCORE'] === -1){
            $subject = "English";
            $limit = 20;
            $sub = "eq_english";
        }else if ($fetch[0]['READING_COMPREHENSION_SCORE'] === -1){
            $subject = "Reading_Comprehension";
            $limit = 20;
            $sub = "eq_reading_comprehension";
        }else{
            $subject = "Interest_Assessment";
        }

        if($result === "ALL"){
            $sql = "SELECT * FROM $sub LIMIT 10";
            // -- ORDER BY RAND()
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetchaLL(PDO::FETCH_ASSOC);
            echo json_encode($users);
        }else if($result === "USERVALID"){
            echo json_encode($fetch);
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
        VALUES (:id,'-1','-1','-1','-1','-1','',$lrn,:date)";

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
        echo json_encode($response);
        break;
    case "PUT":
        $url_components = parse_url($_SERVER['REQUEST_URI']);
        parse_str($url_components['query'], $params);

        $lrn =  $params['LRN'];
        $sub =  $params['SUBJECT'];

        $sql = "SELECT SUBJECT, COUNT(SUBJECT) as count FROM save_answer 
        WHERE SUBJECT = $sub AND ANSWER = VALUE";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchaLL(PDO::FETCH_ASSOC);

        if($sub == "'Math'"){
            $val = "MATH_SCORE";
        }else if($sub == "'Science'"){
            $val = "SCIENCE_SCORE";
        }else if($sub == "'English'"){
            $val = "ENGLISH_SCORE";
        }else{
            $val = "READING_COMPREHENSION_SCORE";
        }

        $score = json_encode($fetch[0]['count']);
        $sql = "UPDATE `exam_result` 
        SET $val = $score WHERE LRN = $lrn";

        $stmt = $conn->prepare($sql);

        if($stmt->execute()) {
            $response = true;
        } else {
            $response = false;
        }
        echo json_encode($score);
        break;
    }
?>