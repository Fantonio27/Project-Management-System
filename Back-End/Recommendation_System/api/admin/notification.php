<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $sql = 'SELECT * FROM student_information WHERE EXAM_STATUS = "Exam Taken"';

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // if(password_verify($curr, $users[0]['PASSWORD'])){
    //     echo json_encode ($users);
    // }else{
    //     echo json_encode (0);
    // }
    echo json_encode($users);

?>