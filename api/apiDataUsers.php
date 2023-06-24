<?php require '../connect.php';
$response = [];
if ($conn) {
    $sql = "SELECT * FROM users WHERE level='umum'";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['Id'] = $row['Id'];
            // $response[$i]['Username'] = $row['Username'];
            $response[$i]['Password'] = $row['Password'];
            $response[$i]['Nama'] = $row['Nama'];
            $response[$i]['Email'] = $row['Email'];
            $response[$i]['NomorTelp'] = $row['NomorTelp'];
            $response[$i]['NIK'] = $row['NIK'];
            $response[$i]['FotoProfile'] = $row['FotoProfile'];
            $response[$i]['WaktuRegister'] = $row['WaktuRegister'];
            $response[$i]['Level'] = $row['Level'];
            // $response[$i]['Pemberitahuan'] = $row['Pemberitahuan'];

            $i++;
         
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
} else {
    echo 'failed connection';
}
