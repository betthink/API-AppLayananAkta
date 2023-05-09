<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    // $data =["message"=> "test"];
    // echo json_encode($_POST['Username']);
    $response = array();
    $IdUser = $_POST['IdUser'];
    $Nama = $_POST['Nama'];
    $JenisKelamin = $_POST['JenisKelamin'];
    $TempatPersalinan = $_POST['TempatPersalinan'];
    $TempatKelahiran = $_POST['TempatKelahiran'];
    $DateKelahiran = $_POST['DateKelahiran'];
    $TimeKelahiran = $_POST['TimeKelahiran'];
    $UrutanKelahiran = $_POST['UrutanKelahiran'];
    $PenolongBayi = $_POST['PenolongBayi'];
    $BeratBayi = $_POST['BeratBayi'];
    $PanjangBayi = $_POST['PanjangBayi'];
   

    $insert = "INSERT INTO databayi VALUES (NULL, '$Nama', '$JenisKelamin', '$TempatPersalinan', '$TempatKelahiran', '$DateKelahiran', '$TimeKelahiran', '$UrutanKelahiran', '$PenolongBayi', '$BeratBayi', '$PanjangBayi', '$IdUser')";
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
