<?php

require '../connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    # CODE
    $response = [];
    $IdUmum = $_POST['IdUmum'];
    $cek = "SELECT * FROM akunusersumum WHERE IdUmum= '$IdUmum'";
    $result = mysqli_fetch_assoc(mysqli_query($conn, $cek));
    // echo json_encode($result);
    // die

    if (isset($result)) {
        # code...
        $response['value'] = 1;
        $response['message'] = 'Mengambil data berdasarkan Id Berhasil';
        $response['IdUmum'] = $result['IdUmum'];
        $response['Username'] = $result['Username'];
        $response['Password'] = $result['Password'];
        $response['JenisKelamin'] = $result['JenisKelamin'];
        $response['Nama'] = $result['Nama'];
        $response['TglLahir'] = $result['TglLahir'];
        $response['Email'] = $result['Email'];
        $response['NomorTelp'] = $result['NomorTelp'];
        $response['NIK'] = $result['NIK'];
        $response['NomorKK'] = $result['NomorKK'];

        $response['FotoProfile'] = $result['FotoProfile'];
        // $response['WaktuRegister'] = $result['WaktuRegister'];
        // $response['systemAntrian'] = $result['systemAntrian'];

        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = 'Gagal mendapatkan data';
        echo json_encode($response);
        echo json_encode($result);
    }
}
?>

