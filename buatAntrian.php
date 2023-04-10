<?php
require './connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    # code...    // $data =["message"=> "test"];
    // echo json_encode($_POST['Username']);
    $response = [];
    // $IdAntrian = $_POST['IdAntrian'];
    $KK = $_POST['KK'];
    $KTPIbu = $_POST['KTPIbu'];
    $KTPBapak = $_POST['KTPBapak'];
    $BukuNikah = $_POST['BukuNikah'];
    $KeteranganLahir = $_POST['KeteranganLahir'];
    $FormulirAktaKelahiran = $_POST['FormulirAktaKelahiran'];
    $KTPSaksi = $_POST['KTPSaksi'];
    $Status = $_POST['Status'];
    $WaktuPendaftaran = $_POST['WaktuPendaftaran'];
    $Pemberitahuan = $_POST['Pemberitahuan'];
    $WaktuSelesai = $_POST['WaktuSelesai'];
    // // $WaktuPendaftaran = $_POST['WaktuPendaftaran'];
    $IdUmum = $_POST['IdUmum'];
    $cek = "SELECT * FROM antrian WHERE KTPBapak='$KTPBapak'";

    // // ?Cek apakah ada Username yang sama
    $result = mysqli_fetch_array(mysqli_query($conn, $cek));
    // var_dump($result);

    if (isset($result)) {
        $response['value'] = 2;
        $response['message'] = 'sudah ada digunakan';
        echo json_encode($response);
    } else {
        $insert = "INSERT INTO `antrian` VALUES(NULL, '$KK', '$KTPIbu', '$KTPBapak', '$BukuNikah', '$KeteranganLahir', '$FormulirAktaKelahiran', '$KTPSaksi', DEFAULT, '$Pemberitahuan', NOW(), NOW(), $IdUmum );";
        if (mysqli_query($conn, $insert)) {
            # code...
            $response['value'] = 1;
            $response['message'] = 'Berhasil Mendfatarkan Antrian';
            echo json_encode($response);
        } else {
            # code...
            $response['value'] = 0;
            $response['message'] = 'Gagal Membuat Antrian';
            echo json_encode($response);
        }
    }
}
