<?php
    $update = "UPDATE chitietsach
            SET chitietsach.soluong = chitietsach.soluong - $soluong,
            chitietsach.daban = chitietsach.daban + $soluong
            WHERE chitietsach.id = $masach";
            mysqli_query($conn, $update);
?>