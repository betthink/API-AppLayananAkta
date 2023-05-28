<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $Id = $_POST['Id'];
    $Password = $_POST['Password'];
    $Nama = $_POST['Nama'];
    $Email = $_POST['Email'];
    $NomorTelp = $_POST['NomorTelp'];
   
    $insert = "UPDATE users SET Password='$Password', Nama='$Nama', Email='$Email', NomorTelp='$NomorTelp' WHERE Id='$Id'";
    if (mysqli_query($conn, $insert)) {
        # code...
        $response['value'] = 1;
        $response['message'] = "Data akun Berhasil dirubah";
        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Gagal Merubah Data akun";
        echo json_encode($response);
    }  

}