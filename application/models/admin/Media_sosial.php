<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Media_sosial extends CI_Model {

		function __construct() {
            parent::__construct();
        }

		function get_medsos() {
			$cari = $this->db->query("SELECT * FROM media_sosial");
			return $cari->result();
		}

		function get_detail_medsos($id) {
			$this->db->where('id', $id);
			$query = $this->db->get('media_sosial');
			return $query->result();
		}

		function edit_medsos($id, $nama, $url, $status) {
			$data = 
            [
                'nama' => $nama,
                'url' => $url,
                'status_aktif' => $status,
                'latest_update' => date('Y-m-d H:i:s'),
            ];

			$result = $this->db->update('media_sosial', $data, array('id' => $id));
		}		
	}
?>