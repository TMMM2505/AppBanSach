<?php
    include "connect.php";
    $iduser = $_POST['iduser'];


    $query = 'SELECT * FROM `donhang` WHERE `iduser` = '.$iduser;
    $data  = mysqli_query($conn, $query);
    $result = array();
    while ($row = mysqli_fetch_assoc($data)) {
        $truyvan = 'SELECT `chitietdonhang`.`iddonhang`, `chitietdonhang`.`soluongdamua` AS soluong ,`chitietsach`.`tensach`, `chitietsach`.`hinhanh`
        FROM `chitietdonhang` , `chitietsach`
        WHERE chitietdonhang.idsp = chitietsach.id  and chitietdonhang.iddonhang = '.$row['id'];
        $data1 = mysqli_query($conn, $truyvan);
        $item = array();
        while ($row1 = mysqli_fetch_assoc($data1)){
            $item[] = $row1;
        }

        $row['item'] = $item;
        $result[] = ($row);

    }
    if (!empty($result)) {
        $arr = [
            'success' => true,
            'message' => "Thành Công",
            'result'  => $result
        ];
    }
    else {
        $arr = [
            'success' => false,
            'message' => "khong thanh cong",
            'result'  => $result
        ];
    }
    print_r(json_encode($arr));

?>