<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $Id = $_POST['IdAnak'];
    $Pesan = $_POST['Pemberitahuan'];


    $insert = "UPDATE `databayi` SET Pemberitahuan = '$Pesan' WHERE `databayi`.`IdAnak` = '$Id'";
// var_dump($insert);die;

    if (mysqli_query($conn, $insert)) {
        # code...
        $response['value'] = 1;
        $response['message'] = "Pesan berhasil dikirim";

        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Pesan gagal dikirim";
        echo json_encode($response);
    }
}

// <!-- UPDATE `users` SET `StatusLayanan` = '1' WHERE `users`.`Id` = 3; -->