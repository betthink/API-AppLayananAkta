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
    // $NIK = $_POST['NIK'];
    // upload foto
    // $FotoProfile = basename($_FILES["FotoProfile"]["name"]);
    // $tmp_FotoProfile = $_FILES["FotoProfile"]["tmp_name"];
    // $cekNama = "SELECT * FROM users WHERE Nama='$Nama'";


    // // ?Cek apakah ada nik yang sama

    // $targetDir = "../../aplikasiLayananAkta/uploads/FotoProfile/{$NIK}/";
    // function moveFile($tmpFile, $targetFile)
    // {
    //     if (move_uploaded_file($tmpFile, $targetFile)) {
    //         return true;
    //     } else {
    //         return false;
    //     }
    // }
// if (moveFile($tmp_FotoProfile, $targetDir . $FotoProfile)) {
    //   return true    
    // $res['pesan'] = "Berhasil upload Foto";
    // echo json_encode($res);   
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
// } else {
//     $response['message'] = "Gagal upload Foto";
//     echo json_encode($response);
//     return false;
// }
}