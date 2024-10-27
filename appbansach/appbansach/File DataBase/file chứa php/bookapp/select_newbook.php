<?php
    include "connect.php";
    $arraynewbook = array();
    $query = "SELECT chitietsach.id, chitietsach.tensach, chitietsach.tentacgia, chitietsach.soluong, theloaisach.theloai, 
                    chitietsach.gia,chitietsach.hinhanh, chitietsach.mota
            FROM chitietsach, theloaisach
            WHERE chitietsach.idtheloai = theloaisach.idtheloai AND chitietsach.phanloai = '0' AND chitietsach.soluong > 0
            ORDER BY chitietsach.id DESC LIMIT 8";
    $data = mysqli_query($conn, $query);
    while ($row = mysqli_fetch_assoc($data)){
        array_push($arraynewbook, new newbook(
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
    echo json_encode($arraynewbook);
    class newbook{
        public function __construct ($id, $tensach, $tentacgia, $soluong, $theloai, $gia, $hinhanh, $mota){
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