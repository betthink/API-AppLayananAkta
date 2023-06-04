<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $IdAntrian = $_POST['IdAntrian'];
    $IdAdmin = $_POST['IdAdmin'];
    

    $insert = "UPDATE `antrianvalid` SET `Status` = 'Diproses', `IdAdmin` = '$IdAdmin' WHERE `antrianvalid`.`IdAntrian` = '$IdAntrian'";
    // var_dump($insert); die;


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