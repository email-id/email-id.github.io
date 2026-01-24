<?php
include 'db.php';

$id = $_POST['id'];
$email = $_POST['email'];
$dropbox = $_POST['dropbox'];
$google = $_POST['google_drive'];
$one = $_POST['one_drive'];
$mega = $_POST['mega'];

$sql = "UPDATE mail_ids SET 
        email='$email',
        dropbox='$dropbox',
        google_drive='$google',
        one_drive='$one',
        mega='$mega'
        WHERE id=$id";

if ($conn->query($sql)) {
    echo "success";
} else {
    echo "error";
}
?>
