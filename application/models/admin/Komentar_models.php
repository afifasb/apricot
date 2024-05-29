<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Komentar extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    // Mendapatkan komentar berdasarkan ID artikel
    public function get_comments_by_article($id_artikel) {
        $query = $this->db->query("SELECT * FROM komentar WHERE id_artikel = ? ORDER BY tanggal_komentar DESC", array($id_artikel));
        
        if ($query->num_rows() > 0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    // Menambahkan komentar baru
    public function add_comment($data) {
        $this->db->set('id_artikel', $data['id_artikel']);
        $this->db->set('nama_komentar', $data['nama_komentar']);
        $this->db->set('email', $data['email']);
        $this->db->set('isi_komentar', $data['isi_komentar']);
        $this->db->set('tanggal_komentar', date('Y-m-d H:i:s'));
        
        $this->db->insert('komentar');
        return ($this->db->affected_rows() != 1) ? false : true;
    }
}
?>
