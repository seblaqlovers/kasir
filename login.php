<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login User</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
	.backimg{
	background-image: url('login/gacoann.png');
    background-repeat: no-repeat;
    background-size: cover;
	}
	.login{
	width: 300px;
	overflow: hidden;
	box-shadow: 0 0 10px 0 #333;
	border-radius: 10px;
	text-align: center;
	padding: 20px;
	/*background: white;*/
	margin: 0px auto;
	background: rgb(235, 238, 238);
}
.login input[type="submit"]:hover{
	background: rgb(22, 150, 209);
}
	</style>
</head>
<body class="backimg">
<div class="redup"></div>
<div class="window">
<form class="login" method="POST" action="login_proses.php">
	<h1>LOGIN USER</h1>
	<input type="text" name="username" placeholder="Username" autocomplete="off">
	<input type="password" name="password" placeholder="Password" id="myInput">
	<input type="checkbox" onclick="myFunction()"> <label style="color:#808080;">Show Password</label>
	<input type="submit" name="login" value="LOGIN">
</form>
<br>
<small>Copyright &copy <?= date("Y") ?> By.</small> <a href="">Kelompok 6</a>
</div>

</div>
<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</body>
</html>