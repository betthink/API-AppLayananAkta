<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $Id = $_POST['Id'];
     $IdPengambilan = $_POST['IdPengambilan'];
    

    $insert = "UPDATE `antrianvalid` SET `WaktuSelesai` = NOW(), `Status` = 'Selesai', `IdPengambilan`=$IdPengambilan WHERE `antrianvalid`.`IdAntrian` = $Id";


    if (mysqli_query($conn, $insert)) {
        # code...
        $response['value'] = 1;
        $response['message'] = "Layanan sudah selesai";
       
        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Gagal menyelesaikan Layanan";
        echo json_encode($response);
    }
}
