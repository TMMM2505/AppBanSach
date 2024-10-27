<?php
    include "connect.php";
    $tensach = $_POST['tensach'];
    $tentacgia = $_POST['tentacgia'];
    $idtheloai = $_POST['idtheloai'];
    $soluong = $_POST['soluong'];
    $gia = $_POST['gia'];
    $hinhanh = $_POST['hinhanh'];
    $mota = $_POST['mota'];

    $query = 'INSERT INTO `chitietsach`(`tensach`, `tentacgia`, `idtheloai`, `soluong`, `gia`, `hinhanh`, `mota`,`phanloai`) 
        VALUES ("'.$tensach.'","'.$tentacgia.'","'.$idtheloai.'","'.$soluong.'","'.$gia.'","'.$hinhanh.'","'.$mota.'","1")';
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
            'message' => "that bai"
        ];
    }
    print_r(json_encode($arr));
?>