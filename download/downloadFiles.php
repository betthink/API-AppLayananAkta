<?php
// ob_start();
require "../connect.php";
$idAnak = $_GET['IdAnak']; // Misalnya, mendapatkan ID anak dari parameter URL
$query = "SELECT fileCompresed FROM filespersyaratan WHERE IdAnak = '$idAnak'";
// var_dump($result); die;
$result = mysqli_query($conn, $query);
// var_dump($result); die;
$row = mysqli_fetch_assoc($result);
$zipFilename = $row['fileCompresed'];
$file_url = '../uploads/berkasPersyaratan/' . $zipFilename; // Ganti dengan path ke file zip yang ingin diunduh
// var_dump($file_url); die;
$file_name = basename($file_url); // Nama file yang akan digunakan saat menyimpan file di komputer pengguna

header('Content-Type: application/octet-stream');
header('Content-Transfer-Encoding: Binary');
header("Content-disposition: attachment; filename=\"" . $file_name . "\"");

readfile($file_url);
