<?php
// Pastikan Anda telah mengatur ukuran maksimum unggahan file pada konfigurasi PHP Anda (upload_max_filesize dan post_max_size)
require "../connect.php";
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['KK']) && isset($_FILES['KTP_Ibu']) && isset($_FILES['KTP_Ayah']) && isset($_FILES['Ket_Nikah']) && isset($_FILES['Ket_LahirAnak']) && isset($_FILES['KTP_Saksi']) && isset($_FILES['KTP_Saksi2']) && isset($_POST['IdUser']) && isset($_POST['IdAnak'])) {

  // File KK
  $file_KK = basename($_FILES["KK"]["name"]);
  $tmp_file_KK = $_FILES["KK"]["tmp_name"];

  // File KTP Ibu
  $file_KTP_Ibu =  basename($_FILES["KTP_Ibu"]["name"]);
  $tmp_file_KTP_Ibu = $_FILES["KTP_Ibu"]["tmp_name"];

  // File KTP Ayah
  $file_KTP_Ayah = basename($_FILES["KTP_Ayah"]["name"]);
  $tmp_file_KTP_Ayah = $_FILES["KTP_Ayah"]["tmp_name"];

  // File Ket Nikah
  $file_Ket_Nikah = basename($_FILES["Ket_Nikah"]["name"]);
  $tmp_file_Ket_Nikah = $_FILES["Ket_Nikah"]["tmp_name"];

  // File Ket Lahir anak
  $file_Ket_LahirAnak = basename($_FILES["Ket_LahirAnak"]["name"]);
  $tmp_file_Ket_LahirAnak = $_FILES["Ket_LahirAnak"]["tmp_name"];

  // File KTP Saksi
  $file_KTP_Saksi = basename($_FILES["KTP_Saksi"]["name"]);
  $tmp_file_KTP_Saksi = $_FILES["KTP_Saksi"]["tmp_name"];

  // File KTP Saksi 2
  $file_KTP_Saksi2 = basename($_FILES["KTP_Saksi2"]["name"]);
  $tmp_file_KTP_Saksi2 = $_FILES["KTP_Saksi2"]["tmp_name"];

  // Data non-file
  $idUser = $_POST['IdUser'];
  $idAnak = $_POST['IdAnak'];

  // Direktori tujuan untuk menyimpan file
//   $targetDir = 'uploads/';
$targetDir = "../../aplikasiLayananAkta/uploads/berkasPersyaratan/{$idAnak}/";
  // Fungsi untuk memindahkan file ke direktori tujuan
  $count = 0;
  function moveFile($tmpFile, $targetFile)
  {
      // buat folder
      global $idAnak , $count;
      $cek_Dir = "../../aplikasiLayananAkta/uploads/berkasPersyaratan/{$idAnak}";
      if (is_dir($cek_Dir)) {
          // echo "sudah ada folder";

          // return true;
      } else {
          mkdir("../../aplikasiLayananAkta/uploads/berkasPersyaratan/{$idAnak}", 0777, true);
      }
   

    if (move_uploaded_file($tmpFile, $targetFile)) {
        $count++;
      return true;
     
    } else {
      return false;
    }
   
   
  }

  // Periksa apakah semua file berhasil diunggah
  if (moveFile($tmp_file_KK, $targetDir . $file_KK) &&
      moveFile($tmp_file_KTP_Ibu, $targetDir . $file_KTP_Ibu) &&
      moveFile($tmp_file_KTP_Ayah, $targetDir . $file_KTP_Ayah) &&
      moveFile($tmp_file_Ket_Nikah, $targetDir . $file_Ket_Nikah) &&
      moveFile($tmp_file_Ket_LahirAnak, $targetDir . $file_Ket_LahirAnak) &&
      moveFile($tmp_file_KTP_Saksi, $targetDir . $file_KTP_Saksi) &&
      moveFile($tmp_file_KTP_Saksi2, $targetDir . $file_KTP_Saksi2)) {

    // Semua file berhasil diunggah, lakukan tindakan selanjutnya
    // ...
    // Contoh: Simpan data file dan non-file ke database atau lakukan tindakan lain sesuai kebutuhan Anda

    // echo json_encode(['message' => 'All files uploaded successfully']);
  } else {
    echo json_encode(['success' => false, 'message' => 'Error uploading files']);
    return false;
  }
} else {
  echo json_encode(['success' => false, 'message' => 'Invalid request']);
}

if ($count >= 7) {

    $insert = "INSERT INTO filesupload VALUE('$idAnak','$file_KK','$file_KTP_Ibu','$file_KTP_Ayah','$file_Ket_Nikah','$file_Ket_LahirAnak','$file_KTP_Saksi','$file_KTP_Saksi2',NOW(),'$idUser')";
    // var_dump($insert); die;
    // $insert = "INSERT INTO filesupload VALUE('1','1','1','1','1','1','1','1')";

    if (mysqli_query($conn, $insert)) {
         # code...
         $response['value'] = 1;
         $response['message'] = "Berhasil Membuat Antrian";
         echo json_encode($response);
        
    } else {
      $response['value'] = 0;
      $response['message'] = "Gagal Membuat Antrian";
      echo json_encode($response);
    }
} else {
    echo "belum";
}
