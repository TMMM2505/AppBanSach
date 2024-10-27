<?php
include "connect.php";
$id = $_POST['id'];
$query = 'DELETE FROM `chitietsach` WHERE `phanloai`="1" AND `id`='.$id;
$data = mysqli_query($conn, $query);
if ($data == true){
    $arr = [
        'success' => true,
        'message' => "Xoá Thành Công"
    ];
}
else {
    $arr = [
        'success' => false,
        'message' => "Xoá Thất Bại"
    ];
}

print_r(json_encode($arr));




?>    