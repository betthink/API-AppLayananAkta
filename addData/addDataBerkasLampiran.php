<?php

require "../connect.php";
// File KK
$Id = $_POST["Id"];
$file_KK = basename($_FILES["KK"]["name"]);
$Size_file_KK = $_FILES["KK"]["size"];
$Tmp_file_KK = $_FILES["KK"]["tmp_name"];
// Data Ktp Ibu
$file_KTP_Ibu =  basename($_FILES["KTP_Ibu"]["name"]);
$Size_file_KTP_Ibu = $_FILES["KTP_Ibu"]["size"];
$Tmp_file_KTP_Ibu = $_FILES["KTP_Ibu"]["tmp_name"];
// Data Ktp Ayah
$file_KTP_Ayah =basename($_FILES["KTP_Ayah"]["name"]);
$Size_file_KTP_Ayah = $_FILES["KTP_Ayah"]["size"];
$Tmp_file_KTP_Ayah = $_FILES["KTP_Ayah"]["tmp_name"];
// Data Ket NIkah
$file_Ket_Nikah =basename($_FILES["Ket_Nikah"]["name"]);
$Size_file_Ket_Nikah = $_FILES["Ket_Nikah"]["size"];
$Tmp_file_Ket_Nikah = $_FILES["Ket_Nikah"]["tmp_name"];
// Data Ket Lahir anak
$file_Ket_LahirAnak =basename($_FILES["Ket_LahirAnak"]["name"]);
$Size_file_Ket_LahirAnak = $_FILES["Ket_LahirAnak"]["size"];
$Tmp_file_Ket_LahirAnak = $_FILES["Ket_LahirAnak"]["tmp_name"];
// Data Ket KTP_Saksi
$file_KTP_Saksi =basename($_FILES["KTP_Saksi"]["name"]);
$Size_file_KTP_Saksi = $_FILES["KTP_Saksi"]["size"];
$Tmp_file_KTP_Saksi = $_FILES["KTP_Saksi"]["tmp_name"];
// Data Ket KTP_Saksi
$file_KTP_Saksi2 =basename($_FILES["KTP_Saksi2"]["name"]);
$Size_file_KTP_Saksi2 = $_FILES["KTP_Saksi2"]["size"];
$Tmp_file_KTP_Saksi2 = $_FILES["KTP_Saksi2"]["tmp_name"];


function uploadFiles ($file_name, $newFolder, $file_size, $file_tmp)  {
  
$newDir = mkdir("../../aplikasiLayananAkta/uploads/{$newFolder}", 0777, true);

if (isset($newDir)) {
    $target_dir = "../../aplikasiLayananAkta/uploads/{$newFolder}/";
    // Check if the file already exists
    if (file_exists($target_dir . $file_name)) {
        echo "File already exists.";
        exit;
        // if (isset($insert)) {
        // }
    }
    // Check if the file size is within the allowed limit (1MB)
    if ($file_size > 10000000) {
        echo "Ukuran File melebihi batas minimum.";
        exit;
    }
    // Move the uploaded file to the target directory
    if (move_uploaded_file($file_tmp, $target_dir . $file_name)) {
        echo "File uploaded successfully.";
        // $insert = "INSERT INTO filesupload VALUE ()";
    } else {
        echo "File upload failed.";
    }
}
}
uploadFiles($file_Ket_LahirAnak, $Id, $Size_file_KK,$Tmp_file_KK );
uploadFiles($file_KK, $Id, $Size_file_Ket_LahirAnak,$Tmp_file_Ket_LahirAnak);




// function uploadFile($file, $target_dir) {
 


//   // memeriksa apakah ada error pada file yang diupload

// //   if ($file["error"] !== UPLOAD_ERR_OK) {
// //     echo "Upload failed with error code " . $file["error"];
// //     return false;
// //   }  

//   // memeriksa apakah file yang diupload sudah ada di server
//   if (file_exists($target_dir . $file["name"])) {
//     echo "File already exists.";
//     return false;
//   }

//   // mengupload file ke server
//   if (move_uploaded_file($file["tmp_name"], $target_dir . $file["name"])) {
//     echo "File uploaded successfully.";
//     return true;
//   } else {
//     echo "Upload failed.";
//     return false;
//   }
// }
