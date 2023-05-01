<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $url_components = parse_url($_SERVER['REQUEST_URI']);
    parse_str($url_components['query'], $params);
    $sub =  $params['SUBJECT'];
    $fetch =  $params['FETCH'];

    if($sub === '"Math"'){
        $table = "eq_math";
    }else if($sub === '"Science"'){
        $table = "eq_science";
    }else if($sub === '"English"'){
        $table = "eq_english";
    }else{
        $table = "eq_reading_comprehension";
    }

    if($fetch === 'ALL'){
        $sql = "SELECT save_answer.SUBJECT, save_answer.VALUE, save_answer.ANSWER, $table.Question,
        $table.Choice_A, $table.Choice_B, $table.Choice_C, $table.Choice_D
        FROM save_answer
        INNER JOIN $table ON save_answer.EQID=$table.EQID;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
        echo json_encode($users);
    }else{
        $lrn =  $params['LRN'];
        $sql = "SELECT * FROM save_answer WHERE SUBJECT =  $sub AND LRN= $lrn";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
        echo json_encode($users);
    }
?>