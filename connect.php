
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbName = "aplikasi_layanan_akta";
$conn = mysqli_connect($servername, $username, $password,$dbName);
if (!$conn) {
    die('connection failed:'. mysqli_connect_errno());
} 
?>