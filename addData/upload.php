<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  if (isset($_FILES['file'])) {
    $file = $_FILES['file'];
    $uploadPath = 'uploads/' . basename($file['name']);

    if (move_uploaded_file($file['tmp_name'], $uploadPath)) {
      echo 'File uploaded successfully';
    } else {
      echo 'Failed to upload file';
    }
  } else {
    echo 'No file uploaded';
  }
}
?>
