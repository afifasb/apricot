# BPSDM Content

BPSDM Content adalah CMS yang dibuat menggunakan Codeigniter 3.
CMS ini dibuat untuk mempermudah developer-developer dalam mengembangkan dan membuat website blogging, berita, company profile, dan fotografi.

MIT License

*******************
## Requirements
*******************
1. PHP >=7.0
2. MariaDb atau MySql >=5.5
3. Apache Server
(saya remonedasikan untuk menggunakan Xampp (windows) atau Lampp (Linux), semua software diatas telah disediakan 1 paket pada versi Xampp terbaru)
 
4. Modul mode_rewrite telah diaktifkan (jika anda menggunakan Xampp atau Lampp, modul ini biasanya telah aktif secara default)
5. modul zip pada PHP telah diaktifkan (Modul ini diperlukan nanti untuk proses penginstalan tema. Jika kamu menggunakan Xampp atau Lampp, modul ini biasanya telah aktif secara default, tapi biasa ada beberapa penyedia hosting yang mendisablenya secara default, untuk mengaktifkannya bisa kamu diaktifkan lewat cPanel.
6. Saat hosting, atur permission 644 untuk File, dan 755 untuk Folder. Biasanya sih penyedia hosting sudah mengaturnya secara default. Tapi tidak salahnya jika kamu pastikan lagi


*******************
## Instalasi
*******************
1. Install XAMPP 
2. Install git 
3. BUka Command Prompt 
4. Arahkan direktori ke lokasi htdocs dengan perintah "cd xampp/htdocs" 
5. setelah itu ketikan "git clone https://susenopersonal@bitbucket.org/susenopersonal/bpsdmcontent.git namaunker" 
6. buka direktori dengan ketikan cd namaunker 
7. import sql db_cms ke database menggunakan phpmyadmin
8. buka http://localhost/namaunker 
9. jika terjadi error buka file init.php dan ubah line 19 sub_dir dari bpsdmcontent menjadi namaunker
10. setelah itu ubah setingan konfigurasi database di line 34 masih di file init.php 
11. refresh halaman anda kembali



*******************
## Contact
*******************
Email: suseno.personal@bikininapa.com

Gmail: suseno.personal@gmail.com

Phone: +62-857-7261-3643

Official website: <http://www.bikininapa.com>

