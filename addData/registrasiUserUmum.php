
<?php

require "../connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    # code...
    // $data =["message"=> "test"];
    // echo json_encode($_POST['Username']);
    $response = array();
    $Password = $_POST['Password'];
    $Nama = $_POST['Nama'];
    $Email = $_POST['Email'];
    $NomorTelp = $_POST['NomorTelp'];
    $NIK = $_POST['NIK'];
    $FotoProfile = basename($_FILES["FotoProfile"]["name"]);
    $tmp_FotoProfile = $_FILES["FotoProfile"]["tmp_name"];
    // // $WaktuPendaftaran = $_POST['WaktuPendaftaran'];
    // // $id = $_POST['id'];
    $cekNama = "SELECT * FROM users WHERE Nama='$Nama'";
    $cekNIK = "SELECT * FROM users WHERE NIK='$NIK'";

    // // ?Cek apakah ada nik yang sama
    $resNama = mysqli_fetch_array(mysqli_query($conn, $cekNama));
    $resNIK = mysqli_fetch_array(mysqli_query($conn, $cekNIK));

    if (isset($resNama)) {
        $response['value'] = 2;
        $response['message'] = "Nama Sudah digunakan";
        echo json_encode($response);
    } else if (isset($resNIK)) {
        $response['value'] = 3;
        $response['message'] = "NIK Sudah digunakan";
        echo json_encode($response);
    } else {
        $targetDir = "../../aplikasiLayananAkta/uploads/FotoProfile/{$NIK}/";
        function moveFile($tmpFile, $targetFile)
        {
            // buat folder
            global $NIK;
            $cek_Dir = "../../aplikasiLayananAkta/uploads/FotoProfile/{$NIK}";
            if (is_dir($cek_Dir)) {
                $response['message'] = "Folder Sudah Ada";
                echo json_encode($response);
                return false;
            } else {
                mkdir("../../aplikasiLayananAkta/uploads/FotoProfile/{$NIK}", 0777, true);
                if (move_uploaded_file($tmpFile, $targetFile)) {
                    return true;
                } else {
                    return false;
                }
            }
        }
        if (moveFile($tmp_FotoProfile, $targetDir . $FotoProfile)) {
            //   return true;
            
        //   echo "Berhasil upload Foto";

           
        } else {

            $response['message'] = "Gagal upload Foto";
            echo json_encode($response);
            return false;
        }

        $insert = "INSERT INTO users VALUE(NULL,'$Password','$Nama','$Email','$NomorTelp','$NIK','$FotoProfile',NOW(),'Umum','')";
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
