<?php require "../connect.php";
$response = array();
if ($conn) {
    $sql = 'SELECT * FROM databayi JOIN filesupload ON databayi.IdAnak = filesupload.IdAnak';
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['IdAnak'] = $row['IdAnak'];
            $response[$i]['Nama'] = $row['Nama'];
            $response[$i]['IdUser'] = $row['IdUser'];
            $response[$i]['KK'] = $row['KK'];
            $response[$i]['KTP_Ibu'] = $row['KTP_Ibu'];
            $response[$i]['KTP_Ayah'] = $row['KTP_Ayah'];
            $response[$i]['Ket_Nikah'] = $row['Ket_Nikah'];
            $response[$i]['Ket_LahirAnak'] = $row['Ket_LahirAnak'];
            $response[$i]['KTP_Saksi'] = $row['KTP_Saksi'];
            $response[$i]['KTP_Saksi2'] = $row['KTP_Saksi2'];
              $response[$i]['waktu_upload'] = $row['waktu_upload'];
            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo "failed connection";
}
