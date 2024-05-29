<!-- </main> -->
<!-- FOOTER -->
	<footer id="footer">
		<div class="container">

			<div class="row">
				
				<div class="col-md-3">
					<!-- Small Description -->
					<p><?=$kontak[0]['nama']?></p>

					<!-- Contact Address -->
					<address>
						<ul class="list-unstyled">
							<li class="footer-sprite address">
								<?php echo ($kontak[0]['alamat'] != null) ? $kontak[0]['alamat'] : '-' ?>
							</li>
							<li class="footer-sprite phone">
								<?php echo ($kontak[0]['telp'] != null) ? $kontak[0]['telp'] : '-' ?>
							</li>
							<li class="footer-sprite email">
								<?php echo ($kontak[0]['email'] != null) ? $kontak[0]['email'] : '-' ?>
							</li>
						</ul>
					</address>
					<!-- /Contact Address -->

				</div>

				<div class="col-md-3">

					<!-- Latest Blog Post -->
					<h4 class="letter-spacing-1">PALING POPULER</h4>
					<ul class="footer-posts list-unstyled">
                        <?php
                            foreach ($artikel_populer as $artikel) {
                        ?>
						<li>
							<a href="<?php echo artikel_url($artikel['id'],$artikel['slug']); ?>"><?php echo $artikel['judul']; ?></a>
							<small><?php echo format_tanggal($artikel['tanggal']); ?></small>
						</li>
                        <?php } ?>
						
					</ul>
					<!-- /Latest Blog Post -->

				</div>

				<div class="col-md-2">

					<!-- Links -->
					<h4 class="letter-spacing-1">KATEGORI BERITA</h4>
					<ul class="footer-links list-unstyled">
                        <?php
                            foreach ($kategori_artikel as $kategori) {
                                echo "<li><a href='".kategori_url($kategori['id'],$kategori['slug'])."'>$kategori[nama]</a></li>";
                            }
                        ?>
					</ul>
					<!-- /Links -->

				</div>

				<div class="col-md-4">
					<!-- Newsletter Form -->
					<h4 class="letter-spacing-1">MEDIA SOSIAL</h4>

					<!-- Social Icons -->
					<div class="margin-top-20">
						<?php foreach ($medsos as $dm) { ?>
							<a href="<?php echo ($dm['url'] != null) ? $dm['url'] : ''?>" class="social-icon social-icon-border <?=$dm['social_icon']?> pull-left" data-toggle="tooltip" data-placement="top" title="<?=$dm['nama']?>">
								<i class="<?=$dm['icon']?>"></i>
								<i class="<?=$dm['icon']?>"></i>
							</a>
						<?php } ?>
					</div>
					<!-- /Social Icons -->
				</div>

				<div class="col-md-4">
					<div class="margin-top-20">
					<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15828.847006616132!2d112.7244535!3d-7.3300989!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7fb018c78dcd9%3A0x5349234a6f7b4d2b!2sBalai%20Pengembangan%20Kompetensi%20PUPR%20Wilayah%20VI%20Surabaya!5e0!3m2!1sid!2sid!4v1716278263351!5m2!1sid!2sid" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
					</div>
				</div>

			</div>

		</div>
	</footer>
	<!-- /FOOTER -->

	<!-- SCROLL TO TOP -->
	<a href="#" id="toTop"></a>


	<!-- PRELOADER -->
	<div id="preloader">
	    <div class="inner">
	        <span class="loader"></span>
	    </div>
	</div><!-- /PRELOADER -->

    <!-- JAVASCRIPT FILES -->
    <script type="text/javascript">var plugin_path = '<?php echo assets_url('plugins/'); ?>';</script>
    <script type="text/javascript" src="<?php echo assets_url('plugins/jquery/jquery-2.1.4.min.js'); ?>"></script>

    <script type="text/javascript" src="<?php echo assets_url('js/scripts.js'); ?>"></script>

    <!-- REVOLUTION SLIDER -->
    <script type="text/javascript" src="<?php echo assets_url('plugins/slider.revolution/js/jquery.themepunch.tools.min.js'); ?>"></script>
    <script type="text/javascript" src="<?php echo assets_url('plugins/slider.revolution/js/jquery.themepunch.revolution.min.js'); ?>"></script>
    <script type="text/javascript" src="<?php echo assets_url('js/view/demo.revolution_slider.js'); ?>"></script>
    <script type="text/javascript">
        <?php echo $informasi['custom_javascript']; ?>
        <?php echo $google_analytics["script"]; ?>
    </script>
</body>
</html>