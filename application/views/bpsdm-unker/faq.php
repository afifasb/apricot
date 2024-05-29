<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<section class="page-header">
	<div class="container">

		<h1>
			FAQ 
			<span class="word-rotator" data-delay="2000">
				<span class="items">
					<span>Frequently</span>
					<span>Asked</span>
					<span>Questions</span>
				</span>
			</span><!-- /word rotator -->
		</h1>

		<span class="font-lato size-18 weight-300">Frequently Asked Questions</span>

		<!-- breadcrumbs -->
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">FAQ</li>
		</ol><!-- /breadcrumbs -->

	</div>
</section>

<section>
    <div class="container">
        
        <div class="row">

            <!-- LEFT COLUMNS -->
            <div class="col-md-9">

                <p class="lead">Detail Pertanyaan</p>

                <!-- TOGGLES -->
                <div class="toggle toggle-transparent toggle-bordered-full margin-top-60">
                    <?php $no=1; foreach($faq as $f){ ?>
                        <div class="toggle"><!-- toggle -->
                            <label><?php echo $no; ?>. <?php echo $f['pertanyaan']; ?></label>
                            <div class="toggle-content">
                                <p class="clearfix">
                                    <?php echo $f['jawaban']; ?>
                                </p>

                            </div>
                        </div>
                    <?php $no++; } ?>  

                </div>
                <!-- /TOGGLES -->

            </div>
            <!-- /LEFT COLUMNS -->

            <!-- RIGHT COLUMNS -->
            <div class="col-md-3">

                
            </div>
            <!-- /RIGHT COLUMNS -->

        </div>
        
    </div>
</section>


