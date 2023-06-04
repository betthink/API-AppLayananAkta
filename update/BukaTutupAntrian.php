<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $Id = $_POST['Id'];
    $StatusLayanan = $_POST['StatusLayanan'];
    

    $insert = "UPDATE `users` SET `StatusLayanan` = '$StatusLayanan' WHERE `users`.`Id` = $Id;";


    if (mysqli_query($conn, $insert)) {
        # code...
        $response['value'] = 1;
        $response['message'] = "Status antrian dirubah";
        $response['StatusLayanan'] = $StatusLayanan;
        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Gagal Merubah Data";
        echo json_encode($response);
    }
}

// <!-- UPDATE `users` SET `StatusLayanan` = '1' WHERE `users`.`Id` = 3; -->