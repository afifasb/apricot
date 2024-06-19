<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" >
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Komentar
            <small></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/">
                <i class="fa fa-dashboard"></i> Halaman Utama</a>
            </li>
            <li><a href="<?php echo base_url('admin/all_komentar') ?>">Semua Komentar</a></li>
            <li class="active">Komentar</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box box-warning">
            <div class="box-body">
                <div class="form-group">
                    <label>ID Artikel</label>
                    <input type='text' class='form-control' value='<?php echo $komentar['id_artikel'] ?>' readonly/>
                </div>

                <div class="form-group">
                    <label>Nama Komentar</label>
                    <input type='text' class='form-control nama-komentar' value='<?php echo $komentar['nama_komentar'] ?>'/>
                </div>

                <div class="form-group">
                    <label>Email</label>
                    <input type='text' class='form-control email-komentar' value='<?php echo $komentar['email'] ?>'/>
                </div>

                <div class="form-group">
                    <label for="isi_komentar">Isi Komentar</label>
                    <textarea class="form-control" id="isi-komentar"><?php echo $komentar['isi_komentar'] ?></textarea>
                </div>

                <div class="form-group">
                    <label>Tanggal Komentar</label>
                    <input type='text' class='form-control' value='<?php echo $komentar['tanggal_komentar'] ?>' readonly/>
                </div>

                <div class="form-group">
                    <div class="btn btn-success" id="submit-komentar" data-id="<?php echo $komentar['id_komentar'] ?>">Submit</div>
                </div>
            </div>
        </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
