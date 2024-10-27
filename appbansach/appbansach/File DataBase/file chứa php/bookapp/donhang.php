<?php
    include "connect.php";

    $sdt = $_POST['sdt'];
    $email = $_POST['email'];
    $tongtien = $_POST['tongtien'];
    $iduser = $_POST['iduser']; 
    $diachi = $_POST['diachi'];
    $soluongtong = $_POST['soluongtong'];
    $chitiet = $_POST["chitiet"];

    $query = 'INSERT INTO `donhang` (`iduser`,`diachi`,`sodienthoai`,`email`,`soluongtong`,`tongtien`)
        VALUES ("'.$iduser.'","'.$diachi.'","'.$sdt.'","'.$email.'","'.$soluongtong.'","'.$tongtien.'")';
    $data = mysqli_query($conn, $query);
    if ($data == true) {
        $query = 'SELECT `id` AS `iddonhang`
                    FROM `donhang`
                    WHERE `iduser` = '.$iduser.' ORDER BY id DESC LIMIT 1 ';
        $data = mysqli_query($conn,$query);
        while ($row = mysqli_fetch_assoc($data)){
            $iddonhang = ($row);
        }            
            $chitiet = json_decode($chitiet, true);
            foreach ($chitiet as $key => $value) {
                $truyvan = 'INSERT INTO `chitietdonhang`(`iddonhang`,`idsp`,`soluongdamua`,`gia`)
                        VALUE ('.$iddonhang["iddonhang"].','.$value["idsach"].','.$value["soluongsach"].',"'.$value["giasach"].'")';
                
                $data = mysqli_query($conn, $truyvan);    
            }
            if ($data == true) {
                $arr = [
                    'success' => true,
                    'message' => "Thành Công"
                ];
                $update = 'UPDATE chitietsach, chitietdonhang
                        SET chitietsach.soluong = chitietsach.soluong - chitietdonhang.soluongdamua,
                        chitietsach.daban = chitietsach.daban + chitietdonhang.soluongdamua
                        WHERE chitietsach.id = "'.$value["idsach"].'" AND chitietdonhang.iddonhang='.$iddonhang["iddonhang"];
                mysqli_query($conn, $update);
            }
            else {
                $arr = [
                    'success' => false,
                    'message' => "Thất Bại"
                ];
            }
            print_r(json_encode($arr));
        
    }


?>    