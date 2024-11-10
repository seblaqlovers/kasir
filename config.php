<?php 
$koneksi=mysqli_connect("127.0.0.1","root","");
//$koneksi=mysqli_connect("localhost:3306","root","root");
$db=mysqli_select_db($koneksi,"db_kasir");
date_default_timezone_set('Asia/Jakarta');
?>
