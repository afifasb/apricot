<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<section class="page-header parallax parallax-3" style="background-image:url('<?php echo assets_url('images/demo/1200x800/17-min.jpg'); ?>')">
	<div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>

	<div class="container">

		<h1>BLOG</h1>
		<span class="font-lato size-18 weight-300"><?php echo $artikel['judul']; ?></span>

		<!-- breadcrumbs -->
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active"><?php echo $artikel['judul']; ?></li>
		</ol><!-- /breadcrumbs -->

	</div>
</section>

<section>
    <div class="container">

        <div class="row">

            <!-- LEFT -->
            <div class="col-md-9 col-sm-9">

                <h1 class="blog-post-title"><?php echo $artikel['judul']; ?></h1>
                <ul class="blog-post-info list-inline">
                    <li>
                        <a href="#">
                            <i class="fa fa-clock-o"></i> 
                            <span class="font-lato">
                                <?php 
                                if($artikel['tanggal_edit']=='0000-00-00 00:00:00'){
                                    echo format_tanggal($artikel['tanggal']);
                                } else {
                                    echo format_tanggal($artikel['tanggal_edit']);
                                }
                                ?>
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

                <!-- IMAGE -->
                <figure class="margin-bottom-20">
                    <img class="img-responsive" src="<?php echo img_artikel_url($artikel['foto']); ?>" alt="img" />
                </figure>

                <!-- article content -->
                <p class="dropcap">
                <?php 
                    echo set_tag(reversequote($artikel['isi'],'all'));
                ?>
                </p>
                <!-- /article content -->

                <!-- Komentar -->
                <div class="comments">

                    <!-- Tampilkan Komentar -->
                    <h3 class="comments-title">Komentar (<?php echo count($komentar); ?>)</h3>

                    <div class="comments-section">

                        <?php foreach($komentar as $kom): ?>
                            <div class="be-comment-content">
                                    <span class="be-comment-name card-header">
                                        <a href="blog-detail-2.html"><?php echo isset($kom['nama_komentar']) ? $kom['nama_komentar'] : 'Nama tidak ditemukan'; ?></a>
                                        </span>
                                    <span class="be-comment-time">
                                        <i class="fa fa-clock-o"></i>
                                        <?php echo isset($kom['tanggal_komentar']) ? format_tanggal($kom['tanggal_komentar']) : 'Tanggal tidak ditemukan'; ?>
                                    </span>

                                <p class="be-comment-text list-group-item margin-bottom-30">
                                    <?php echo isset($kom['isi_komentar']) ? $kom['isi_komentar'] : 'Komentar tidak ditemukan'; ?>
                                </p>
                            </div>
                        <?php endforeach; ?>

                    </div>

                    </ul>


                    <div class="divider divider-dotted"><!-- divider --></div>

                    <!-- Form Tambah Komentar -->
                    <h3>Tambah Komentar</h3>
                    <form action="<?php echo baseURL('semua_artikel/tambah_komentar'); ?>" method="post">
                        <input type="hidden" name="id_artikel" value="<?php echo $artikel['id']; ?>">
                        <div class="form-group">
                            <label for="nama">Nama:</label>
                            <input type="text" id="nama" name="nama" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="isi_komentar">Komentar:</label>
                            <textarea id="isi_komentar" name="isi_komentar" class="form-control" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Tambahkan Komentar</button>
                    </form>

                </div>
                <!-- /Komentar -->
                
                <div class="divider divider-dotted"><!-- divider --></div>

                <?php
                $notag=1;
                foreach (ambil_tag($artikel['tags']) as  $tag) { ?>
                <a class="tag" href="<?php echo tag_url($tag['id_tag'],$tag['slug_tag']); ?>">
                    <span class="txt"><?php echo $tag['nama_tag']; ?></span>
                    <span class="num">&nbsp;<?php //echo hitung_semua_artikel_per_tag($tag['slug_tag']); ?></span>
                </a>
                <?php $notag++; } ?>

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
                            <span class="num">&nbsp;<?php //echo hitung_semua_artikel_per_tag($tag['slug_tag']); ?></span>
                        </a>
                    <?php } ?>

                </div>


            </div>

        </div>
        <?php 

foreach ($artikel_related_per_kategori as $related) {
    echo "<li><a itemprop='relatedLink' title='$related[judul]' href='".artikel_url($related['id'],$related['slug'])."' >$related[judul]</a></li>";
}

 ?>

    </div>
</section>
<!-- / -->
