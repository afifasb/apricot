<!-- REVOLUTION SLIDER -->
<div class="slider fullwidthbanner-container roundedcorners">
    
    <div class="fullwidthbanner" data-height="600" data-shadow="0" data-navigationStyle="preview1">
        <ul class="hide">

		<?php
			$banner_hitung=0;
			foreach ($banner_depan as $key => $value) {
		?>
            <!-- SLIDE  -->
            <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-saveperformance="off" data-title="Slide title 1" data-thumb="<?php echo $value['gambar'];?>">

                <img src="images/1x1.png" data-lazyload="<?php echo $value['gambar'];?>" alt="" data-bgfit="cover" data-bgposition="center bottom" data-bgrepeat="no-repeat" />

                <div class="overlay dark-1"><!-- dark overlay [1 to 9 opacity] --></div>

                <div class="tp-caption customin ltl tp-resizeme text_white"
                    data-x="center"
                    data-y="155"
                    data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                    data-speed="800"
                    data-start="1000"
                    data-easing="easeOutQuad"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.1"
                    data-endspeed="1000"
                    data-endeasing="Power4.easeIn" style="z-index: 10;">
                    <span class="weight-300"><?php echo $value['header'];?></span>
                </div>

                <div class="tp-caption customin ltl tp-resizeme large_bold_white"
                    data-x="center"
                    data-y="205"
                    data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                    data-speed="800"
                    data-start="1200"
                    data-easing="easeOutQuad"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.1"
                    data-endspeed="1000"
                    data-endeasing="Power4.easeIn" style="z-index: 10;">
                    <?php echo $value['caption'];?>
                </div>

            </li>
            <?php } ?>

        

        </ul>

        <div class="tp-bannertimer"><!-- progress bar --></div>
    </div>
</div>
<!-- /REVOLUTION SLIDER -->	

