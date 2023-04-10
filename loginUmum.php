<?php

require "./connect.php";

if($_SERVER['REQUEST_METHOD']=="POST"){
    # CODE
    $response = array();
    $Username = $_POST['Username'];
    $Password = $_POST['Password'];
   
    $cek ="SELECT * FROM akunusersumum WHERE Username='$Username' and Password='$Password'";
    $result = mysqli_fetch_assoc(mysqli_query($conn,$cek));

    if (isset($result)){
        # code...
        $response['value']=1;
        $response['message']="Login Berhasil";
        $response['Username']=$result['Username'];
        $response['Nama']=$result['Nama'];
        $response['IdUmum']=$result['IdUmum'];
        $response['NIK']=$result['NIK'];

       
        echo json_encode($response);
    } else {
        # code...
        $response['value']=0;
        $response['message']="Login Gagal";
        echo json_encode($response);
    }

}

    

?>