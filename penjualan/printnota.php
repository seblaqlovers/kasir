<?php  
session_start();
if(isset($_GET['penid'])){
    $penid = $_GET['penid'];
    $kbl = $_GET['kbl'];
    include "../config.php";
    $sqlpenjualan = "SELECT * FROM penjualan WHERE penjualan_id='$penid'";
    $respenjualan = mysqli_query($koneksi, $sqlpenjualan);
    $dtpenjualan = mysqli_fetch_array($respenjualan);
    $tgl = $dtpenjualan['tanggal'];
    $bayar = $dtpenjualan['bayar'];
    $nbayar = number_format($bayar, 0, ",", ".");
    $id_pelanggan = $dtpenjualan['id_pelanggan'];

    // Check if customer ID exists
    if ($id_pelanggan) {
        $sqlpelanggan = "SELECT * FROM pelanggan WHERE id_pelanggan='$id_pelanggan'";
        $respelanggan = mysqli_query($koneksi, $sqlpelanggan);
        $dtpelanggan = mysqli_fetch_array($respelanggan);
        $npel = $dtpelanggan['nama_pelanggan'];
    } else {
        $npel = "No Customer";  // Fallback if no customer is found
    }

    $id_petugas = $dtpenjualan['id_petugas'];
    $sqlpetugas = "SELECT * FROM petugas WHERE id_petugas='$id_petugas'";
    $respetugas = mysqli_query($koneksi, $sqlpetugas);
    $dtpetugas = mysqli_fetch_array($respetugas);
    $npet = $dtpetugas['nama_petugas'];
?>
<!DOCTYPE html>
<html>
<head>
    <title>Daftar Pembayaran</title>
    <link rel="stylesheet" href="print.css?time=<?= md5(time()) ?>">
</head>
<body class="struk" onload="printOut()">
<section class="sheet">
<center>
    <img src="../login/logo.png" width="50px">
    <br>
    <h2 style="margin:0px">Mie Gacoan</h2>
    Jl. Majalengka No.25<br>
    Telp. 0823102024 <br><br>
</center>
<?php echo str_repeat("=", 57) ?>
<table width="100%" cellspacing="0">
    <tr>
        <td style="padding:2px 5px;">Tgl : <?= $tgl ?></td>
    </tr>
    <tr>
        <td style="padding:2px 5px;">Penjualan ID : <?= $penid ?></td>
    </tr>
    <tr>
        <td style="padding:2px 5px;">Pelanggan : <?= $npel ?></td>
    </tr>
    <tr>
        <td style="padding:2px 5px;">Kasir : <?= $npet ?></td>
    </tr>
</table>
<?php echo str_repeat("-", 49) ?>
<table width="100%" cellspacing="0">
    <?php 
    $sql = "SELECT * FROM detail_penjualan WHERE penjualan_id='$penid'";
    $result = mysqli_query($koneksi, $sql);
    $no = 1;
    $jmltot = 0;
    while ($data = mysqli_fetch_array($result)) {
        $hp = number_format($data['harga'], 0, ",", ".");
        $jp = number_format($data['jumlah'], 0, ",", ".");
        $total = $data['harga'] * $data['jumlah'];
        $tot = number_format($total, 0, ",", ".");
    ?>
        <tr>
            <td valign="top" style="padding:5px;">
                <?= $no ?>.
            </td>
            <td valign="top" style="padding:5px 2px; width:200px">
                <?= $jp ?> <?= $data['nama_produk'] ?> @ <?= $hp ?>      
            </td>
            <td align="right" valign="top" style="padding:5px; width:60px"><?= $tot ?></td>
        </tr>
    <?php
    $no++;
    $jmltot = $jmltot + $total;
    $jmltotal = number_format($jmltot, 0, ",", ".");
    }
    ?>
</table>
<table width="100%" cellspacing="0">
    <tr>
        <td colspan="3">
            <?= str_repeat("-", 49) ?>
        </td>
    </tr>
    <tr>
        <td align="left" style="padding:5px 5px;">Total :</td>
        <th align="right" style="font-size:10pt; padding:2px 5px;"><?= $jmltotal ?></th>
    </tr>
    <tr>
        <td align="left" style="padding:5px 5px;">Bayar :</td>
        <td align="right" style="padding:5px 5px;"><?= $nbayar ?></td>
    </tr>
    <tr>
        <td align="left" style="padding:5px 5px;">Kembali :</td>
        <td align="right" style="padding:5px 5px;"><?= $kbl ?></td>
    </tr>
</table>
<?= str_repeat("-", 49) ?>
<br>
<center>
Terima Kasih telah berbelanja di Mie gacoan, Selamat Menikmati<br>
</center>
<br/><br/><br/><br/>
<p></p>
</section>
<script>
    var lama = 1000;
    t = null;
    function printOut(){
        window.print();
        t = setTimeout("self.close()", lama);
    }
</script>
<?php } else {} ?>
</body>
</html>
