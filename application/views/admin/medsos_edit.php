<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');
?>

<div class="content-wrapper">
	<section class="content-header">
		<h1>Edit Media Sosial <small>Edit Media Sosial Anda</small></h1>
			<ol class="breadcrumb">
            	<li><a href="<?php echo $burl; ?>/"><i class="fa fa-dashboard"></i> Halaman Utama</a></li><li class="active">Edit Media Sosial</li>
          	</ol>
	</section>

	<section class="content">
		<div class="box box-warning">
			<div class="box-body">
				<div class="row">
					<div class="col-md-6 col-xs-6">
						<form method="POST" action="../edit_medsos">
							<div class="form-group">
								<label for="nama_medsos">Nama Media Sosial</label>
								<input type="text" class="form-control" name="nama_medsos" id="nama_medsos" value="<?=$medsos[0]->nama?>" required>
							</div>

							<div class="form-group">
								<label for="url_medsos">URL Media Sosial</label>
								<input type="text" class="form-control" name="url_medsos" id="url_medsos" value="<?=$medsos[0]->url?>">
							</div>

							<div class="form-group">
								<label for="status_aktif">Status Aktif</label>
								<select name="status_aktif" id="status_aktif" class="form-control">
									<option value="1" <?php echo ($medsos[0]->status_aktif == 1) ? 'selected' : '' ?>>Aktif</option>
									<option value="0" <?php echo ($medsos[0]->status_aktif == 0) ? 'selected' : '' ?>>Tidak Aktif</option>
								</select>
							</div>

							<input type="hidden" name="id_medsos" value="<?=$medsos[0]->id?>">

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