<!-- News -->
<section>
	<div class="container">

		<header class="text-center margin-bottom-60 clearfix">
			<h2 class="weight-300 nomargin-bottom fw-bolder">Berita Terkini</h2>
		</header>

		<div class="owl-carousel owl-padding-10 buttons-autohide controlls-over" data-plugin-options='{"singleItem": false, "items":"3", "autoPlay": 4000, "navigation": true, "pagination": false}'>
			<?php
				foreach ($artikel_populer as $artikel) {
			?>
			<div class="img-hover">
				<a href="<?php echo artikel_url($artikel['id'],$artikel['slug']); ?>">
					<img class="img-responsive" src="<?php echo img_artikel_url($artikel['foto']); ?>">
				</a>

				<h4 class="text-left margin-top-20"><a href="<?php echo artikel_url($artikel['id'],$artikel['slug']); ?>"><?php echo $artikel['judul']; ?></a></h4>
				<p class="text-left"><?php echo strip_tags(word_limiter(reversequote($artikel['isi'],'all'),30)); ?></p>
				<ul class="text-left size-12 list-inline list-separator">
					<li>
						<i class="fa fa-calendar"></i> 
						<?php echo format_tanggal($artikel['tanggal']); ?>
					</li>
				</ul>
			</div>
			<?php } ?>
			
		</div>

		
		<!-- <div class="divider divider-circle divider-color divider-center">
			<i class="fa fa-image"></i>
		</div> -->
		<!-- /Thumbnails -->
		<!-- <div class="row">
			<div class="col-md-6">
				<h4>Galeri Foto</h4>
			</div>

			<div class="col-md-6">
				<h4>Galeri Video</h4>
			</div>
		</div>

		<div class="row">

			<div class="col-md-12">
				<div class="thumbnail">
					<figure id="zoom-primary" class="zoom" data-mode="mouseover">
						<a class="lightbox bottom-right" href="<?php echo assets_url('images/demo/mockups/1200x800/9-min.jpg'); ?>" data-plugin-options='{"type":"image"}'>
							<i class="glyphicon glyphicon-search"></i>
						</a>
						<img class="img-responsive" src="<?php echo assets_url('images/demo/mockups/1200x800/9-min.jpg'); ?>" width="1200" height="1500" alt="" />
					</figure>
				</div>
				<div data-for="zoom-primary" class="zoom-more owl-carousel owl-padding-3 featured" data-plugin-options='{"singleItem": false, "autoPlay": false, "navigation": true, "pagination": false}'>
					<a class="thumbnail active" href="<?php echo assets_url('images/demo/mockups/1200x800/9-min.jpg'); ?>">
						<img src="<?php echo assets_url('images/demo/mockups/150x100/9-min.jpg'); ?>" height="100" alt="" />
					</a>
					<?php //foreach ($semua_galeri as $galeri) { ?>
					<a class="thumbnail" href="<?php echo assets_url('images/demo/mockups/1200x800/9-min.jpg'); ?>">
						<img src="<?php echo assets_url('images/demo/mockups/150x100/9-min.jpg'); ?>" height="100" alt="" />
					</a>
					<?php //} ?>
					<a class="thumbnail" href="<?php echo assets_url('images/demo/mockups/1200x800/10-min.jpg'); ?>">
						<img src="<?php echo assets_url('images/demo/mockups/150x100/10-min.jpg'); ?>" height="100" alt="" />
					</a>
					<a class="thumbnail" href="<?php echo assets_url('images/demo/mockups/1200x800/11-min.jpg'); ?>">
						<img src="<?php echo assets_url('images/demo/mockups/150x100/11-min.jpg'); ?>" height="100" alt="" />
					</a>
					<a class="thumbnail" href="<?php echo assets_url('images/demo/mockups/1200x800/12-min.jpg'); ?>">
						<img src="<?php echo assets_url('images/demo/mockups/150x100/12-min.jpg'); ?>" height="100" alt="" />
					</a>
					<a class="thumbnail" href="<?php echo assets_url('images/demo/mockups/1200x800/13-min.jpg'); ?>">
						<img src="<?php echo assets_url('images/demo/mockups/150x100/13-min.jpg'); ?>" height="100" alt="" />
					</a>
					<a class="thumbnail" href="<?php echo assets_url('images/demo/mockups/1200x800/14-min.jpg'); ?>">
						<img src="<?php echo assets_url('images/demo/mockups/150x100/14-min.jpg'); ?>" height="100" alt="" />
					</a>
					<a class="thumbnail" href="<?php echo assets_url('images/demo/mockups/1200x800/15-min.jpg'); ?>">
						<img src="<?php echo assets_url('images/demo/mockups/150x100/15-min.jpg'); ?>" height="100" alt="" />
					</a>
				</div>
			</div>

			<div class="col-md-6">
				<div class="embed-responsive embed-responsive-16by9">
					
				</div>
			</div>
		</div> -->

	</div>
</section>
<!-- /News -->

