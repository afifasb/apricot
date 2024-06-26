<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="page-header parallax parallax-3" style="background-image:url('<?php echo assets_url('images/demo/1200x800/17-min.jpg'); ?>')">
	<div class="overlay dark-5"></div>

	<div class="container">

		<h1>HALAMAN</h1>
		<span class="font-lato size-18 weight-300"><?php echo $heading; ?></span>

		<!-- breadcrumbs -->
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active"><?php echo $heading; ?></li>
		</ol>
	</div>
</section>

<section>
    <div class="container">

        <div class="row">

            <!-- LEFT -->
            <div class="col-md-9 col-sm-9">
                <h1 class="blog-post-title text-center margin-bottom-20"><?php echo $page['judul']; ?></h1>
            </div>

            <div class="col-md-9 col-sm-9">

                
				<?php if($page["foto"]!=""){ ?>
				<!-- IMAGE -->
                <figure class="margin-bottom-20 margin-top-10">
                    <img class="img-responsive" src="<?php echo $page['foto']; ?>" alt="$page['judul']" />
                </figure>
				<?php } ?>
                

                <!-- article content -->
                <p class="dropcap"><?php echo reversequote($page['isi'],'all'); ?></p>
                <!-- /article content -->


                <div class="divider divider-dotted"><!-- divider --></div>

            </div>


            <!-- RIGHT -->
            <div class="col-md-3 col-sm-3 dark">
                <!-- side navigation -->
                <!-- <div class="side-nav margin-bottom-60 margin-top-30">
                    <div class="side-nav-head">
                        <button class="fa fa-bars"></button>
                        <h4>KATEGORI</h4>
                    </div>
                    <ul class="list-group list-group-bordered list-group-noicon uppercase">
                    <?php
                    foreach ($kategori_artikel as $kategori) { ?>
                        <li class="list-group-item"><a href="<?php echo kategori_url($kategori['id'],$kategori['slug']); ?>"><span class="size-11 text-muted pull-right"></span> <?php echo $kategori['nama']; ?></a></li>
                    <?php } ?>
                    </ul>
                     /side navigation 
                </div> -->


                <!-- JUSTIFIED TAB -->
                <div class="tabs nomargin-top hidden-xs margin-bottom-60">

                    <!-- tabs -->
                    <ul class="nav nav-tabs nav-bottom-border nav-justified">
                        <li class="active">
                            <a href="#tab_1" data-toggle="tab">
                                Populer
                            </a>
                        </li>
                        <li>
                            <a href="#tab_2" data-toggle="tab">
                                Terkini
                            </a>
                        </li>
                    </ul>

                    <!-- tabs content -->
                    <div class="tab-content margin-bottom-60 margin-top-30">

                        <!-- POPULAR -->
                        <div id="tab_1" class="tab-pane active">
                            <?php
                                foreach ($artikel_populer as $rowpopuler) {
                            ?>
                            <div class="row tab-post"><!-- post -->
                                <div class="col-md-3 col-sm-3 col-xs-3">
                                    <a href="<?php echo artikel_url($rowpopuler['id'],$rowpopuler['slug']); ?>">
                                        <img src="<?php echo img_artikel_url($rowpopuler['foto']); ?>" width="50" alt="" />
                                    </a>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <a href="<?php echo artikel_url($rowpopuler['id'],$rowpopuler['slug']); ?>" class="tab-post-link"><small><?php echo $rowpopuler['judul']; ?></small></a>
                                    <small><?php echo format_tanggal($rowpopuler['tanggal']); ?></small>
                                </div>
                            </div>
                            <?php } ?>

                        </div>
                        <!-- /POPULAR -->


                        <!-- RECENT -->
                        <div id="tab_2" class="tab-pane">

                            <?php
                                foreach ($artikel_headline as $rowheadline) {
                            ?>
                            <div class="row tab-post"><!-- post -->
                                <div class="col-md-3 col-sm-3 col-xs-3">
                                    <a href="<?php echo artikel_url($rowheadline['id'],$rowheadline['slug']); ?>">
                                        <img src="<?php echo img_artikel_url($rowheadline['foto']); ?>" width="50" alt="" />
                                    </a>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <a href="<?php echo artikel_url($rowheadline['id'],$rowheadline['slug']); ?>" class="tab-post-link"><small><?php echo $rowheadline['judul']; ?></small></a>
                                    <small><?php echo format_tanggal($rowheadline['tanggal']); ?></small>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <!-- /RECENT -->

                    </div>

                </div>
                <!-- JUSTIFIED TAB -->


                <!-- TAGS 
                <h3 class="hidden-xs size-16 margin-bottom-20">TAGS</h3>
                <div class="hidden-xs margin-bottom-60">
                    <?php
                        foreach ($tags as  $tag) { ?>
                        <a class="tag" href="<?php echo tag_url($tag['id'],$tag['slug']); ?>">
                            <span class="txt"><?php echo $tag['nama']; ?></span>
                            <span class="num">&nbsp;<?php //echo hitung_semua_artikel_per_tag($tag['slug_tag']); ?></span>
                        </a>
                    <?php } ?>

                </div>
                -->


            </div>

        </div>

    </div>
</section>
<!-- / -->