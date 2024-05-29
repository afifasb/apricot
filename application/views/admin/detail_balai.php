<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    	<h1>Detail Balai<small>Info Detail Balai</small></h1>
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
							<th style="text-align: center; vertical-align: middle;">Nama Balai</th>
							<th style="text-align: center; vertical-align: middle;">Alamat</th>
							<th style="text-align: center; vertical-align: middle;">Telp</th>
							<th style="text-align: center; vertical-align: middle;">Email</th>
							<th style="text-align: center; vertical-align: middle;">Action</th>
						</tr>
					</thead>

					<tbody>
						<?php
							foreach ($balai as $dm) { ?>
								<tr>
									<td style="text-align: center; vertical-align: middle;"><?php echo ($dm->nama != null) ? $dm->nama : '-';?></td>
									<td style="vertical-align: middle;"><?php echo ($dm->alamat != null) ? $dm->alamat : '-';?></td>
									<td style="text-align: center; vertical-align: middle;"><?php echo ($dm->telp != null) ? $dm->telp : '-';?></td>
									<td style="text-align: center; vertical-align: middle;"><?php echo ($dm->email != null) ? $dm->email : '-';?></td>
									<td style="text-align: center; vertical-align: middle;">
										<a href="../admin/edit_balai/<?php echo $dm->id?>"><i class="fa fa-edit btn-edit-balai"></i></a></td>
									</td>
								</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->