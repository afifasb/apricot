<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<section class="page-header parallax parallax-3" style="background-image:url('<?php echo assets_url('images/demo/1200x800/17-min.jpg'); ?>')">
	<div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>

	<div class="container">

		<h1>Download</h1>
		<span class="font-lato size-18 weight-300"><?php echo $artikel['judul']; ?></span>

		<!-- breadcrumbs -->
		<ol class="breadcrumb">
			<li><a href="#">Download</a></li>
			<li class="active"><?php echo $artikel['judul']; ?></li>
		</ol><!-- /breadcrumbs -->

	</div>
</section>

		<div class='col-md-8 left-side'>

			<div class="artikel">
				<div class="konten">
					<ul>
            <?php
              foreach($downloads as $download){
                echo "<li><a href=".download_url($download['id'],$download['slug']).">$download[file]</a></li>";
              }
            ?>
          </ul>					
				</div>
			</div>

		</div>