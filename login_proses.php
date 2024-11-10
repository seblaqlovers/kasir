<?php 
session_start();
if(isset($_POST['login'])){

    include "config.php";
    $username = stripslashes(strip_tags(htmlspecialchars($_POST['username'], ENT_QUOTES)));
    $password = stripslashes(strip_tags(htmlspecialchars($_POST['password'], ENT_QUOTES)));

    $sql = "SELECT * FROM petugas WHERE username='$username'";
    $result = mysqli_query($koneksi, $sql);
    $data = mysqli_fetch_array($result);
    $user_name = $data['username'];
    $user_pass = $data['password'];

    if (password_verify($password, $user_pass)) {
        // Set session variables
        $_SESSION['username'] = $data['username'];
        $_SESSION['password'] = $data['password'];
        $_SESSION['level'] = $data['level'];
        $_SESSION['nama_petugas'] = $data['nama_petugas'];
        $_SESSION['id_petugas'] = $data['id_petugas'];

        // Redirect based on user level
        if ($_SESSION['level'] == 'admin') {
            // If the user is an admin, redirect to dashboard.php
            header("Location: index.php");
        } else {
            // If the user is a petugas, redirect to transaksi.php
            header("Location: penjualan");
        }
        exit(); // Ensure no further code execution after redirection
    } else {
        echo "<script>alert('Maaf User Name atau Password Anda Salah, Silahkan ulangi lagi !')</script>";
    }
}
?>
