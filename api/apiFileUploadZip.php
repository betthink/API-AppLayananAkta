<?php require "../connect.php"; 
$IdAnak = $_POST['IdAnak'];
$response = array();
if($conn) {
    $sql = "SELECT * FROM filespersyaratan WHERE IdAnak = '$IdAnak'"; 
    // var_dump($sql);die;
    $result= mysqli_query($conn,$sql);
    if($result) {
        $i=0;
        while ($row = mysqli_fetch_assoc($result)) {         
            $response[$i]['IdAnak'] = $row['IdAnak'];
            $response[$i]['fileCompresed'] = $row['fileCompresed'];
            $response[$i]['dateUpload'] = $row['dateUpload'];
            $response[$i]['IdUser'] = $row['IdUser'];
            // $response[$i]['WaktuSelesai'] = $row['WaktuSelesai'];
       
            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo"failed connection";
}
