<?php
    include "connect.php";
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $username = $_POST['username'];
    $mobile = $_POST['mobile'];

    $query = 'SELECT * FROM `user` WHERE `email` = "'.$email.'"';
    $data = mysqli_query($conn, $query);
    $numrow = mysqli_num_rows($data);

    if ($numrow > 0 ) {
        $arr = [
            'success' => false,
            'message' => "Email đã tồn tại"
        ];
    }
    else{
        $query = "INSERT INTO `user`(email,pass, username, mobile) VALUE ('$email','$pass','$username','$mobile')";
        $data = mysqli_query($conn, $query);

        if ($data == true){
            $arr = [
                'success' => true,
                'message' => "Thành Công"
            ];
        }
        else {
            $arr = [
                'success' => false,
                'message' => "Thất Bại"
            ];
        }

    }
    print_r(json_encode($arr));
?>