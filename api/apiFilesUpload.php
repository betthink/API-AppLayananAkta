<?php require "../connect.php"; 
$response = array();
if($conn) {
    $sql = 'SELECT * FROM filesupload order by waktu_upload desc'; 
    $result= mysqli_query($conn,$sql);
    if($result) {
        $i=0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['Id'] = $row['Id'];
            $response[$i]['KK'] = $row['KK'];
            $response[$i]['KTP_Ibu'] = $row['KTP_Ibu'];
            $response[$i]['KTP_Ayah '] = $row['KTP_Ayah'];
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
    echo"failed connection";
}
?>