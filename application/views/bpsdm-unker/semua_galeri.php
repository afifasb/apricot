<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="page-header parallax parallax-3" style="background-image:url('<?php echo assets_url('images/demo/1200x800/17-min.jpg'); ?>')">
	<div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>

	<div class="container">

		<h1>GALERI</h1>
		<span class="font-lato size-18 weight-300"><?php echo $informasi['title'] ?></span>

		<!-- breadcrumbs -->
		<ol class="breadcrumb">
			<!-- <li><a href="#">Download</a></li> -->
			<li class="active"><?php echo $informasi['title'] ?></li>
		</ol><!-- /breadcrumbs -->

	</div>
</section>
<section>
    <div class="container">
    <?php foreach ($galeri_perid as $perid) { ?> 
        <div class="heading-title heading-border">
            <h3><?php echo $perid['galeri_nama']; ?></h3>
            <p class="font-lato size-14"><?php echo $perid['galeri_deskripsi']; ?></p>
        </div>

        <div class="text-center"> 
            <div class="owl-carousel owl-padding-1 nomargin buttons-autohide controlls-over" data-plugin-options='{"singleItem": false, "items": "4", "autoPlay": 3500, "navigation": true, "pagination": false}'>
            <?php foreach ($semua_galeri as $galeri) { 
                if ($galeri['id'] == $perid['galeri_id']) { ?> 
            <?php foreach (ambil_foto_galeri($galeri['id']) as $foto) { ?>
                <!-- item -->
                <div class="item-box">
                    <figure>
                        <span class="item-hover">
                        <a class="ico-rounded lightbox" href="<?php echo img_galeri_url($foto['nama_foto'],true); ?>" data-plugin-options='{"type":"image"}'>
                            <span class="overlay dark-5"></span>
                            <span class="inner">

                            </span>
                            </a>
                        </span>
                        <img class="img-responsive" src="<?php echo img_galeri_url($foto['nama_foto'],true); ?>" width="600" height="399" alt="">
                    </figure>

                    <!-- <div class="item-box-desc">
                    </div> -->

                </div>
                <!-- /item -->
                <?php } ?>
                <?php }} ?>
            </div>
        </div>
        <br><br>
        <?php } ?>
        <?php echo $pagination; ?>    
    </div>
</section>