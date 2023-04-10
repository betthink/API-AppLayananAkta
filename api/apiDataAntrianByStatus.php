

<?php
require '../connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    # CODE
    $response = [];
    $response['data'] = [];
    $Status = $_POST['Status'];
    $cek = "SELECT * FROM antrian WHERE Status= '$Status'";
    $result = mysqli_query($conn, $cek);
    // $result = mysqli_fetch_assoc($query);

    // echo json_encode($result);

    if (isset($result)) {
        while ($row = mysqli_fetch_assoc($result)) {
            $data = [];

            $data['IdAntrian'] = $row['IdAntrian'];
            $data['KK'] = $row['KK'];
            $data['KTPIbu'] = $row['KTPIbu'];
            $data['KTPBapak'] = $row['KTPBapak'];
            $data['BukuNikah'] = $row['BukuNikah'];
            $data['KeteranganLahir'] = $row['KeteranganLahir'];
            $data['FormulirAktaKelahiran'] = $row['FormulirAktaKelahiran'];
            $data['KTPSaksi'] = $row['KTPSaksi'];
            $data['Status'] = $row['Status'];
            $data['Pemberitahuan'] = $row['Pemberitahuan'];
            $data['WaktuPendaftaran'] = $row['WaktuPendaftaran'];
            $data['WaktuSelesai'] = $row['WaktuSelesai'];

            $response['data'][] = $data;

            // $response[] = $row;
        }
        // echo json_encode($i);
        $response['value'] = 1;
        $response['message'] = 'Mengambil data antrian berdasarkan Id Berhasil';

        // die();

        # code...

        echo json_encode($response);
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = 'Gagal mendapatkan data antrian';
        echo json_encode($response);
        echo json_encode($result);
    }
}
?>

