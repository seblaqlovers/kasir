<?php  
	$id=$_GET['penid'];
	include "../config.php";
	$sqld="delete from penjualan where penjualan_id='$id'";
	$hapus=mysqli_query($koneksi,$sqld);
?>
<meta http-equiv="refresh" content="1;url=index.php">