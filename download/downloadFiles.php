<?php
//koneksi ke database
require"../connect.php";
$Id = $_POST["Id"];
//ambil data file dari database
$sql = "SELECT * FROM filesupload WHERE Id= $Id "; 
$result = mysqli_query($conn, $sql);

$row = mysqli_fetch_assoc($result);

//set header untuk melakukan download
header("Content-Type: ".$row['KK']);
header("Content-Disposition: attachment; filename=".$row['KK']);
header("Content-Type: ".$row['KTP_Ibu']);
header("Content-Disposition: attachment; filename=".$row['KTP_Ibu']);
header("Content-Type: ".$row['KTP_Ayah']);
header("Content-Disposition: attachment; filename=".$row['KTP_Ayah']);

//tampilkan data file
echo $row['KK'];
echo $row['KTP_Ibu'];
echo $row['KTP_Ayah'];
?>
