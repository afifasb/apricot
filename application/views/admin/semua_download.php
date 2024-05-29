<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

?>

     <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" >
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Download
            <small>Semua Download</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Semua Download</li>
           
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <div class="box box-warning">
          	<div class="box-body">

                <table class="slug-table table  table-striped dt-responsive" id="table-agenda">
                  <thead>
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Jumlah Download</th>
                    <th>Link</th>
                    <th style='width: 100px'>Action</th>
                  </tr>
                  </thead>

                  <tbody>
                    <?php
                    $no=1;
                  foreach ($download as $dw) {
                    echo "<tr>
                    <td>$no</td>
                    <td>$dw[nama_file]</td>
                    <td>$dw[jumlah_download]</td>
                    <td>
                      <div class='input-group'>
                        <div class='input-group-addon'><i class='fa fa-hand-o-up pilih' style='cursor:pointer'></i></div>
                        <input type='text' class='form-control area-url' value='".base_url()."download/$dw[id]-$dw[slug]'/>
                        <div class='input-group-addon'><a href='".base_url()."download/$dw[id]-$dw[slug]' target='_blank'><i class='fa fa-mail-forward'></i></a></div>
                      </div>
                    </td>
                    <td><a class='btn btn-info btn-xs'  href='".base_url('admin/download/'.$dw['id'])."'>Edit</a> <button class='btn btn-danger btn-xs hapus-download' data-id='$dw[id]' >Hapus</button></td>
                    </tr>";
                  $no++; }
                    ?>
                  </tbody>
                </table>
           

          </div>
        </div>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->





