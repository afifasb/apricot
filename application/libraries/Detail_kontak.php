<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Detail_kontak
{

	protected $CI;

	public function __construct(){

		$this->CI=& get_instance();

	}

	function get_kontak(){
		$data=$this->CI->db->query("SELECT * FROM kontak_balai");

		return $data->result_array();
	}
}