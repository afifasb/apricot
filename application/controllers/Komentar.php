<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Komentar extends AN_Apricot {

    public function __construct() {
        parent::__construct();
    }

    public function add() {
        $this->form_validation->set_rules('id_artikel', 'ID Artikel', 'required');
        $this->form_validation->set_rules('nama_komentar', 'Nama', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('isi_komentar', 'Komentar', 'required');

        if ($this->form_validation->run() == FALSE) {
            // Load detail artikel lagi dengan komentar dan error validation
            $id_artikel = $this->input->post('id_artikel');
            $data['article'] = $this->Artikel->get_data($id_artikel, $this->session->userdata('user_id'));
            $data['comments'] = $this->Komentar_model->get_comments_by_article($id_artikel);
            $this->load->view($this->tema."/header", $data);
            $this->load->view($this->tema."/detail_artikel", $data);
            $this->load->view($this->tema."/footer", $data);
        } else {
            $data = array(
                'id_artikel' => $this->input->post('id_artikel'),
                'nama_komentar' => $this->input->post('nama_komentar'),
                'email' => $this->input->post('email'),
                'isi_komentar' => $this->input->post('isi_komentar'),
                'tanggal_komentar' => date('Y-m-d H:i:s')
            );

            if ($this->Komentar_model->add_comment($data)) {
                redirect('artikel/detail/'.$this->input->post('id_artikel'));
            } else {
                show_error('Gagal menambahkan komentar. Silakan coba lagi.');
            }
        }
    }
}
?>
