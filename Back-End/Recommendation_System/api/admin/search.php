<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    
    $user = json_decode( file_get_contents('php://input') );
    $sql = 'SELECT * FROM student_information WHERE :search LIKE = 1%';

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':tablename', $user->tablename);
        $stmt->bindParam(':search', $user->search);
        $stmt->bindParam(':value', $user->value);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // if(password_verify($curr, $users[0]['PASSWORD'])){
    //     echo json_encode ($users);
    // }else{
    //     echo json_encode (0);
    // }
    echo json_encode($users);

?>