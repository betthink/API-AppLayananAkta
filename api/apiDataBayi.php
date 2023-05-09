<?php require "../connect.php"; 
$response = array();
if($conn) {
    $sql = 'SELECT * FROM databayi'; 
    $result= mysqli_query($conn,$sql);
    if($result) {
        $i=0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['IdAnak'] = $row['IdAnak'];
            $response[$i]['Nama'] = $row['Nama'];
            $response[$i]['JenisKelamin'] = $row['JenisKelamin'];
            $response[$i]['TempatPersalinan'] = $row['TempatPersalinan'];
            $response[$i]['TempatKelahiran '] = $row['TempatKelahiran'];
            $response[$i]['DateKelahiran'] = $row['DateKelahiran'];
            $response[$i]['TimeKelahiran'] = $row['TimeKelahiran'];
            $response[$i]['UrutanKelahiran'] = $row['UrutanKelahiran'];
            $response[$i]['PenolongBayi'] = $row['PenolongBayi'];
            $response[$i]['BeratBayi'] = $row['BeratBayi'];
            $response[$i]['PanjangBayi'] = $row['PanjangBayi'];
            $response[$i]['IdUser'] = $row['IdUser'];
    
            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo"failed connection";
}
?>