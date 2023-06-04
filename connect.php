
<?php
$servername = "localhost";
$username = "u953310580_appAkta";
$password = "Mag00n4.@";
$dbName = "u953310580_dbAppAkta";
$conn = mysqli_connect($servername, $username, $password,$dbName);
if (!$conn) {
    die('connection failed:'. mysqli_connect_errno());
} 
?>