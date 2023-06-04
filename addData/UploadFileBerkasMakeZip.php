<?php
require "../connect.php";
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['KK']) && isset($_FILES['KTP_Ibu']) && isset($_FILES['KTP_Ayah']) && isset($_FILES['Ket_Nikah']) && isset($_FILES['Ket_LahirAnak']) && isset($_FILES['KTP_Saksi']) && isset($_FILES['KTP_Saksi2']) && isset($_POST['IdUser']) && isset($_POST['IdAnak'])) {
     // Data non-file
  $idUser = $_POST['IdUser'];
  $idAnak = $_POST['IdAnak'];
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
    // Menginisialisasi objek ZipArchive
    $zip = new ZipArchive();
    
    // Direktori tujuan untuk menyimpan file dan file zip
    $directory = "../../aplikasiLayananAkta/uploads/berkasPersyaratan/{$idAnak}/";
    $fileDatabase = "{$idAnak}.zip";
    $zipFilename = "../../aplikasiLayananAkta/uploads/berkasPersyaratan/{$idAnak}.zip";

    
    // Memeriksa apakah direktori tujuan sudah ada, jika belum, buat direktori tersebut
    if (!is_dir($directory)) {
        mkdir($directory, 0777, true);
    }
    
    // Memindahkan file yang diunggah ke direktori tujuan
    $count = 0;
    function moveFile($tmpFile, $targetFile)
    {
        global $count;
        if (move_uploaded_file($tmpFile, $targetFile)) {
            $count++;
            return true;
        } else {
            return false;
        }
    }
    
    // Periksa apakah semua file berhasil diunggah
    if (moveFile($tmp_file_KK, $directory . $file_KK) &&
        moveFile($tmp_file_KTP_Ibu, $directory . $file_KTP_Ibu) &&
        moveFile($tmp_file_KTP_Ayah, $directory . $file_KTP_Ayah) &&
        moveFile($tmp_file_Ket_Nikah, $directory . $file_Ket_Nikah) &&
        moveFile($tmp_file_Ket_LahirAnak, $directory . $file_Ket_LahirAnak) &&
        moveFile($tmp_file_KTP_Saksi, $directory . $file_KTP_Saksi) &&
        moveFile($tmp_file_KTP_Saksi2, $directory . $file_KTP_Saksi2)) {
        
        // Semua file berhasil diunggah, buat file zip
        if ($zip->open($zipFilename, ZipArchive::CREATE) === true) {                                                                                                    
            // Menambahkan file ke dalam file zip
            $zip->addGlob($directory . '*');
            
            // Menutup file zip
            if ($zip->close() && $count >= 7) {
                // Menghapus folder yang sudah di-zip
                if (is_dir($directory)) {
                    $filesToDelete = glob($directory . '*');
                    foreach ($filesToDelete as $fileToDelete) {
                        if (is_file($fileToDelete)) {
                            unlink($fileToDelete);
                        }
                    }
                    rmdir($directory);
                }
            }
            // Simpan data file dan non-file ke database atau lakukan tindakan lain sesuai kebutuhan Anda
            $insert = "INSERT INTO filespersyaratan VALUE('$idAnak','$fileDatabase', NOW(),'$idUser')";
            
            if (mysqli_query($conn, $insert)) {
                $response['value'] = 1;
                $response['message'] = "Berhasil Membuat Antrian";
                echo json_encode($response);
            } else {
                $response['value'] = 0;
                $response['message'] = "Gagal Membuat Antrian";
                echo json_encode($response);
            }
        } else {
            echo json_encode(['success' => false, 'message' => 'Error creating zip file']);
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Error uploading files']);
        return false;
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request']);
}
