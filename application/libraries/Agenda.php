<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Agenda
{

	protected $CI;

	public function __construct(){

		$this->CI=& get_instance();

	}

    public function agenda_kami(){

		$cache_agenda_kami=$this->CI->cache->file->get('agenda_kami');
		if($cache_agenda_kami  === FALSE){
			$max=intval($max);
			$data=$this->CI->db->query("SELECT agenda.id AS id, 
            agenda.judul AS judul, agenda.deskripsi AS isi, 
            agenda.slug as slug, agenda.tanggal_mulai AS tanggal, 
            agenda.tanggal_selesai AS tglsls, agenda.foto AS foto 
            FROM agenda ORDER BY agenda.tanggal_mulai DESC LIMIT 15
			");
	
			$data=$data->result_array();
			$this->CI->cache->file->save('agenda_kami',$data,6000000);
			return $data;
		} else {
			return $cache_agenda_kami;
		}	


	}


}