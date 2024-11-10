<?php  
session_start();

// Pastikan user sudah login dan memiliki session yang valid
if (!isset($_SESSION['username']) || !isset($_SESSION['password']) || !isset($_SESSION['id_petugas']) || !isset($_SESSION['level'])) {
    header("Location: ../login.php");
    exit();
}

$id_petugas = $_SESSION['id_petugas'];
$level = $_SESSION['level'];  // Menyimpan level pengguna (admin atau petugas)
?>

<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Penjualan</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
</head>
<body>
<?php include "../header.php"; ?>
<main class="container py-3">
<br><br><br>
<!-- pencarian -->
    <div class="row">
        <div class="col-sm-8"><h3>Daftar Penjualan</h3></div>
        <div class="col-sm-4">
            <form class="d-flex" method="GET" action="">
                <input class="form-control me-2" type="date" name="tgl">
                <button class="btn btn-primary" type="submit">Cari</button>
            </form>
        </div>
    </div>
<!-- akhir pencarian -->

<table class="table table-hover table-striped table-bordered table-sm">
    <thead class="text-dark" style="background:pink;">
        <tr>
            <th class="py-2 px-3 rounded-start" width="55px">No.</th>
            <th class="py-2" width="200px">Tanggal</th>
            <th class="py-2 text-end" width="100px">Total Harga</th>
            <th class="py-2 text-end" width="100px">Bayar</th>
            <th class="py-2 text-end" width="100px">Kembali</th>
            <th class="py-2 px-3" width="200px">Pelanggan</th>
            <th class="py-2" width="200px">Petugas</th>
            <th class="py-2 text-center rounded-end" width="200px">Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php  
        include "../config.php";
        $batas = 10;
        $halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
        $halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;    

        $previous = $halaman - 1;
        $next = $halaman + 1;
        $tglskr = date("Y-m-d");

        // Query SQL yang disesuaikan berdasarkan level pengguna
        if (isset($_GET['tgl'])) {
            $tgl = $_GET['tgl'];
            if ($level == 'admin') {
                // Admin bisa melihat seluruh laporan penjualan
                $sqldata = "SELECT * FROM penjualan WHERE tanggal LIKE '$tgl%'";
            } else {
                // Petugas hanya bisa melihat penjualan mereka sendiri
                $sqldata = "SELECT * FROM penjualan WHERE tanggal LIKE '$tgl%' AND id_petugas='$id_petugas'";
            }
        } else {
            if ($level == 'admin') {
                // Admin bisa melihat seluruh laporan penjualan
                $sqldata = "SELECT * FROM penjualan WHERE tanggal LIKE '$tglskr%'";
            } else {
                // Petugas hanya bisa melihat penjualan mereka sendiri
                $sqldata = "SELECT * FROM penjualan WHERE tanggal LIKE '$tglskr%' AND id_petugas='$id_petugas'";
            }
        }

        $resdata = mysqli_query($koneksi, $sqldata);
        $jumlah_data = mysqli_num_rows($resdata);
        $total_halaman = ceil($jumlah_data / $batas);

        // Query untuk data halaman tertentu
        if (isset($_GET['tgl'])) {
            $tgl = $_GET['tgl'];
            if ($level == 'admin') {
                $sql = "SELECT * FROM penjualan WHERE tanggal LIKE '$tgl%' LIMIT $halaman_awal, $batas";
            } else {
                $sql = "SELECT * FROM penjualan WHERE tanggal LIKE '$tgl%' AND id_petugas='$id_petugas' LIMIT $halaman_awal, $batas";
            }
        } else {
            if ($level == 'admin') {
                $sql = "SELECT * FROM penjualan WHERE tanggal LIKE '$tglskr%' LIMIT $halaman_awal, $batas";
            } else {
                $sql = "SELECT * FROM penjualan WHERE tanggal LIKE '$tglskr%' AND id_petugas='$id_petugas' LIMIT $halaman_awal, $batas";
            }
        }

        $result = mysqli_query($koneksi, $sql);
        $no = $halaman_awal + 1;
        while ($data = mysqli_fetch_array($result)) {
            $tohar = number_format($data['total_harga'], 0, ",", ".");
            $byr = number_format($data['bayar'], 0, ",", ".");
            $kembali = $data['bayar'] - $data['total_harga'];
            $kbl = number_format($kembali, 0, ",", ".");

            // Handle pelanggan - if id_pelanggan is empty or null
            $id_pelanggan = isset($data['id_pelanggan']) ? $data['id_pelanggan'] : null;
            if ($id_pelanggan) {
                // Ambil data pelanggan
                $sqlpelanggan = "SELECT * FROM pelanggan WHERE id_pelanggan='$id_pelanggan'";
                $respelanggan = mysqli_query($koneksi, $sqlpelanggan);
                $dtpelanggan = mysqli_fetch_array($respelanggan);
                $nama_pelanggan = $dtpelanggan['nama_pelanggan'];
            } else {
                $nama_pelanggan = "Tidak Ada";  // Default text when customer is not set
            }

            // Ambil data petugas
            $sqlpetugas = "SELECT * FROM petugas WHERE id_petugas='$id_petugas'";
            $respetugas = mysqli_query($koneksi, $sqlpetugas);
            $dtpetugas = mysqli_fetch_array($respetugas);
        ?>
        <tr>
            <td class="px-3"><?= $no ?>.</td>
            <td><?= $data['tanggal'] ?></td>
            <td align="right"><?= $tohar ?></td>
            <td align="right"><?= $byr ?></td>
            <td align="right"><?= $kbl ?></td>
            <td class="px-3"><?= $nama_pelanggan ?></td>
            <td><?= $dtpetugas['nama_petugas'] ?></td>
            <td align="right">
                <a href="printnota.php?penid=<?= $data['penjualan_id'] ?>&kbl=<?= $kbl ?>" target="blank" class="btn btn-secondary btn-sm">Cetak Nota</a>
                <a href="detail_penjualan.php?penid=<?= $data['penjualan_id'] ?>&npet=<?= $dtpetugas['nama_petugas'] ?>&npel=<?= $nama_pelanggan ?>&tgl=<?= $data['tanggal'] ?>&byr=<?= $byr ?>&kbl=<?= $kbl ?>&halaman=<?= $halaman ?>" class="btn btn-dark btn-sm">Detail</a>
            </td>
        </tr>
        <?php  
        $no++;
        }
        ?>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="8" class="text-center">
                <div class="container">
                    <div class="row">
                        <div class="col-4 text-start py-3">
                            <a class="btn btn-dark" href="penjualan_simpan.php">[+] Transaksi Baru</a>                        
                        </div>
                        <div class="col-8 text-end py-3">
                            <!-- Untuk nomor Halaman -->
                            <ul class="pagination justify-content-end pagination-sm">
                                <li class="page-item"><a class="page-link" <?php if($halaman > 1){ echo "href='?halaman=$previous'"; } ?>>&laquo; Previous</a></li>
                                <?php 
                                for ($x = 1; $x <= $total_halaman; $x++) {
                                    if ($x == $halaman) {
                                ?>
                                    <li class="page-item active"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
                                <?php
                                    } else {
                                ?> 
                                    <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
                                <?php
                                    }
                                }
                                ?>                
                                <li class="page-item"><a class="page-link" <?php if($halaman < $total_halaman) { echo "href='?halaman=$next'"; } ?>>Next &raquo;</a></li>
                            </ul>                
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </tfoot>
</table>
</main>
<?php include "../footer.php"; ?>
<script src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
