<?php require '../connect.php';
$response = [];
if ($conn) {
    $sql = "SELECT * FROM users WHERE level='Admin'";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['Id'] = $row['Id'];
            $response[$i]['StatusLayanan'] = $row['StatusLayanan'];
            $response[$i]['Nama'] = $row['Nama'];
            $response[$i]['Email'] = $row['Email'];
            $response[$i]['NomorTelp'] = $row['NomorTelp'];
            $response[$i]['NIK'] = $row['NIK'];
            $response[$i]['FotoProfile'] = $row['FotoProfile'];
            $response[$i]['WaktuRegister'] = $row['WaktuRegister'];
            $response[$i]['Level'] = $row['Level'];

            $i++;
         
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo 'failed connection';
}
