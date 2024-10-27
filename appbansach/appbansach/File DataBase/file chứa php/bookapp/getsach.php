<?php
    include "connect.php";
    $page = $_GET['page'];
    $idpl = $_POST['idphanloai'];
    $space = 2;
    $limit = ($page - 1) * $space;
    $mangsach = array();
    $query = "SELECT chitietsach.id, chitietsach.tensach, chitietsach.tentacgia, chitietsach.soluong, theloaisach.theloai, 
                    chitietsach.gia,chitietsach.hinhanh, chitietsach.mota
    FROM chitietsach, theloaisach
    WHERE chitietsach.idtheloai= theloaisach.idtheloai AND chitietsach.phanloai = '0'
        and chitietsach.idtheloai = $idpl LIMIT $limit,$space";
    $data = mysqli_query($conn,$query);
    while ($row = mysqli_fetch_assoc($data)){
        array_push($mangsach, new ChiTietSach(
            $row['id'],
            $row['tensach'],
            $row['tentacgia'],
            $row['soluong'],
            $row['theloai'],
            $row['gia'],
            $row['hinhanh'],
            $row['mota']
        ));
    }
    echo json_encode($mangsach);
    class ChiTietSach{
        public function __construct($id, $tensach, $tentacgia, $soluong, $theloai, $gia, $hinhanh, $mota){
            $this->id=$id;     
            $this->tensach=$tensach;   
            $this->tentacgia=$tentacgia;     
            $this->soluong=$soluong;     
            $this->theloai=$theloai;     
            $this->gia=$gia;     
            $this->hinhanh=$hinhanh;     
            $this->mota=$mota;    
        }
    }

?>
