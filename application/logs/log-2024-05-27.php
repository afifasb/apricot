<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-05-27 04:01:56 --> Severity: Warning --> mysqli::real_connect(): (HY000/1045): Access denied for user 'root'@'localhost' (using password: NO) C:\xampp\htdocs\apricot\system\database\drivers\mysqli\mysqli_driver.php 201
<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-05-27 04:01:56 --> Severity: Warning --> mysqli::real_connect(): (HY000/1045): Access denied for user 'root'@'localhost' (using password: NO) C:\xampp\htdocs\apricot\system\database\drivers\mysqli\mysqli_driver.php 201
ERROR - 2024-05-27 04:01:56 --> Unable to connect to the database
ERROR - 2024-05-27 04:01:56 --> Unable to connect to the database
ERROR - 2024-05-27 04:02:18 --> Severity: Warning --> mysqli::real_connect(): (HY000/2002): No connection could be made because the target machine actively refused it.
 C:\xampp\htdocs\apricot\system\database\drivers\mysqli\mysqli_driver.php 201
ERROR - 2024-05-27 04:02:18 --> Unable to connect to the database
ERROR - 2024-05-27 04:02:24 --> Severity: Warning --> mysqli::real_connect(): (HY000/2002): No connection could be made because the target machine actively refused it.
 C:\xampp\htdocs\apricot\system\database\drivers\mysqli\mysqli_driver.php 201
ERROR - 2024-05-27 04:02:24 --> Unable to connect to the database
ERROR - 2024-05-27 04:23:39 --> Query error: Table 'dbbalai_wil6.user' doesn't exist in engine - Invalid query: SELECT * from user where id_user='1'and name_user='kamal' and password_user='$2a$12$vzJDnmw3ZKozs7tKAfdpTOaHXap.ezZjXS6fxG8KKtVv/PmzkYSwi' and status_user='Y' and terhapus='N'
ERROR - 2024-05-27 04:24:01 --> Query error: Table 'dbbalai_wil6.artikel' doesn't exist in engine - Invalid query: SELECT artikel.artikel_id AS id,
			 artikel.artikel_judul AS judul, 
			 artikel.artikel_isi AS isi,
			 artikel.artikel_tags as tags,
			 artikel.artikel_tgl_posting AS tanggal,
			 artikel.artikel_dibaca AS dibaca,
			 artikel.artikel_seo_url AS slug,
			 kategori.id_kategori,
			 kategori.nama_kategori,
			 user.nama_lengkap AS nama_admin,
			 user.id_user AS id_admin,
			 foto_artikel.nama_foto AS foto
			 FROM artikel,kategori,user ,foto_artikel
			 WHERE artikel.artikel_status='publish' AND kategori.aktif='Y' AND kategori.terhapus='N' AND user.status_user='Y' AND user.terhapus='N' AND artikel.artikel_id_user=user.id_user AND artikel.artikel_kategori=kategori.id_kategori AND   foto_artikel.id_foto=(SELECT CASE  foto_artikel.featured WHEN 'Y' THEN id_foto WHEN 'N' THEN id_foto END AS 'id_foto'  FROM foto_artikel WHERE foto_artikel.id_artikel=artikel.artikel_id ORDER BY featured ASC LIMIT 1)  ORDER BY artikel.artikel_dibaca DESC LIMIT 4	
			 
ERROR - 2024-05-27 04:29:15 --> Query error: Table 'dbbalai_wil6.artikel' doesn't exist in engine - Invalid query: SELECT artikel.artikel_id AS id,
			 artikel.artikel_judul AS judul, 
			 artikel.artikel_isi AS isi,
			 artikel.artikel_tags as tags,
			 artikel.artikel_tgl_posting AS tanggal,
			 artikel.artikel_dibaca AS dibaca,
			 artikel.artikel_seo_url AS slug,
			 kategori.id_kategori,
			 kategori.nama_kategori,
			 user.nama_lengkap AS nama_admin,
			 user.id_user AS id_admin,
			 foto_artikel.nama_foto AS foto
			 FROM artikel,kategori,user ,foto_artikel
			 WHERE artikel.artikel_status='publish' AND kategori.aktif='Y' AND kategori.terhapus='N' AND user.status_user='Y' AND user.terhapus='N' AND artikel.artikel_id_user=user.id_user AND artikel.artikel_kategori=kategori.id_kategori AND   foto_artikel.id_foto=(SELECT CASE  foto_artikel.featured WHEN 'Y' THEN id_foto WHEN 'N' THEN id_foto END AS 'id_foto'  FROM foto_artikel WHERE foto_artikel.id_artikel=artikel.artikel_id ORDER BY featured ASC LIMIT 1)  ORDER BY artikel.artikel_dibaca DESC LIMIT 4	
			 
