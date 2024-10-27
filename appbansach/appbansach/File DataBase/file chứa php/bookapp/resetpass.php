<?php
    include "connect.php";
    $email = $_POST['email'];
    $query = 'SELECT * FROM `user` WHERE `email`="'.$email.'"';
    $data = mysqli_query($conn, $query);
    $result = array();
    while ($row = mysqli_fetch_assoc($data)){
        $result[] = ($row);
    }

    if(empty($result)) {
        $arr = [
            'success' => false,
            'message' => "khong thanh cong",
            'result'  => $result
        ];
    }
    else {
        print_r($result);
    }
    print_r($arr);
    die();


?>