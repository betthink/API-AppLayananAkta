<?php

require './connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    # CODE
    $response = [];
    $Username = $_POST['Username'];
    $Password = $_POST['Password'];

    $cek = "SELECT * FROM users WHERE Username='$Username' and Password='$Password'";
    $result = mysqli_fetch_assoc(mysqli_query($conn, $cek));

    if (isset($result)) {
        # code...
        $response['value'] = 1;
        $response['message'] = 'Login Berhasil';
        $response['Id'] = $result['Id'];
        $response['Username'] = $result['Username'];
        $response['FotoProfile'] = $result['FotoProfile'];
        $response['Level'] = $result['Level'];
        $response['Password'] = $result['Password'];
        $response['JenisKelamin'] = $result['JenisKelamin'];
        $response['Nama'] = $result['Nama'];
        $response['TglLahir'] = $result['TglLahir'];
        $response['Email'] = $result['Email'];
        $response['NomorTelp'] = $result['NomorTelp'];
        $response['NIK'] = $result['NIK'];
        $response['NomorKK'] = $result['NomorKK'];
        $response['WaktuRegister'] = $result['WaktuRegister'];
        $response['systemAntrian'] = $result['systemAntrian'];

        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = 'Login Gagal';
        echo json_encode($response);
    }
}

?>