ERROR - 2024-05-27 04:29:18 --> Query error: Table 'dbbalai_wil6.artikel' doesn't exist in engine - Invalid query: SELECT artikel.artikel_id AS id,
			 artikel.artikel_judul AS judul, 
			 artikel.artikel_isi AS isi,
			 artikel.artikel_tags as tags,
			 artikel.artikel_tgl_posting AS tanggal,
			 artikel.artikel_dibaca AS dibaca,
			 artikel.artikel_seo_url AS slug,
			 kategori.id_kategori,
			 kategori.nama_kategori,
			 user.nama_lengkap AS nama_admin,
			 user.id_user AS id_admin,
			 foto_artikel.nama_foto AS foto
			 FROM artikel,kategori,user ,foto_artikel
			 WHERE artikel.artikel_status='publish' AND kategori.aktif='Y' AND kategori.terhapus='N' AND user.status_user='Y' AND user.terhapus='N' AND artikel.artikel_id_user=user.id_user AND artikel.artikel_kategori=kategori.id_kategori AND   foto_artikel.id_foto=(SELECT CASE  foto_artikel.featured WHEN 'Y' THEN id_foto WHEN 'N' THEN id_foto END AS 'id_foto'  FROM foto_artikel WHERE foto_artikel.id_artikel=artikel.artikel_id ORDER BY featured ASC LIMIT 1)  ORDER BY artikel.artikel_dibaca DESC LIMIT 4	
			 
ERROR - 2024-05-27 04:30:29 --> Query error: Table 'dbbalai_wil6.artikel' doesn't exist in engine - Invalid query: SELECT artikel.artikel_id AS id,
			 artikel.artikel_judul AS judul, 
			 artikel.artikel_isi AS isi,
			 artikel.artikel_tags as tags,
			 artikel.artikel_tgl_posting AS tanggal,
			 artikel.artikel_dibaca AS dibaca,
			 artikel.artikel_seo_url AS slug,
			 kategori.id_kategori,
			 kategori.nama_kategori,
			 user.nama_lengkap AS nama_admin,
			 user.id_user AS id_admin,
			 foto_artikel.nama_foto AS foto
			 FROM artikel,kategori,user ,foto_artikel
			 WHERE artikel.artikel_status='publish' AND kategori.aktif='Y' AND kategori.terhapus='N' AND user.status_user='Y' AND user.terhapus='N' AND artikel.artikel_id_user=user.id_user AND artikel.artikel_kategori=kategori.id_kategori AND   foto_artikel.id_foto=(SELECT CASE  foto_artikel.featured WHEN 'Y' THEN id_foto WHEN 'N' THEN id_foto END AS 'id_foto'  FROM foto_artikel WHERE foto_artikel.id_artikel=artikel.artikel_id ORDER BY featured ASC LIMIT 1)  ORDER BY artikel.artikel_dibaca DESC LIMIT 4	
			 
ERROR - 2024-05-27 05:21:26 --> Severity: Warning --> mysqli::real_connect(): (HY000/1049): Unknown database 'dbbalai_wil6' C:\xampp\htdocs\apricot\system\database\drivers\mysqli\mysqli_driver.php 201
ERROR - 2024-05-27 05:21:26 --> Unable to connect to the database
ERROR - 2024-05-27 05:21:27 --> Severity: Warning --> mysqli::real_connect(): (HY000/1049): Unknown database 'dbbalai_wil6' C:\xampp\htdocs\apricot\system\database\drivers\mysqli\mysqli_driver.php 201
ERROR - 2024-05-27 05:21:27 --> Unable to connect to the database
ERROR - 2024-05-27 05:25:07 --> 404 Page Not Found: Images/1x1.png
ERROR - 2024-05-27 05:25:07 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:25:07 --> 404 Page Not Found: Images/1x1.png
ERROR - 2024-05-27 05:25:33 --> Query error: Table 'dbbalai_wil6.komentar' doesn't exist - Invalid query: SELECT * FROM komentar WHERE id_artikel = '2' ORDER BY tanggal_komentar DESC LIMIT 0, 10
ERROR - 2024-05-27 05:57:04 --> 404 Page Not Found: Images/1x1.png
ERROR - 2024-05-27 05:57:04 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:57:04 --> 404 Page Not Found: Images/1x1.png
ERROR - 2024-05-27 05:57:21 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:57:24 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:57:26 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:57:29 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:57:55 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:58:02 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:58:04 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:58:16 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:58:19 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:58:26 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 05:58:26 --> 404 Page Not Found: Images/1x1.png
ERROR - 2024-05-27 05:58:26 --> 404 Page Not Found: Images/1x1.png
ERROR - 2024-05-27 05:59:09 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 06:11:55 --> 404 Page Not Found: Images/1x1.png
ERROR - 2024-05-27 06:11:55 --> 404 Page Not Found: An-component/media
ERROR - 2024-05-27 06:11:55 --> 404 Page Not Found: Images/1x1.png
