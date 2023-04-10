<?php

require "./connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    $response = array();
    $IdAdmin = $_POST['IdAdmin'];
    $Username = $_POST['Username'];
    $Password = $_POST['Password'];
    $JenisKelamin = $_POST['JenisKelamin'];
    $Nama = $_POST['Nama'];
    $TglLahir = $_POST['TglLahir'];
    $Email = $_POST['Email'];
    $NomorTelp = $_POST['NomorTelp'];
    $NIK = $_POST['NIK'];
    $NomorKK = $_POST['NomorKK'];
    $FotoProfile = $_POST['FotoProfile'];

    $insert = "UPDATE akunusersadmin SET Username='$Username', Password='$Password', JenisKelamin='$JenisKelamin', Nama='$Nama', TglLahir='$TglLahir', Email='$Email', Email='$Email', NomorTelp='$NomorTelp', NIK='$NIK', NomorKK='$NomorKK', FotoProfile='$FotoProfile' WHERE IdAdmin='$IdAdmin'";
    if (mysqli_query($conn, $insert)) {
        # code...
        $response['value'] = 1;
        $response['message'] = "Data Berhasil dirubah";
        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Gagal Merubah Data";
        echo json_encode($response);
    }  
}  
