<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    // $data =["message"=> "test"];
    // echo json_encode($_POST['Username']);
    $response = array();
    $IdAntrian = $_POST['IdAntrian'];
    $IdUser = $_POST['IdUser'];




    $insert = "INSERT INTO antrianvalid VALUE ('$IdAntrian',NOW(), NULL, NULL, NULL, NULL, 'Terdaftar', '$IdUser', NULL)";

    // var_dump($insert); die;
    if (mysqli_query($conn, $insert)) {
        # code...
        $response['value'] = 1;
        $response['message'] = "Berhasil Terdaftar";
        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Gagal Didaftarkan";
        echo json_encode($response);
    }
}
