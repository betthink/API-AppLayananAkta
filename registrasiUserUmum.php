<?php

require "./connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    // $data =["message"=> "test"];
    // echo json_encode($_POST['Username']);
    $response = array();
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
    // // $WaktuPendaftaran = $_POST['WaktuPendaftaran'];
    // // $id = $_POST['id'];
    $cek = "SELECT * FROM akunusersumum WHERE Username='$Username'";

    // // ?Cek apakah ada Username yang sama
    $result = mysqli_fetch_array(mysqli_query($conn, $cek));

    if (isset($result)) {
        $response['value'] = 2;
        $response['message'] = "Username Sudah digunakan";
        echo json_encode($response);
    } else {
        $insert = "INSERT INTO akunusersumum VALUE(NULL, '$Username',  '$Password', '$JenisKelamin','$Nama','$TglLahir','$Email','$NomorTelp','$NIK','$NomorKK','$FotoProfile',NOW())";
        if (mysqli_query($conn, $insert)) {
            # code...
            $response['value'] = 1;
            $response['message'] = "Berhasil Terdaftar";
            echo json_encode($response);
        } else {
            # code...
            $response['value'] = 0;
            $response['message'] = "Gagal Didaftarkan";
            echo json_encode($response);
        }
    }
}
