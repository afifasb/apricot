<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<section class="page-header parallax parallax-3" style="background-image:url('<?php echo assets_url('images/demo/1200x800/17-min.jpg'); ?>')">
	<div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>

	<div class="container">

		<h1>Download</h1>
		<span class="font-lato size-18 weight-300"><?php echo $download['nama_file']; ?></span>

		<!-- breadcrumbs -->
		<ol class="breadcrumb">
			<li><a href="#">Download</a></li>
			<li class="active"><?php echo $download['nama_file']; ?></li>
		</ol><!-- /breadcrumbs -->

	</div>
</section>

<section>
    <div class="container">

        <div class="row nomargin">
            
            <div class="col-md-8 col-sm-8">

                <!-- Subtitle -->
                <div class="heading-title heading-border">
                    <h2>Download <span>Details</span></h2>

                    <ul class="list-inline categories nomargin">
                        <li><a href="#"><?php echo $download['nama_file']; ?></a></li>
                    </ul>

                </div>
                <!-- /Subtitle -->

                <p><?php echo $download['deskripsi']; ?></p>
            
            </div>

            <div class="col-md-4 col-sm-4">
            
                <div class="panel panel-default">
                    <div class="panel-body">
                        
                        <p class="font-lato size-18"><?php echo $download['nama_file']; ?></p>

                        <ul class="portfolio-detail-list list-unstyled nomargin">
                            <li><span><i class="fa fa-user"></i>Author:</span> Admin</li>
                            <li><span><i class="fa fa-info"></i>Statistik:</span> <?php echo $download['jumlah_download']; ?> kali telah di Download</li>
                        </ul>

                    </div>
                    
                    <div class="panel-footer">
                    <a class="btn btn-block btn-social btn-soundcloud" href="<?php echo do_download($download['id']); ?>"><i class="fa fa-download"></i> DOWNLOAD</a>
                    </div>

                </div>

            </div>

        </div>

    </div>
</section>