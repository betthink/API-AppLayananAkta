<?php require "../connect.php"; 
$response = array();
if($conn) {
    $sql = 'SELECT * FROM datasaksi1'; 
    $result= mysqli_query($conn,$sql);
    if($result) {
        $i=0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['Id'] = $row['Id'];
            $response[$i]['NIK'] = $row['NIK'];
            $response[$i]['Nama'] = $row['Nama'];
            $response[$i]['TempatKelahiran'] = $row['TempatKelahiran'];
            $response[$i]['DateKelahiran'] = $row['DateKelahiran'];
            $response[$i]['Alamat'] = $row['Alamat'];
            $response[$i]['Kewarganegaraan'] = $row['Kewarganegaraan'];
            $response[$i]['Kebangsaan'] = $row['Kebangsaan'];
            $response[$i]['IdUser'] = $row['IdUser'];

            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo"failed connection";
}
?>