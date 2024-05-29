<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');
?>

<div class="content-wrapper">
	<section class="content-header">
		<h1>Edit Detail Balai <small>Edit Detail Balai Anda</small></h1>
			<ol class="breadcrumb">
            	<li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Edit Detail Balai</li>
          	</ol>
	</section>

	<section class="content">
		<div class="box box-warning">
			<div class="box-body">
				<div class="row">
					<div class="col-md-6 col-xs-6">
						<form method="POST" action="../save_edit_balai">
							<div class="form-group">
								<label for="nama_medsos">Nama Balai</label>
								<input type="text" class="form-control" name="nama_balai" id="nama_balai" value="<?=$balai[0]->nama?>" required>
							</div>

							<div class="form-group">
								<label for="url_medsos">Alamat</label>
								<input type="text" class="form-control" name="alamat_balai" id="alamat_balai" value="<?=$balai[0]->alamat?>">
							</div>

							<div class="form-group">
								<label for="url_medsos">Telepon</label>
								<input type="text" class="form-control" name="telp_balai" id="telp_balai" value="<?=$balai[0]->telp?>">
							</div>

							<div class="form-group">
								<label for="url_medsos">E-mail</label>
								<input type="text" class="form-control" name="email_balai" id="email_balai" value="<?=$balai[0]->email?>">
							</div>

							<input type="hidden" name="id_balai" value="<?=$balai[0]->id?>">

							<div class="form-group">
								<button class="btn btn-sm btn-primary" type="submit">Simpan</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>