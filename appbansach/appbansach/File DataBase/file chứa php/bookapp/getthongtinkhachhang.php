<?php
    include "connect.php";
    $tenkh = $_POST['tenkh'];
    $sdt = $_POST['sdt'];
    $email = $_POST['email'];
    if (strlen($tenkh) > 0 && strlen($sdt) > 0 && strlen($email) > 0 ){
        $query = "INSERT INTO khachhang(madonhang, tenkh, sdt, email)
        VALUE(null, '$tenkh','$sdt','$email')";
        if(mysqli_query($conn, $query)){
            $iddonhang = $conn->insert_id;
            echo $iddonhang;
        }
        else{
            echo "Thất bại";
        }
    }
    else {
        echo "dis connect";
    }



?>