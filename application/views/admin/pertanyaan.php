<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Pertanyaan
            <small><?php echo $title; ?></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li>
            <li class="active"><?php echo $title; ?></li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box box-warning">
            <div class="box-body">
                <div class="form-group">
                    <label for="nama-penanya">Nama Penanya</label>
                    <input type="text" class="form-control" id="nama-penanya" value="<?php echo $data['nama_penanya']; ?>" />
                    <input type='hidden' class='sesi-from_pertanyaan' value='<?php echo rand(0, 100).rand(10, 500).date('dym'); ?>'>
                    <input type='hidden' class='id_pertanyaan' value='<?php echo $data['id']; ?>'>
                </div>

                <div class="form-group">
                    <label for="isi-pertanyaan">Isi Pertanyaan</label>
                    <textarea class="form-control" id="isi-pertanyaan"><?php echo $data['isi_pertanyaan']; ?></textarea>
                </div>

                <div class="form-group">
                    <label for="jawab-pertanyaan">Jawaban</label>
                    <textarea class="form-control" id="jawab-pertanyaan"><?php echo $data['jawab_pertanyaan']; ?></textarea>
                </div>

                <div class="form-group">
                    <label for="tanggal-pertanyaan">Tanggal Pertanyaan</label>
                    <input type="text" class="form-control" id="tanggal-pertanyaan" value="<?php echo $data['tanggal_pertanyaan']; ?>" />
                </div>

                <div class="form-group">
                    <button class="btn btn-primary" id="submit-pertanyaan" data-id="<?php echo $data['id']; ?>"> Simpan</button>
                </div>
            </div>
        </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
