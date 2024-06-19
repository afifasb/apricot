<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends AN_Apricot{

	public function __construct(){
		parent::__construct();
		
	}

	function index(){


		//ambil banner depan
		$this->load->library("banner_depan");

		$data=$this->public_data;
		$data["informasi"]["title"]=$this->title->home();
		$data["informasi"]["current_page"]="home";
		$data["informasi"]["uniqueid"]="home-page";

		$data["informasi"]["og-title"]=$data["informasi"]["title"];
		


		$data["banner_depan"]=$this->banner_depan->banner;
		$data["artikel_headline"]=$this->artikel->artikel_headline($this->system_info["max_headline_artikel"]);
        $data["agenda_kami"]=$this->artikel->agenda_kami();

	
		$this->load->view($this->tema."/header",$data);
		$this->load->view($this->tema."/home",$data);
		$this->load->view($this->tema."/footer",$data);

	}

	public function tambah_pertanyaan() {
        $id_artikel = $this->input->post('id_artikel');
        $nama = $this->input->post('nama');
        $isi_pertanyaan = $this->input->post('isi_pertanyaan');

        $this->pertanyaan->tambah_pertanyaan($nama, $isi_pertanyaan);

        // redirect('semua_artikel/detail/$1' . $id_artikel);
		redirect(baseURL());

    }
}