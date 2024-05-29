<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    	<h1>Media Sosial<small>Semua Media Sosial</small></h1>
      	<ol class="breadcrumb">
        	<li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li>
      	</ol>
    </section>

    <!-- Main content -->
    <section class="content">
 		<div class="box box-warning">
			<div class="box-body">
				<table class="slug-table table table-bordered table-striped table-responsive dt-responsive" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th style="text-align: center; vertical-align: middle;">No</th>
							<th style="text-align: center; vertical-align: middle;">Nama Media Sosial</th>
							<th style="text-align: center; vertical-align: middle;">URL</th>
							<th style="text-align: center; vertical-align: middle;">Status Aktif</th>
							<th style="text-align: center; vertical-align: middle;">Last Edit</th>
							<th style="text-align: center; vertical-align: middle;">Action</th>
						</tr>
					</thead>

					<tbody>
						<?php
							$no = 1;
							foreach ($medsos as $dm) { ?>
								<tr>
									<td style="text-align: center; vertical-align: middle;"><?=$no;?></td>
									<td style="text-align: center; vertical-align: middle;"><?php echo ($dm->nama != null) ? $dm->nama : '-';?></td>
									<td style="vertical-align: middle;"><?php echo ($dm->url != null) ? $dm->url : '-';?></td>
									<td style="text-align: center; vertical-align: middle;"><?php echo ($dm->status_aktif == 1) ? 'Aktif' : 'Tidak Aktif';?></td>
									<td style="text-align: center; vertical-align: middle;"><?php echo $dm->latest_update?></td>
									<td style="text-align: center; vertical-align: middle;">
										<a href="../admin/medsos/<?php echo $dm->id?>"><i class="fa fa-edit btn-edit-medsos"></i></a></td>
									</td>
								</tr>
							<?php $no++; ?>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->