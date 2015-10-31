<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {

	/**
	 * Muhamad Reggi-Bogorstore.web.id
	 */
	 
	function __construct()
	{
		parent::__construct();
		$this->load->model('admin_model');
		session_start();
	}
	
	public function index() {
		$data=array('title'=>'Login Administrator',
					'isi'  =>'admin/login_view'
						);
		$this->load->view('admin/login_view',$data);	
	}
	public function cek_login()
	{
	$username=$this->input->post('username');
	$password=$this->input->post('password');
	if($username && $password &&$this->admin_model->login($username,$password)){
	redirect('admin/berita','refresh');
	}else{
	echo "username atau password salah";
	redirect('admin','refresh');
	}
	}
	public function logout(){
	session_destroy();
	redirect('admin', 'refresh');
	}
}