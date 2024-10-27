<?php
    include "connect.php";
    $query = "SELECT * FROM theloaisach";
    $data = mysqli_query($conn, $query);
    $mangloaisp = array();
    while ($row = mysqli_fetch_assoc($data)){
        array_push($mangloaisp, new phanloaisach(
            $row['idtheloai'],
            $row['theloai'],
            $row['hinhanh'],
        ));
    }
    echo json_encode($mangloaisp);

    class phanloaisach{
    public $idtheloai;
    public $theloai;
    public $hinhanh;
    public function __construct($idtheloai,$theloai,$hinhanh){
		$this->idtheloai=$idtheloai;
		$this->theloai=$theloai;
		$this->hinhanh=$hinhanh;
	}
	}
?>
