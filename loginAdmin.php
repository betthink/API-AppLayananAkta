<?php

require './connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    # CODE
    $response = [];
    $Username = $_POST['Username'];
    $Password = $_POST['Password'];

    $cek = "SELECT * FROM akunusersadmin WHERE Username='$Username' and Password='$Password'";
    $result = mysqli_fetch_assoc(mysqli_query($conn, $cek));

    if (isset($result)) {
        # code...
        $response['value'] = 1;
        $response['message'] = 'Login Berhasil';
        $response['Username'] = $result['Username'];
        $response['Nama'] = $result['Nama'];
        $response['IdAdmin'] = $result['IdAdmin'];
        $response['NIK'] = $result['NIK'];
        $response['FotoProfile'] = $result['FotoProfile'];
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
