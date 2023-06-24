<?php

require "../connect.php";

if($_SERVER['REQUEST_METHOD']=="POST"){
    # code...
    $response = array();
    $Id= (int)$_POST['Id'];

    
    
        $insert = "DELETE FROM users WHERE Id=$Id";
        var_dump($insert);die;
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