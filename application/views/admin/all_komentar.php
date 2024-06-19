<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Komentar
            <small>Semua Komentar</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li>
            <li class="active">Komentar</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box box-warning">
            <div class="box-body">
                <table class="slug-table table table-bordered table-striped table-responsive dt-responsive">
                    <thead>
                    <tr>
                        <th>Nama Komentar</th>
                        <th>Email</th>
                        <th>Isi Komentar</th>
                        <th>Tanggal Komentar</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                        <?php
                        echo $komentar;
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
