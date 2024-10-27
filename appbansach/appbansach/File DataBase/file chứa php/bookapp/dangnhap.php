<?php
    include "connect.php";
    $email = $_POST['email'];
    $pass = $_POST['pass'];

    $query = "SELECT * FROM `user` WHERE `email` = '".$email."' AND `pass` = '".$pass."'";
    $data = mysqli_query($conn, $query);
    $chuoi = array();
    while ($row = mysqli_fetch_assoc($data)){
        $chuoi[] = ($row);

    }
    if (!empty($chuoi)){
        $arr = [
            'success' => true,
            'message' => "Thành Công",
            'result'  => $chuoi
        ];
    }
    else {
        $arr = [
            'success' => false,
            'message' => "Thất Bại",
            'result'  => $chuoi
        ];
    }
    print_r(json_encode($arr));

?>