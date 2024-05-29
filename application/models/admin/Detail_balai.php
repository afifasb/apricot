<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Detail_balai extends CI_Model {

		function __construct() {
            parent::__construct();
        }

		function get_info_balai() {
			$cari = $this->db->query("SELECT * FROM kontak_balai");
			return $cari->result();
		}

		function get_detail_balai($id) {
			$this->db->where('id', $id);
			$query = $this->db->get('kontak_balai');
			return $query->result();
		}

		function edit_balai($id, $nama, $alamat, $telp, $email) {
			$data = 
            [
                'nama' => $nama,
                'alamat' => $alamat,
                'telp' => $telp,
                'email' => $email,
            ];

			$result = $this->db->update('kontak_balai', $data, array('id' => $id));
		}		
	}
?>