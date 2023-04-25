<?php require "../connect.php"; 
$response = array();
if($conn) {
    $sql = 'SELECT * FROM databayi'; 
    $result= mysqli_query($conn,$sql);
    if($result) {
        $i=0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['Id'] = $row['Id'];
            $response[$i]['Nama'] = $row['Nama'];
            $response[$i]['Jenis_Kelamin'] = $row['Jenis_Kelamin'];
            $response[$i]['Tempat_Kelahiran '] = $row['Tempat_Kelahiran'];
            $response[$i]['Waktu_Kelahiran'] = $row['Waktu_Kelahiran'];
            $response[$i]['Kelahiran'] = $row['Kelahiran'];
            $response[$i]['Penolong_Bayi'] = $row['Penolong_Bayi'];
            $response[$i]['Berat_Bayi'] = $row['Berat_Bayi'];
            $response[$i]['Panjang_Bayi'] = $row['Panjang_Bayi'];
    
            $i++;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo"failed connection";
}
?>