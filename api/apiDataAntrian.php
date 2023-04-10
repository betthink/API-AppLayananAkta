<?php require "../connect.php"; 
$response = array();
if($conn) {
    $sql = 'SELECT * FROM antrian order by IdAntrian desc'; 
    $result= mysqli_query($conn,$sql);
    if($result) {
        $i=0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['IdAntrian'] = $row['IdAntrian'];
            $response[$i]['KK'] = $row['KK'];
            $response[$i]['KTPIbu'] = $row['KTPIbu'];
            $response[$i]['KTPBapak '] = $row['KTPBapak'];
            $response[$i]['BukuNikah'] = $row['BukuNikah'];
            $response[$i]['KeteranganLahir'] = $row['KeteranganLahir'];
            $response[$i]['FormulirAktaKelahiran'] = $row['FormulirAktaKelahiran'];
            $response[$i]['KTPSaksi'] = $row['KTPSaksi'];
            $response[$i]['Status'] = $row['Status'];
            $response[$i]['Pemberitahuan'] = $row['Pemberitahuan'];
            $response[$i]['WaktuPendaftaran'] = $row['WaktuPendaftaran'];
            $response[$i]['WaktuSelesai'] = $row['WaktuSelesai'];
            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo"failed connection";
}
?>