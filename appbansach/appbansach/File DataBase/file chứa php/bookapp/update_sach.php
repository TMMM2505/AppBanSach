<?php
include "connect.php";
    $tensach = $_POST['tensach'];
    $tentacgia = $_POST['tentacgia'];
    $idtheloai = $_POST['idtheloai'];
    $soluong = $_POST['soluong'];
    $gia = $_POST['gia'];
    $hinhanh = $_POST['hinhanh'];
    $mota = $_POST['mota'];
    $id = $_POST['id'];

    $query = 'UPDATE `chitietsach` 
            SET `tensach`="'.$tensach.'", `tentacgia`="'.$tentacgia.'", `idtheloai`="'.$idtheloai.'", `soluong`="'.$soluong.'", `gia`="'.$gia.'", `hinhanh`="'.$hinhanh.'", `mota`="'.$mota.'"
            WHERE `id`='.$id;
    $data = mysqli_query($conn, $query);
 
    if ($data == true ) {
        $arr = [
            'success' => true,
            'message' => "Thành Công"
        ];
    }
    else{
        $arr = [
            'success' => false,
            'message' => "Error"
        ];
    }
    print_r(json_encode($arr));
?>