<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Pertanyaan extends CI_Model {
    public $id;
    public $hasil;

    function __construct() {
        parent::__construct();
    }

    function get_pertanyaan($id) {
        $this->id = $id;

        if ($id > 0) {
            $query = $this->db->query("SELECT * FROM pertanyaan WHERE id_pertanyaan = '$id'");
            if ($query->num_rows() > 0) {
                $row = $query->row();
                $this->hasil = array(
                    "id" => $row->id_pertanyaan,
                    "nama_penanya" => $row->nama_penanya,
                    "isi_pertanyaan" => $row->isi_pertanyaan,
                    "jawab_pertanyaan" => $row->jawab_pertanyaan,
                    "tanggal_pertanyaan" => $row->tanggal_pertanyaan,
                );
                return true;
            } else {
                return false;
            }
        } else {
            $this->hasil = array(
                "id" => 0,
                "nama_penanya" => "",
                "isi_pertanyaan" => "",
                "jawab_pertanyaan" => "",
                "tanggal_pertanyaan" => "",
            );
            return true;
        }
    }
}
?>
