<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    // $data =["message"=> "test"];
    // echo json_encode($_POST['Username']);
    $response = array();
    $Id=$_POST['Id'];
    $Nama=$_POST['Nama'];
    $Jenis_Kelamin=$_POST['Jenis_Kelamin'];
    $Tempat_Kelahiran =$_POST['Tempat_Kelahiran'];
    $Waktu_Kelahiran=$_POST['Waktu_Kelahiran'];
    $Kelahiran=$_POST['Kelahiran'];
    $Penolong_Bayi=$_POST['Penolong_Bayi'];
    $Berat_Bayi=$_POST['Berat_Bayi'];
    $Panjang_Bayi=$_POST['Panjang_Bayi'];

        $insert = "INSERT INTO databayi VALUE(NULL ,Nama='$Nama', Jenis_Kelamin='$Jenis_Kelamin', Tempat_Kelahiran='$Tempat_Kelahiran', Waktu_Kelahiran='$Waktu_Kelahiran', Kelahiran='$Kelahiran', Penolong_Bayi='$Penolong_Bayi, Berat_Bayi='$Berat_Bayi',Panjang_Bayi='$Panjang_Bayi')";
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
