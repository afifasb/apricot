<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class All_pertanyaan extends CI_Model{

    public $hasil;

    function __construct(){
        parent::__construct();
    }

    function get_pertanyaan(){
        $query = $this->db->query("SELECT * FROM pertanyaan ORDER BY id_pertanyaan DESC");
        if($query->num_rows() > 0){
            foreach ($query->result_array() as $data){
                $this->hasil .= "<tr>";
                $this->hasil .= "<td>$data[nama_penanya]</td>";
                $this->hasil .= "<td>$data[isi_pertanyaan]</td>";
                $this->hasil .= "<td>$data[jawab_pertanyaan]</td>";
                $this->hasil .= "<td>$data[tanggal_pertanyaan]</td>";
                $this->hasil .= "<td><a href='".base_url()."admin/pertanyaan/$data[id_pertanyaan]'><i class='fa fa-edit' style='cursor:pointer'></i></a> &nbsp; <i style='cursor:pointer;color:red' class='fa fa-times-circle hapus-pertanyaan' id='$data[id_pertanyaan]'></i> </td>";
                $this->hasil .= "</tr>";
            }
        }
    }
}
