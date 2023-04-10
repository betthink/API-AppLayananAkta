<?php require '../connect.php';
$response = [];
if ($conn) {
    $sql = 'SELECT * FROM akunusersumum';
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['IdUmum'] = $row['IdUmum'];
            $response[$i]['Username'] = $row['Username'];
            $response[$i]['Password'] = $row['Password'];
            $response[$i]['JenisKelamin '] = $row['JenisKelamin'];
            $response[$i]['Nama'] = $row['Nama'];
            $response[$i]['TglLahir'] = $row['TglLahir'];
            $response[$i]['Email'] = $row['Email'];
            $response[$i]['NomorTelp'] = $row['NomorTelp'];
            $response[$i]['NIK'] = $row['NIK'];
            $response[$i]['NomorKK'] = $row['NomorKK'];
            $response[$i]['FotoProfile'] = $row['FotoProfile'];
            $response[$i]['WaktuRegister'] = $row['WaktuRegister'];

            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo 'failed connection';
}
?>
