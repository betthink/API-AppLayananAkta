<?php

require "../connect.php";
// File KK
$IdUser = $_POST["IdUser"];
$IdAnak = $_POST["IdAnak"];
$file_KK = basename($_FILES["KK"]["name"]);
$Tmp_file_KK = $_FILES["KK"]["tmp_name"];
// Data Ktp Ibu
$file_KTP_Ibu =  basename($_FILES["KTP_Ibu"]["name"]);
$Tmp_file_KTP_Ibu = $_FILES["KTP_Ibu"]["tmp_name"];
// Data Ktp Ayah
$file_KTP_Ayah = basename($_FILES["KTP_Ayah"]["name"]);
$Tmp_file_KTP_Ayah = $_FILES["KTP_Ayah"]["tmp_name"];
// // Data Ket NIkah
$file_Ket_Nikah = basename($_FILES["Ket_Nikah"]["name"]);
$Tmp_file_Ket_Nikah = $_FILES["Ket_Nikah"]["tmp_name"];
// // Data Ket Lahir anak
$file_Ket_LahirAnak = basename($_FILES["Ket_LahirAnak"]["name"]);
$Tmp_file_Ket_LahirAnak = $_FILES["Ket_LahirAnak"]["tmp_name"];
// // Data Ket KTP_Saksi
$file_KTP_Saksi = basename($_FILES["KTP_Saksi"]["name"]);
$Tmp_file_KTP_Saksi = $_FILES["KTP_Saksi"]["tmp_name"];
// // Data Ket KTP_Saksi
$file_KTP_Saksi2 = basename($_FILES["KTP_Saksi2"]["name"]);
$Tmp_file_KTP_Saksi2 = $_FILES["KTP_Saksi2"]["tmp_name"];

$count = 0;
// $Id_name = $_POST["Id"];
function uploadFiles($file_name, $file_tmp)
{

    // buat folder
    global $IdUser;
    $cek_Dir = "../../aplikasiLayananAkta/uploads/{$IdUser}";
    if (is_dir($cek_Dir)) {
        echo "sudah ada folder <br>";
    } else {
        mkdir("../../aplikasiLayananAkta/uploads/{$IdUser}", 0777, true);
    }

    // upload file to folder
    $target_dir = "../../aplikasiLayananAkta/uploads/{$IdUser}/";
    if (move_uploaded_file($file_tmp, $target_dir . $file_name)) {
        echo "File uploaded successfully.";
        // $insert = "INSERT INTO filesupload VALUE ()";
    } else {
        echo "File upload failed.";
    }

    // ambil global variable
    global $count;
    $count++;
}
uploadFiles($file_KK, $Tmp_file_KK);
uploadFiles($file_KTP_Ibu, $Tmp_file_KTP_Ibu);
uploadFiles($file_KTP_Ayah, $Tmp_file_KTP_Ayah);
uploadFiles($file_Ket_Nikah, $Tmp_file_Ket_Nikah);
uploadFiles($file_Ket_LahirAnak, $Tmp_file_Ket_LahirAnak);
uploadFiles($file_KTP_Saksi, $Tmp_file_KTP_Saksi);
uploadFiles($file_KTP_Saksi2, $Tmp_file_KTP_Saksi2);

if ($count == 7) {

    $insert = "INSERT INTO filesupload VALUE('$IdAnak','$file_KK','$file_KTP_Ibu','$file_KTP_Ayah','$file_Ket_Nikah','$file_Ket_LahirAnak','$file_KTP_Saksi','$file_KTP_Saksi2',NOW(),'$IdUser')";
    // var_dump($insert); die;
    // $insert = "INSERT INTO filesupload VALUE('1','1','1','1','1','1','1','1')";

    if (mysqli_query($conn, $insert)) {
        echo "Data berhasil di uplload ke database";
    } else {
        echo "gagal upload ke database";
    }
} else {
    echo "belum";
}
