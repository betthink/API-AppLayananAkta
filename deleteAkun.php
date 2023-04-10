<?php

require "./connect.php";

if($_SERVER['REQUEST_METHOD']=="POST"){
    # code...
    $response = array();
    $IdUmum= (int)$_POST['IdUmum'];

    
    
        $insert = "DELETE FROM akunusersumum WHERE IdUmum=$IdUmum";
        if (mysqli_query($conn,$insert)) {
            # code...
            $response['value']=1;
            $response['message']="Berhasil dihapus";
            echo json_encode($response);
        } else {
            # code...
            $response['value']=0;
            $response['message']="Gagal dihapus";
            echo json_encode($response);
        }
    }

?>