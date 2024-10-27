<?php
    include "connect.php";
    $json = $_POST['json'];
    $a = json_decode($json, true);
    foreach ($a as $value) {
        $madonhang = $value['madonhang'];
        $masach = $value['masach'];
        $soluong = $value['soluongdamua'];
        $giatien = $value['giatien'];
        $query = "INSERT INTO chitietdonhang (iddonhang, madonhang, masach, soluongdamua, giatien)
            VALUE (null,'$madonhang','$masach','$soluong','$giatien')";
        $data = mysqli_query($conn, $query);
        
    }
        if ($data) {
            echo "1";
            $update = 'UPDATE chitietsach, chitietdonhang
            SET chitietsach.soluong = chitietsach.soluong - chitietdonhang.soluongdamua,
            chitietsach.daban = chitietsach.daban + chitietdonhang.soluongdamua
            WHERE chitietsach.id = "'.$masach.'" AND chitietdonhang.madonhang='.$madonhang;
            mysqli_query($conn, $update);
        }
        else {
            echo "0";
        }
?>