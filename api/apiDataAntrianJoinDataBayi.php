<?php require "../connect.php"; 
$response = array();
if($conn) {
    $sql = 'SELECT * FROM antrianvalid JOIN databayi ON antrianvalid.IdAntrian = databayi.IdAnak'; 
    $result= mysqli_query($conn,$sql);
    if($result) {
        $i=0;
        while ($row = mysqli_fetch_assoc($result)) {         
            $response[$i]['IdAntrian'] = $row['IdAntrian'];
            $response[$i]['Nama'] = $row['Nama'];
             $response[$i]['WaktuPendaftaran'] = $row['WaktuPendaftaran'];
            $response[$i]['WaktuTerima'] = $row['WaktuTerima'];
            $response[$i]['WaktuDitolak'] = $row['WaktuDitolak'];
            $response[$i]['WaktuSelesai'] = $row['WaktuSelesai'];
            $response[$i]['IdPengambilan'] = $row['IdPengambilan'];
            $response[$i]['Status'] = $row['Status'];
            $response[$i]['IdUser'] = $row['IdUser'];
            $response[$i]['IdAdmin'] = $row['IdAdmin'];
             $response[$i]['Pemberitahuan'] = $row['Pemberitahuan'];
            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo"failed connection";
}
