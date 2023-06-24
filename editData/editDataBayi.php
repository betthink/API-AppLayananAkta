<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
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


    $insert = "UPDATE databayi SET Password=Nama='$Nama', Jenis_Kelamin='$Jenis_Kelamin', Tempat_Kelahiran='$Tempat_Kelahiran', Waktu_Kelahiran='$Waktu_Kelahiran', Kelahiran='$Kelahiran', Penolong_Bayi='$Penolong_Bayi, Berat_Bayi='$Berat_Bayi',Panjang_Bayi='$Panjang_Bayi'' WHERE Id='$Id'";
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
