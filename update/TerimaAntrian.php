<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $Id = $_POST['Id'];
    

    $insert = "UPDATE `antrianvalid` SET `WaktuTerima` = NOW(), `Status` = 'Valid' WHERE `antrianvalid`.`IdAntrian` = $Id";


    if (mysqli_query($conn, $insert)) {
        # code...
        $response['value'] = 1;
        $response['message'] = "Status antrian dirubah";
       
        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Gagal Merubah Status antrian";
        echo json_encode($response);
    }
}

// <!-- UPDATE `users` SET `StatusLayanan` = '1' WHERE `users`.`Id` = 3; -->