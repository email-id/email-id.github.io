<?php
include 'db.php';

$email = $_POST['email'];
$dropbox = $_POST['dropbox'];
$google = $_POST['google_drive'];
$one = $_POST['one_drive'];
$mega = $_POST['mega'];

$sql = "INSERT INTO mail_ids (email, dropbox, google_drive, one_drive, mega)
        VALUES ('$email', '$dropbox', '$google', '$one', '$mega')";

if ($conn->query($sql)) {
    echo "success";
} else {
    echo "error";
}
?>
