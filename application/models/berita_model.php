<?php
 class Berita_model extends CI_Model {
 public function __construct() {
 $this->load->database();
 }
 
 // Menampilkan data berita
 public function daftar_berita($read = FALSE) {
 if ($read === FALSE) {
 $query = $this->db->query('SELECT*FROM berita WHERE status_berita ="Publish" ORDER BY id_berita DESC');
 return $query->result_array();
 }
 $query = $this->db->get_where('berita', array('slug' => $read));
 return $query->row_array();
 }
 public function list_berita()
{
 {
        $query = $this->db->query('select * from berita order by id desc limit 20');
        //lihat apakah ada data dalam tabel
        $num = $query->num_rows();
        if($num>0){
            //Mengirimkan data array hasil query
            return $query->result();
            //Function result() hampir sama dengan function mysql_fetch_array()
        }
        else{
            return 0;
            //Kirimkan 0 jika tidak ada datanya
        }
    }
}
 }