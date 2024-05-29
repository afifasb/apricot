<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Media_sosial
{

	protected $CI;

	public function __construct(){

		$this->CI=& get_instance();

	}

	function get_medsos(){
		$data=$this->CI->db->query("SELECT * FROM media_sosial WHERE status_aktif = 1");

		return $data->result_array();
	}
}