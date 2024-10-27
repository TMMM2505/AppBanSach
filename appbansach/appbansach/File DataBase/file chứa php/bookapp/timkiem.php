<?php
    include "connect.php";

    $search = $_POST['search'];

    $query = "SELECT * FROM `chitietsach` WHERE `tensach` LIKE '%".$search."%' ";
    $data = mysqli_query($conn, $query);
    $result = array();
    while ($row = mysqli_fetch_assoc($data)){
        $result[] = ($row);
    }
    if(!empty($result)){
        $arr = [
            'success' => true,
            'message' => "Thành Công",
            'result'  => $result
        ];
    }
    else {
        $arr = [
            'success' => false,
            'message' => "Error",
            'result'  => $result
        ];
    }
    print_r(json_encode($arr));




?>    