<!-- Upcoming Events -->
<section id="events">
	<div class="container">

		<h3>AGENDA KAMI</h3>

		<div class="row">

			<div class="col-sm-12" style=" height:450px; overflow-y:scroll;">
				<!-- <h4><i class="glyphicon glyphicon-option-vertical"></i> Ordered By Date</h4> -->
                <?php
				foreach ($agenda_kami as $agenda) {
			    ?>
				<div class="event-item">
					<div class="event-date-wrapper">
                        <?php $time = strtotime($agenda['tanggal']); 
                        $mydate = date('Y-m-d',$time); 
                        $month = date("M",strtotime($mydate));
                        $day = date("d",strtotime($mydate));?>
						<span class="event-date-day"><?php echo $day; ?></span>
						<span class="event-date-month"><?php echo $month; ?></span>
					</div>
					<div class="event-content-wrapper">
						<div class="event-content-inner-wrapper">
							<h3 class="event-title"><a href="#"><?php echo $agenda['judul']; ?></a></h3>
							<div class="event-location"><?php echo strip_tags(word_limiter(reversequote($agenda['isi'],'all'),50)); ?></div>
						</div>
						<!-- <div class="event-status-wrapper">
							<a href="#">Detail</a>
						</div> -->
					</div>
				</div>

				<!-- <div class="event-item">
					<div class="event-date-wrapper">
						<span class="event-date-day">03</span>
						<span class="event-date-month">April</span>
					</div>
					<div class="event-content-wrapper">
						<div class="event-content-inner-wrapper">
							<h3 class="event-title"><a href="#">Jakarta</a></h3>
							<div class="event-location">Colonial Life Arena w/ Aloe Blacc </div>
						</div>
						<div class="event-status-wrapper">
							<a href="#">Detail</a>
						</div>
					</div>
				</div> -->

                <?php } ?>
			</div>

			<!-- <div class="col-sm-6">

				<h4><i class="glyphicon glyphicon-option-vertical"></i> Ordered By Title</h4>

				<div class="event-item">
					<div class="event-date-wrapper">
						<span class="event-date-day">08</span>
						<span class="event-date-month">April</span>
					</div>
					<div class="event-content-wrapper">
						<div class="event-content-inner-wrapper">
							<h3 class="event-title"><a href="#">Jakarta</a></h3>
							<div class="event-location">Colonial Life Arena w/ Aloe Blacc </div>
						</div>
						<div class="event-status-wrapper">
							<a href="#">Detail</a>
						</div>
					</div>
				</div>

				<div class="event-item">
					<div class="event-date-wrapper">
						<span class="event-date-day">09</span>
						<span class="event-date-month">April</span>
					</div>
					<div class="event-content-wrapper">
						<div class="event-content-inner-wrapper">
							<h3 class="event-title"><a href="#">Jakarta</a></h3>
							<div class="event-location">Colonial Life Arena w/ Aloe Blacc </div>
						</div>
						<div class="event-status-wrapper">
							<a href="#">Detail</a>
						</div>
					</div>
				</div>

				<div class="event-item">
					<div class="event-date-wrapper">
						<span class="event-date-day">10</span>
						<span class="event-date-month">April</span>
					</div>
					<div class="event-content-wrapper">
						<div class="event-content-inner-wrapper">
							<h3 class="event-title"><a href="#">Jakarta</a></h3>
							<div class="event-location">Colonial Life Arena w/ Aloe Blacc </div>
						</div>
						<div class="event-status-wrapper">
							<a href="#">Detail</a>
						</div>
					</div>
				</div>

			</div> -->

		</div>


	</div>
</section>
<!-- /Upcoming Events -->


<!-- FAQ -->
<div class="faq_area section_padding_130" id="faq">
    <div class="container">
		<h3 class="center">Frequently Asked Question (FAQ)</h3>
        <div class="row justify-content-center">
            <!-- FAQ Area-->
            <div class="col-12 col-sm-10 col-lg-8">
                <div class="accordion faq-accordian" id="faqAccordion">
                    <div class="card border-0 wow fadeInUp" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Apa itu Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya?<span class="lni-chevron-up"></span></h5>
                        </div>
						<div class="collapse" id="collapseOne" aria-labelledby="headingOne" data-parent="#faqAccordion">
                            <div class="card-body">
								<p>Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya adalah salah satu Unit Pelaksana Teknis (UPT) yang berada di lingkungan BPSDM Kementerian PUPR. </p>
                                <p>Balai ini  memiliki tugas untuk menyelenggarakan pengembangan kompetensi bagi pegawai bidang PUPR dalam kegiatan penyelenggaraan pelatihan
								teknis bidang PUPR, fasilitasi pelaksanaan asesmen serta pelaksanaan ujian sertifikasi.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card border-0 wow fadeInUp" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
                        <div class="card-header" id="headingTwo">
                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">Bagaimana mekanisme untuk mendaftar pelatihan?<span class="lni-chevron-up"></span></h5>
                        </div>
						<div class="collapse" id="collapseTwo" aria-labelledby="headingTwo" data-parent="#faqAccordion">
                            <div class="card-body">
								<p>Anda dapat melihat mekanisme pendaftaran pelatihan melalui <a href="<?php echo baseURL('page/23-pendaftaran-pelatihan-pengembangan-kompetensi'); ?>">LINK PENDAFTARAN PELATIHAN</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                        <div class="card-header" id="headingThree">
                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">Siapa yang harus dihubungi apabila ingin menyampaikan kritik dan saran?<span class="lni-chevron-up"></span></h5>
                        </div>
                        <div class="collapse" id="collapseThree" aria-labelledby="headingThree" data-parent="#faqAccordion">
                            <div class="card-body">
								<p>Anda dapat menghubungi melalui WhatsApp Center di <a href="https://api.whatsapp.com/send/?phone=6281252800027&text&type=phone_number&app_absent=0">WA PENGADUAN</a> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!-- /FAQ -->

