<?php  
session_start();
if(!isset($_SESSION['username'])&&!isset($_SESSION['password'])){
?>
<meta http-equiv="refresh" content="0;url=login.php">
<?php 
}else{
?>
<meta http-equiv="refresh" content="0;url=penjualan/home.php">
<?php } ?>
</body>
</html>