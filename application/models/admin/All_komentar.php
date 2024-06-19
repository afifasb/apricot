<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class All_komentar extends CI_Model {

    public $hasil;

    function __construct() {
        parent::__construct();
    }

    function get_komentar() {
        $query = $this->db->query("SELECT * FROM komentar ORDER BY id_komentar DESC");
        if ($query->num_rows() > 0) {
            $this->hasil = '';
            foreach ($query->result_array() as $data) {
                $this->hasil .= "<tr>";
                $this->hasil .= "<td>$data[nama_komentar]</td>";
                $this->hasil .= "<td>$data[email]</td>";
                $this->hasil .= "<td>$data[isi_komentar]</td>";
                $this->hasil .= "<td>$data[tanggal_komentar]</td>";
                $this->hasil .= "<td><a href='".base_url()."admin/komentar/$data[id_komentar]'><i class='fa fa-edit' style='cursor:pointer'></i></a> &nbsp; <i style='cursor:pointer;color:red' class='fa fa-times-circle hapus-komentar' id='$data[id_komentar]'></i> </td>";
                $this->hasil .= "</tr>";
            }
        }
    }
}
