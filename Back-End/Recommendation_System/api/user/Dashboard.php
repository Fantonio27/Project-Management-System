<?php
    include "../header.php";

    include '../DbConnect.php';
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    $sql = "SELECT * FROM student_information";
    $path = explode('/', $_SERVER['REQUEST_URI']);
    if(isset($path[4]) && is_numeric($path[4])) {
        $sql .= " WHERE LRN = 111111111133";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':lrn', $path[4]);
        $stmt->execute();
        $users = $stmt->fetch(PDO::FETCH_ASSOC);
    }

    echo json_encode($users);
    echo ($path[4]);
?>