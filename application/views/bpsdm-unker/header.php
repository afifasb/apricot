<?php
defined('BASEPATH') OR exit('Eiits! Jangan coba coba Mblo!!!!');
?>
<!DOCTYPE html>
<html lang="id-ID" prefix="og: http://ogp.me/ns#">
<head>
	<title><?php echo $informasi["title"] ?></title>

     <meta name="viewport" content="width=device-width, initial-scale=1" />

     <meta name="description" content="<?php echo $informasi['meta_deskripsi']; ?>" />
     <meta name="keywords" content="<?php echo $informasi['meta_keyword']; ?>" />
     <meta name="author" content="<?php echo $informasi['author']; ?>" />

     <meta property="og:url" content="<?php echo $informasi['og-url'];  ?>" />
     <meta property="og:title" content="<?php echo $informasi['og-title']; ?>" />
     <meta property="og:description" content="<?php echo $informasi["og-description"]; ?>" />
     <meta property="og:site_name" content="<?php echo $informasi['og-site_name']; ?>" />
     <meta property="og:image" content="<?php echo $informasi['og-image']; ?>" />
     <meta property="og:image:type" content="image/jpeg" />
     <meta property="og:type" content="<?php echo $informasi['og-type']; ?>" />
<?php if($informasi["current_page"]=="detail-artikel"){ ?>
     <meta property="article:author" content="<?php echo $informasi['article-author']; ?>" />
     <meta property="article:publisher" content="<?php echo $informasi['article-publisher']; ?>" />
     <meta property="article:published_time" content="<?php echo $informasi['article-published_time']; ?>" />
<?php } ?>


	<link rel='shortcut icon' href='<?php echo $informasi['favicon'] ?>' />	
	<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css' />

	<!-- mobile settings -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

    <!-- WEB FONTS : use %7C instead of | (pipe) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700" rel="stylesheet" type="text/css" />

    <!-- CORE CSS -->
    <link href="<?php echo assets_url('plugins/bootstrap/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css" />

    <!-- REVOLUTION SLIDER -->
    <link href="<?php echo assets_url('plugins/slider.revolution/css/extralayers.css'); ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo assets_url('plugins/slider.revolution/css/settings.css'); ?>" rel="stylesheet" type="text/css" />

    <!-- THEME CSS -->
    <link href="<?php echo assets_url('css/essentials.css'); ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo assets_url('css/layout.css'); ?>" rel="stylesheet" type="text/css" />

    <!-- PAGE LEVEL SCRIPTS -->
	<link href="<?php echo assets_url('css/style.css'); ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo assets_url('css/header-1.css'); ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo assets_url('css/color_scheme/blue.css'); ?>" rel="stylesheet" type="text/css" id="color_scheme" />

  <?php
    if($informasi['current_page'] == 'faq'){
    
      $schema = array();
      $schema['@context'] = "http://schema.org";
      $schema['@graph'] = array();

      foreach($faq as $f){
        $schema['@graph'][]= array(
          '@type' => 'Question',
          'text' => $f['pertanyaan'],
          'dateCreated' => $f['tanggal'],
          'acceptedAnswer' => array(
            '@type' => 'Answer',
            'text' => $f['jawaban'],
            'dateCreated' =>  $f['tanggal']
          ),
        );
      }

    echo '<script type="application/ld+json">';
    echo json_encode($schema,JSON_PRETTY_PRINT);
    echo '</script>';

    } else if($informasi['current_page'] == 'detail-faq'){
      $schema = array();
      $schema['@context'] = "http://schema.org";
      $schema['@graph'] = array();

      
        $schema['@graph'][]= array(
          '@type' => 'Question',
          'text' => $faq['pertanyaan'],
          'dateCreated' => $faq['tanggal'],
          'acceptedAnswer' => array(
            '@type' => 'Answer',
            'text' => $faq['jawaban'],
            'dateCreated' =>  $faq['tanggal']
          ),
        );
    

    echo '<script type="application/ld+json">';
    echo json_encode($schema,JSON_PRETTY_PRINT);
    echo '</script>';
    }
  ?>

	<style type="text/css">
		<?php echo $informasi["custom_css"]; ?>
	</style>


	<!-- <script src="<?php // echo assets_url('js/modernizr-2.6.2.min.js') ?>"></script> -->



</head>
<body class="smoothscroll enable-animation">
<?php

class menu_bpsdm {
	public $CI;
	public $menu;
	function __construct(){
		$this->CI =& get_instance();
	}

	// fungsi untuk mengambil menu
	function ambil_menu($type_menu,$parent=0){
		$kondisi=array(
			"menu_id"=>$type_menu,
			"menu_child_parent" => $parent,
			"aktif" => "Y"
			);
		//query ke database
		$this->CI->db->order_by("posisi","ASC");
		$query= $this->CI->db->get_where("menu_child",$kondisi);

		//cek apakah memiliki hasil
		if($query->num_rows()>0){
			$class=$parent==0?"":"dropdown-menu";
			$classul=$parent==0?"li":"ul";
			$this->menu.="<$classul class='$class'>";
			foreach ($query->result_array() as $menu) {
				//cek apakah menu sekarang mempunyai submenu atau tidak
				$cek=$this->CI->db->get_where('menu_child',array('menu_child_parent'=>$menu['menu_child_id'],'aktif'=>'Y','menu_id'=>$type_menu));
				//jika terdapat sub menu
				if($cek->num_rows()>0){
					$this->menu.= "<li class='dropdown'><a href='$menu[menu_child_url]' target='$menu[menu_child_target]'  class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>$menu[menu_child_nama]</a>";
					//panggil ambil_menu() secara reqursive untuk mengambil sub-menu nya
					$this->ambil_menu($type_menu,$menu['menu_child_id']);
					$this->menu.= "</li>";
				}
				//jika tidak memiliki sub menu
				 else {
					$this->menu.= "<li class='dropdown'><a href='$menu[menu_child_url]' target='$menu[menu_child_target]'>$menu[menu_child_nama]</a>";
					$this->menu.= "</li>";
				}
			}
			$this->menu.="</ul>";
		} else {
			//jika tidak ada hasil.
			return;
		}
	}
}
$menuPertama = new menu_bpsdm;
$menuPertama->ambil_menu(1); //angka 1 adalah ID menu horizontal 
?>
<!-- wrapper -->
<div id="wrapper">
            <img src="<?php echo assets_url('logo/top_header.png'); ?>" width="100%">
			<div id="header" class="sticky shadow-after-3 clearfix">

				<!-- TOP NAV -->
				<header id="topNav">
					<div class="container">
						<!-- Mobile Menu Button -->
						<button class="btn btn-mobile" data-toggle="collapse" data-target=".nav-main-collapse">
							<i class="fa fa-bars"></i>
						</button>
						<!-- Logo -->
						<a class="logo pull-left" href="">
							<img src="<?php echo assets_url('logo/logo.png'); ?>" alt="<?php echo $informasi["nama"]; ?>" />
						</a>
						<div class="navbar-collapse pull-right nav-main-collapse collapse submenu-dark">
							<nav class="nav-main">

								<ul id="topMain" class="nav nav-pills nav-main">
								<?php echo $menuPertama->menu;  ?>
								</ul>

							</nav>
						</div>

					</div>
				</header>
				<!-- /Top Nav -->

			</div>
        <!--
        End Fixed Navigation
        ==================================== -->


<!-- <main class="site-content" role="main"> -->

<?php

//jika bukan halaman Home
// if($informasi["current_page"]!='home'){

//   echo "<div class='section' id='main-konten'>";
//   echo "<div class='container'>";
//   echo "<div class='row'>";
// }

?>