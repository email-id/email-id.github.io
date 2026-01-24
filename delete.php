<?php
include 'db.php';

$id = $_POST['id'];

$sql = "DELETE FROM mail_ids WHERE id=$id";

if ($conn->query($sql)) {
    echo "success";
} else {
    echo "error";
}
?>
