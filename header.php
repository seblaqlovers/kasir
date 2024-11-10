<header class="container-fluid" style="position:fixed; background:lightblue;">
	<nav class="container navbar navbar-expand-md navbar-dark" style="background: lightblue;">
	  <div class="container-fluid">
		<img src="../login/logo.png" width="70px"><h3 class="text-dark">Mie Gacoan</h3>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse  justify-content-center" id="collapsibleNavbar">
	      <ul class="navbar-nav">
	        <?php if($_SESSION['level']=="admin"){ ?>
			<li class="nav-item">
	          <a class="nav-link btn-md text-dark rounded-3 px-4 mx-1 my-1" href="../penjualan/home.php">DASHBOARD</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link btn-md text-dark rounded-3 px-4 mx-1 my-1" href="../produk">PRODUK</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link btn-md text-dark rounded-3 px-4 mx-1 my-1" href="../pelanggan">PELANGGAN</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link btn-md text-dark rounded-3 px-4 mx-1 my-1" href="../petugas">PETUGAS</a>
	        </li>
	    	<?php } ?>
			<li class="nav-item">
	          <a class="nav-link btn-md text-dark rounded-3 px-4 mx-1 my-1" href="../penjualan"">PENJUALAN</a>
	        </li>
	    	<li class="nav-item">
	          <a class="nav-link btn-md text-dark rounded-3 px-4 mx-1 my-1" href="../report">LAPORAN</a>
	        </li>  
	      </ul>
	    </div>
	  </div>
	  <div class="collapse navbar-collapse  justify-content-end" id="collapsibleNavbar">
		  <ul class="navbar-nav">
			<li class="nav-item">
	          <a class="nav-link btn-sm btn-danger text-white rounded-3 px-4 mx-1 my-1" href="../logout.php" onclick="return confirm('Anda Yakin Ingin Logout?')">Logout</a>
	        </li>  
		  </ul>
			</div>
	</nav>
</header>