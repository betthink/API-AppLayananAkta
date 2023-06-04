<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    // $data =["message"=> "test"];
    // echo json_encode($_POST['Username']);
    $response = array();
    $Id = $_POST['Id'];
    $NIK = $_POST['NIK'];
    $Nama = $_POST['Nama'];
    $TempatKelahiran = $_POST['TempatKelahiran'];
    $DateKelahiran = $_POST['DateKelahiran'];
    $Alamat = $_POST['Alamat'];
    $Kewarganegaraan = $_POST['Kewarganegaraan'];
    $Kebangsaan = $_POST['Kebangsaan'];
    $Pekerjaan = $_POST['Pekerjaan'];
    $IdUser = $_POST['IdUser'];
    $insert = "INSERT INTO dataibu VALUES ('$Id', '$NIK', '$Nama', '$TempatKelahiran', '$DateKelahiran', '$Alamat', '$Kewarganegaraan', '$Kebangsaan','$Pekerjaan', '$IdUser')";

    // var_dump($insert);
    // die;
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
