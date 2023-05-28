<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $Id = $_POST['Id'];
    $Pesan = $_POST['Pemberitahuan'];


    $insert = "UPDATE `users` SET Pemberitahuan = '$Pesan' WHERE `users`.`Id` = '$Id'";


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