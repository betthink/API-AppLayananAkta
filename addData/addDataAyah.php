<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    // $data =["message"=> "test"];
    // echo json_encode($_POST['Username']);
    $response = array();
    $Id = $_POST['Id'];
    $NIK = $_POST['NIK'];
    $NamaLengkap = $_POST['NamaLengkap'];
    $Tempat_Kelahiran = $_POST['Tempat_Kelahiran'];
    $Waktu_Kelahiran = $_POST['Waktu_Kelahiran'];
    $Alamat = $_POST['Alamat'];
    $Kewarganegaraan = $_POST['Kewarganegaraan'];
    $Kebangsaan = $_POST['Kebangsaan'];



    $insert = "INSERT INTO dataayah VALUE('$Id','$NIK', '$NamaLengkap', '$Tempat_Kelahiran','$Waktu_Kelahiran','$Alamat','$Kewarganegaraan',   '$Kebangsaan')";


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
