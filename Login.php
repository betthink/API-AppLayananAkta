<?php

require './connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    # CODE
    $response = [];
    $Nama = $_POST['Nama'];
    $Password = $_POST['Password'];

    $cek = "SELECT * FROM users WHERE Nama='$Nama' and Password='$Password'";
    $result = mysqli_fetch_assoc(mysqli_query($conn, $cek));

    if (isset($result)) {
        # code...
        $response['value'] = 1;
        $response['message'] = 'Login Berhasil';
        $response['Id'] = $result['Id'];
        $response['FotoProfile'] = $result['FotoProfile'];
        $response['Level'] = $result['Level'];
        $response['Password'] = $result['Password'];
        $response['Nama'] = $result['Nama'];
        $response['Email'] = $result['Email'];
        $response['NomorTelp'] = $result['NomorTelp'];
        $response['NIK'] = $result['NIK'];
        $response['WaktuRegister'] = $result['WaktuRegister'];
        $response['StatusLayanan'] = $result['StatusLayanan'];

        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = 'Login Gagal';
        echo json_encode($response);
    }
}

?>
