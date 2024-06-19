<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pertanyaan {

    protected $CI;

    public function __construct() {
        $this->CI =& get_instance();
    }

    public function tambah_pertanyaan($nama_penanya, $isi_pertanyaan) {
        $data = array(
            'nama_penanya' => $nama_penanya,
            'isi_pertanyaan' => $isi_pertanyaan,
            'jawab_pertanyaan' => '',
            'tanggal_pertanyaan' => date('Y-m-d H:i:s')
        );

        return $this->CI->db->insert('pertanyaan', $data);
    }

    public function get_all_pertanyaan() {
        $query = $this->CI->db->get('pertanyaan');
        return $query->result();
    }

    public function get_unanswered_pertanyaan() {
        $this->CI->db->where('jawab_pertanyaan', '');
        $query = $this->CI->db->get('pertanyaan');
        return $query->result();
    }

    public function get_pertanyaan_by_id($id_pertanyaan) {
        $query = $this->CI->db->get_where('pertanyaan', array('id_pertanyaan' => $id_pertanyaan));
        return $query->row();
    }

    public function delete_pertanyaan($id_pertanyaan) {
        return $this->CI->db->delete('pertanyaan', array('id_pertanyaan' => $id_pertanyaan));
    }

    public function update_jawaban($id_pertanyaan, $jawab_pertanyaan) {
        $this->CI->db->set('jawab_pertanyaan', $jawab_pertanyaan);
        $this->CI->db->where('id_pertanyaan', $id_pertanyaan);
        return $this->CI->db->update('pertanyaan');
    }
}
