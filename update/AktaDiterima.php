<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $IdAntrian = $_POST['IdAntrian'];

    

    $insert = "UPDATE `antrianvalid` SET `Status` = 'Diterima' WHERE `antrianvalid`.`IdAntrian` = $IdAntrian";
// var_dump($insert); die;

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
