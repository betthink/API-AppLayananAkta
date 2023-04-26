<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $Id = $_POST['Id'];
    $NIK = $_POST['NIK'];
    $NamaLengkap = $_POST['NamaLengkap'];
    $Tempat_Kelahiran = $_POST['Tempat_Kelahiran'];
    $Waktu_Kelahiran = $_POST['Waktu_Kelahiran'];
    $Alamat = $_POST['Alamat'];
    $Kewarganegaraan = $_POST['Kewarganegaraan'];
    $Kebangsaan = $_POST['Kebangsaan'];

    $insert = "UPDATE dataayah SET NIK = '$NIK', NamaLengkap = '$NamaLengkap', Tempat_Kelahiran = '$Tempat_Kelahiran', Waktu_Kelahiran = '$Waktu_Kelahiran', Alamat = '$Alamat', Kewarganegaraan = '$Kewarganegaraan', Kebangsaan = '$Kebangsaan' WHERE dataayah.Id =$Id";


    if (mysqli_query($conn, $insert)) {
        # code...
        $response['value'] = 1;
        $response['message'] = "Data Berhasil dirubah";
        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Gagal Merubah Data";
        echo json_encode($response);
    }
}
