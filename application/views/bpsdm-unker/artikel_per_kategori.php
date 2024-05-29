<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<section class="page-header parallax parallax-3" style="background-image:url('<?php echo assets_url('images/demo/1200x800/17-min.jpg'); ?>')">
	<div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>

	<div class="container">

		<h1>LIST</h1>
		<span class="font-lato size-18 weight-300"><?php echo $heading; ?></span>

		<!-- breadcrumbs -->
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active"><?php echo $heading; ?></li>
		</ol><!-- /breadcrumbs -->

	</div>
</section>
<section>
    <div class="container">

        <div class="row">

            <!-- LEFT -->
            <div class="col-md-9 col-sm-9">
                <?php foreach ($semua_artikel as $key => $artikel) { ?>
                <!-- POST ITEM -->
				<div class="blog-post-item"><!-- .blog-post-item-inverse = image right side [left on RTL] -->

                    <!-- IMAGE -->
                    <figure class="blog-item-small-image margin-bottom-20">
                        <img class="img-responsive" src="<?php echo img_artikel_url($artikel['foto']); ?>" alt="">
                    </figure>

                    <div class="blog-item-small-content">

                    <h4><a href="<?php echo artikel_url($artikel['id'],$artikel['slug']); ?>"><?php echo $artikel['judul']; ?></a></h4>

                    <ul class="blog-post-info list-inline">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i> 
                                <span class="font-lato">
                                    <?php  echo format_tanggal($artikel['tanggal']); ?>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-eye"></i> 
                                <span class="font-lato"><?php echo $artikel['dibaca']; ?> Kali</span>
                            </a>
                        </li>
                        <li>
                            <i class="fa fa-folder-open-o"></i> 
                            <?php
                            foreach (ambil_tag($artikel['tags']) as  $tag) { ?>
                            <a class="category" href="<?php echo tag_url($tag['id_tag'],$tag['slug_tag']); ?>">
                                <span class="font-lato"><?php echo $tag['nama_tag']; ?></span>
                            </a>
                            <?php } ?>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-user"></i> 
                                <span class="font-lato"><?php echo $artikel['nama_admin']; ?></span>
                            </a>
                        </li>
                    </ul>

                    <p><?php echo strip_tags(word_limiter(reversequote($artikel['isi'],'all'),50)); ?></p>

                    <a href="<?php echo artikel_url($artikel['id'],$artikel['slug']); ?>" class="btn btn-reveal btn-default">
                        <i class="fa fa-plus"></i>
                        <span>Baca</span>
                    </a>

                    </div>

                </div>
                <!-- /POST ITEM -->
                <?php } ?>

                <!-- PAGINATION -->
                <div class="text-right">
                    <?php echo $pagination; ?>
                </div>
                <!-- /PAGINATION -->
            </div>

            <!-- RIGHT -->
            <div class="col-md-3 col-sm-3 dark">
                <!-- side navigation -->
                <div class="side-nav margin-bottom-60 margin-top-30">
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
                    <!-- /side navigation -->
                </div>


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


                <!-- TAGS -->
                <h3 class="hidden-xs size-16 margin-bottom-20">TAGS</h3>
                <div class="hidden-xs margin-bottom-60">
                    <?php
                        foreach ($tags as  $tag) { ?>
                        <a class="tag" href="<?php echo tag_url($tag['id'],$tag['slug']); ?>">
                            <span class="txt"><?php echo $tag['nama']; ?></span>
                            <span class="num">&nbsp;<?php //echo $jumlah_artikel; ?></span>
                        </a>
                    <?php } ?>

                </div>


            </div>
    </div>
</section>