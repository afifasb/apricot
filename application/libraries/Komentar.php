<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Komentar {

    protected $CI;

    public function __construct(){
        $this->CI = & get_instance();
    }

    public function tambah_komentar($id_artikel, $nama, $email, $isi_komentar){
        $data = array(
            'id_artikel' => intval($id_artikel),
            'nama_komentar' => $nama,
            'email' => $email,
            'isi_komentar' => $isi_komentar,
            'tanggal_komentar' => date('Y-m-d H:i:s')
        );

        return $this->CI->db->insert('komentar', $data);
    }

    public function get_komentar_by_artikel($id_artikel, $limit = 10, $offset = 0){
        $id_artikel = intval($id_artikel);
        $limit = intval($limit);
        $offset = intval($offset);

        $query = $this->CI->db->query("SELECT * FROM komentar WHERE id_artikel = '$id_artikel' ORDER BY tanggal_komentar DESC LIMIT $offset, $limit");
        return $query->result_array();
    }

    public function get_komentar($id_komentar){
        $id_komentar = intval($id_komentar);

        $query = $this->CI->db->query("SELECT * FROM komentar WHERE id_komentar = '$id_komentar'");
        return $query->row_array();
    }

    public function hitung_komentar_by_artikel($id_artikel){
        $id_artikel = intval($id_artikel);

        $query = $this->CI->db->query("SELECT COUNT(*) as jumlah FROM komentar WHERE id_artikel = '$id_artikel'");
        return $query->row()->jumlah;
    }

    public function hapus_komentar($id_komentar){
        $id_komentar = intval($id_komentar);

        return $this->CI->db->delete('komentar', array('id_komentar' => $id_komentar));
    }
}
?>
